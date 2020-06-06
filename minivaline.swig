{%- if page.comments %}
{%- set minivaline_uri = config.minivaline.cdn or 'https://cdn.jsdelivr.net/npm/minivaline@2/dist/MiniValine.min.js' %}
{%- set emoticonUrl = config.minivaline.emoticonUrl %}
{%- set tagMeta = config.minivaline.tagMeta %}
{%- set master = config.minivaline.master %}
{%- set friends = config.minivaline.friends %}

<script>
loadComments(document.querySelector('#minivaline-comments'), function(){
	getScript('{{ minivaline_uri }}', function(){
		new MiniValine({
			el: '#minivaline-comments',
			appId: '{{ config.minivaline.appid }}',
			appKey: '{{ config.minivaline.appkey }}',
			mode: '{{ config.minivaline.mode }}',
			placeholder: '{{ config.minivaline.placeholder }}',
			pathname: '/{{ page.path }}',
			{%- if config.minivaline.language == '' %}
			lang: window.navigator.language || window.navigator.userLanguage,
			{% else %}
			lang: '{{ config.minivaline.lang }}',
			{%- endif %}
			adminEmailMd5: '{{ config.minivaline.adminEmailMd5 }}',
			tagMeta: [{%- for i in tagMeta %}"{{ i }}",{%- endfor %}],
			master: [{%- for i in master %}"{{ i }}",{%- endfor %}],
			friends: [{%- for i in friends %}"{{ i }}",{%- endfor %}],
			math: {{ config.minivaline.math }},
			md: {{ config.minivaline.md }},
			enableQQ: {{ config.minivaline.enableQQ }},
			NoRecordIP: {{ config.minivaline.NoRecordIP }},
			visitor: {{ config.minivaline.visitor }},
			maxNest: {{ config.minivaline.maxNest }},
			pageSize: {{ config.minivaline.pageSize }},
			serverURLs: '{{ config.minivaline.serverURLs }}',
			emoticonUrl: [{%- for i in emoticonUrl %}"{{ i }}",{%- endfor %}],
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