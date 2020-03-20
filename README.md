# Hexo Next MiniValine
[![version](https://img.shields.io/github/release/MiniValine/hexo-next-minivaline.svg?style=flat-square)](https://github.com/MiniValine/hexo-next-minivaline/releases) [![GPL Licence](https://cdn.jsdelivr.net/gh/MHuiG/imgbed/github/gpl.svg)](https://opensource.org/licenses/GPL-3.0/) 

>A MiniValine plugin for Hexo NexT theme.
------------------------------

## Installation

``` bash
npm install hexo-next-minivaline
```

## Configuration
In **Hexo** `_config.yml`:
```yml
minivaline:
  enable: false
  appid:  # Your leancloud application appid
  appkey:  # Your leancloud application appkey
  placeholder: Write a Comment O(∩_∩)O~~ # Comment box placeholder
  maxNest: 3 # Nest size
  pageSize: 6 # Pagination size
  adminEmailMd5: # The MD5 of Admin Email to show Admin Flag.
  math: true # Support MathJax.
  # MiniValine's display language depends on user's browser or system environment
  # If you want everyone visiting your site to see a uniform language, you can set a force language value
  # Available values: en | es-ES | fr | ru | zh-CN | zh-TW
  language:
  lazyload: false
  cdn: #https://cdn.jsdelivr.net/gh/MiniValine/MiniValine/dist/MiniValine.min.js
```

- `cdn` CDN of the required files. Leave it blank if you want to directly load from server side.

## License

[GPL-3.0](https://github.com/MiniValine/hexo-next-minivaline/blob/master/LICENSE)
