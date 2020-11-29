{%- if page.comments %}

{%- if config.minivaline.cdn %}
{%- set minivaline_uri = config.minivaline.cdn %}
{%- elseif config.minivaline.mversion %}
{%- set minivaline_uri = 'https://cdn.jsdelivr.net/npm/minivaline@' + config.minivaline.mversion + '/dist/MiniValine.min.js' %}
{%- else %}
{%- set minivaline_uri = 'https://cdn.jsdelivr.net/npm/minivaline@latest/dist/MiniValine.min.js' %}
{%- endif %}

<script>
loadComments(document.querySelector('#minivaline-comments'), function(){
	getScript('{{ minivaline_uri }}', function(){
		new MiniValine(Object.assign({{ config.minivaline | safedump }}, {
          el: '#minivaline-comments',
          pathname: {{ url_for(page.path) | replace(r/index\.html$/, '') | safedump }},
      }));
	}, window.MiniValine);
});
function getScript(url, callback, condition) {
	if (condition) {
	  callback();
	} else {
	  var script = document.createElement('script');
	  script.onload = script.onreadystatechange = function(_, isAbort) {
		if (isAbort || !script.readyState || /loaded|complete/.test(script.readyState)) {
		  script.onload = script.onreadystatechange = null;
		  script = undefined;
		  if (!isAbort && callback) setTimeout(callback, 0);
		}
	  };
	  script.src = url;
	  document.head.appendChild(script);
	}
}
function loadComments(element, callback) {
    if (!{{ config.minivaline.lazyload }} || !element) {
      callback();
      return;
    }
    let intersectionObserver = new IntersectionObserver((entries, observer) => {
      let entry = entries[0];
      if (entry.isIntersecting) {
        callback();
        observer.disconnect();
      }
    });
    intersectionObserver.observe(element);
    return intersectionObserver;
}
</script>
{%- endif %}