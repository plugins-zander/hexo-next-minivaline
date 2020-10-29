# Hexo Next MiniValine Version 4.0
[![GPL Licence](https://cdn.jsdelivr.net/gh/MHuiG/imgbed/github/gpl.svg)](https://opensource.org/licenses/GPL-3.0/) 
[![npm downloads](https://img.shields.io/npm/dm/hexo-next-minivaline.svg?style=flat-square)](https://www.npmjs.com/package/hexo-next-minivaline)

>A MiniValine plugin for Hexo NexT theme.
------------------------------
## Introduction

Get more information about [MiniValine](https://github.com/MiniValine/MiniValine)

## Installation

``` bash
npm install hexo-next-minivaline@4 --save
```

> [Use Latest release](https://github.com/MiniValine/hexo-next-minivaline/releases/latest)
> or Beta `npm install --save  git+https://github.com/MiniValine/hexo-next-minivaline.git#master `

## Configuration

In **Hexo** `_config.yml`:

> More Options https://github.com/MiniValine/MiniValine#options

```yml
minivaline:
  enable: true
  appid: zhM0AOiqle17oPoE84CoYw1e-gzGzoHsz # Your leancloud application appid
  appkey: itmzT1JbXfAjVwMqDhGPzU45 # Your leancloud application appkey
  mode: DesertsP # DesertsP or xCss
  placeholder: Write a Comment # Comment box placeholder
  math: true # Support MathJax.
  md: true # Support Markdown.
  enableQQ: false # Enable QQ avatar API.
  NoRecordIP: false # Do not record commenter IP.
  maxNest: 6 # Sub-comment maximum nesting depth.
  pageSize: 6 # Pagination size.
  adminEmailMd5: de8a7aa53d07e6b6bceb45c64027763d # The MD5 of Admin Email to show Admin Flag.[ Just Only DesertsP Style mode]
  tagMeta: # The String Array of Words to show Flag.[ Just Only xCss Style mode]
    - 管理员
    - 小伙伴
    - 新朋友
  master: # The MD5 String Array of master Email to show master Flag.[ Just Only xCss Style mode]
    - de8a7aa53d07e6b6bceb45c64027763d
  friends: # The MD5 String Array of friends Email to show friends Flag. [ Just Only xCss Style mode]
    - b5bd5d836c7a0091aa8473e79ed4c25e
    - adb7d1cd192658a55c0ad22a3309cecf
    - 3ce1e6c77b4910f1871106cb30dc62b0
    - cfce8dc43725cc14ffcd9fb4892d5bfc
  # MiniValine's display language depends on user's browser or system environment
  # If you want everyone visiting your site to see a uniform language, you can set a force language value
  # Available values: en  | zh-CN | (and many more)
  # More i18n info: https://github.com/MiniValine/minivaline-i18n
  lang:
  # Expression Url.
  # https://github.com/MiniValine/MiniValine/blob/master/.github/FAQ.md#how-to-customize-emoticons
  emoticonUrl:
    - https://cdn.jsdelivr.net/npm/alus@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/qq@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/Bilibilis@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/tieba@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/twemoji@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/weibo@latest
  lazyload: false
  cdn: https://cdn.jsdelivr.net/npm/minivaline@4/dist/MiniValine.min.js
```

- `cdn` CDN of the required files. Leave it blank if you want to directly load from server side.

## **[MiniValine FAQs](https://github.com/MiniValine/MiniValine/blob/master/.github/FAQ.md)**

## Feedback

* Visit the [AWESOME MiniValine](https://github.com/MiniValine/AWESOME-MiniValine) list to share plugins and tutorials with other users.
* Report a bug in [GitHub Issues][issues-bug-url].
* [Add or improve translation](https://crowdin.com/project/minivaline) in few seconds.
* Request a new feature on [GitHub][issues-feat-url].
* Join our [Gitter][gitter-url] chats.
* Vote for [popular feature requests][feat-req-vote-url].


## License

[GPL-3.0](https://github.com/MiniValine/hexo-next-minivaline/blob/master/LICENSE)


[issues-bug-url]: https://github.com/MiniValine/MiniValine/issues/new?assignees=&labels=Bug&template=bug-report.md
[issues-feat-url]: https://github.com/MiniValine/MiniValine/issues/new?assignees=&labels=Feature+Request&template=feature-request.md
[gitter-url]: https://gitter.im/thebestminivaline
[feat-req-vote-url]: https://github.com/MiniValine/MiniValine/issues?q=is%3Aopen+is%3Aissue+label%3A%22Feature+Request%22
