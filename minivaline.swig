{%- if page.comments %}
{%- set minivaline_uri = config.minivaline.cdn or '//unpkg.com/minivaline/dist/MiniValine.min.js' %}

<script>
loadComments(document.querySelector('#minivaline-comments'), function(){
  getScript('{{ minivaline_uri }}', function(){
    new MiniValine({
      el: '#minivaline-comments',
      appId: '{{ config.minivaline.appid }}',
      appKey: '{{ config.minivaline.appkey }}',
      placeholder: '{{ config.minivaline.placeholder }}',
      {%- if config.minivaline.language == '' %}
        lang: window.navigator.language || window.navigator.userLanguage,
      {% else %}
        lang: '{{ config.minivaline.language }}',
      {%- endif %}
      adminEmailMd5: '{{ config.minivaline.adminEmailMd5 }}',
      math: {{ config.minivaline.math }} || false,
      maxNest: {{ config.minivaline.maxNest }} || 3,
      pageSize: {{ config.minivaline.pageSize }} || 6,
	  pathname: '/{{ page.path }}'
    });
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
	  script.defer = true;
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