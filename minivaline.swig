{%- if page.comments %}

{%- if config.minivaline.cdn %}
{%- set minivaline_uri = config.minivaline.cdn %}
{%- elseif config.minivaline.mversion %}
{%- set minivaline_uri = 'https://cdn.jsdelivr.net/npm/minivaline@'+'{{ config.minivaline.mversion }}'+'/dist/MiniValine.min.js' %}
{%- else %}
{%- set minivaline_uri = 'https://cdn.jsdelivr.net/npm/minivaline@latest/dist/MiniValine.min.js' %}
{%- endif %}

<script>
loadComments(document.querySelector('#minivaline-comments'), function(){
	getScript('{{ minivaline_uri }}', function(){
		new MiniValine({
			el: '#minivaline-comments',
			pathname: '/{{ page.path }}',
			{%- if config.minivaline.appid %}
			appId: '{{ config.minivaline.appid }}',
			{%- elseif config.minivaline.appId %}
			appId: '{{ config.minivaline.appId }}',
			{%- endif %}
			{%- if config.minivaline.appkey %}
			appKey: '{{ config.minivaline.appkey }}',
			{%- elseif config.minivaline.appKey %}
			appKey: '{{ config.minivaline.appKey }}',
			{%- endif %}
			{%- if config.minivaline.mode %}
			mode: '{{ config.minivaline.mode }}',
			{%- endif %}
			{%- if config.minivaline.placeholder %}
			placeholder: '{{ config.minivaline.placeholder }}',
			{%- endif %}
			{%- if config.minivaline.language %}
			lang: '{{ config.minivaline.lang }}',
			{%- endif %}
			{%- if config.minivaline.md %}
			md: {{ config.minivaline.md }},
			{%- endif %}
			{%- if config.minivaline.math %}
			math: {{ config.minivaline.math }},
			{%- endif %}
			{%- if config.minivaline.friends %}
			friends: [{%- for i in friends %}"{{ i }}",{%- endfor %}],
			{%- endif %}
			{%- if config.minivaline.master %}
			master: [{%- for i in master %}"{{ i }}",{%- endfor %}],
			{%- endif %}
			{%- if config.minivaline.tagMeta %}
			tagMeta: [{%- for i in tagMeta %}"{{ i }}",{%- endfor %}],
			{%- endif %}
			{%- if config.minivaline.adminEmailMd5 %}
			adminEmailMd5: '{{ config.minivaline.adminEmailMd5 }}',
			{%- endif %}
			{%- if config.minivaline.dark %}
			dark: {{ config.minivaline.dark }},
			{%- endif %}
			{%- if config.minivaline.visitor %}
			visitor: {{ config.minivaline.visitor }},
			{%- endif %}
			{%- if config.minivaline.role %}
			role: {{ config.minivaline.role }},
			{%- endif %}
			{%- if config.minivaline.closeCSS %}
			closeCSS: {{ config.minivaline.closeCSS }},
			{%- endif %}
			{%- if config.minivaline.closeFlag %}
			closeFlag: {{ config.minivaline.closeFlag }},
			{%- endif %}
			{%- if config.minivaline.cloudflag %}
			cloudflag: {{ config.minivaline.cloudflag }},
			{%- endif %}
			{%- if config.minivaline.barrager %}
			barrager: {{ config.minivaline.barrager }},
			{%- endif %}
			{%- if config.minivaline.region %}
			region: {{ config.minivaline.region }},
			{%- endif %}
			{%- if config.minivaline.closeUA %}
			closeUA: {{ config.minivaline.closeUA }},
			{%- endif %}
			{%- if config.minivaline.NoRecordIP %}
			NoRecordIP: {{ config.minivaline.NoRecordIP }},
			{%- endif %}
			{%- if config.minivaline.maxNest %}
			maxNest: {{ config.minivaline.maxNest }},
			{%- endif %}
			{%- if config.minivaline.pageSize %}
			pageSize: {{ config.minivaline.pageSize }},
			{%- endif %}
			{%- if config.minivaline.serverURLs %}
			serverURLs: '{{ config.minivaline.serverURLs }}',
			{%- endif %}
			{%- if config.minivaline.emoticonUrl %}
			emoticonUrl: [{%- for i in emoticonUrl %}"{{ i }}",{%- endfor %}],
			{%- endif %}
			{%- if config.minivaline.enableQQ %}
			enableQQ: '{{ config.minivaline.enableQQ }}',
			{%- endif %}
			{%- if config.minivaline.backend %}
			backend: '{{ config.minivaline.backend }}',
			{%- endif %}
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