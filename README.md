# Hexo Next MiniValine Version 5.0
[![GPL Licence](https://cdn.jsdelivr.net/gh/MHuiG/imgbed/github/gpl.svg)](https://opensource.org/licenses/GPL-3.0/) 
[![npm downloads](https://img.shields.io/npm/dm/hexo-next-minivaline.svg?style=flat-square)](https://www.npmjs.com/package/hexo-next-minivaline)

>A MiniValine plugin for Hexo NexT theme.
------------------------------
## Introduction

Get more information about [MiniValine](https://github.com/MiniValine/MiniValine)

## Installation

``` bash
npm install hexo-next-minivaline@latest --save
```



## Configuration

### Where

+ In **Hexo** `_config.yml` , Not theme `_config.yml`

### How

```yml
minivaline:
  enable: true
  mversion: latest
  appid: zhM0AOiqle17oPoE84CoYw1e-gzGzoHsz # Your leancloud application appid
  appkey: itmzT1JbXfAjVwMqDhGPzU45 # Your leancloud application appkey
  mode: DesertsP # DesertsP or xCss
  placeholder: Write a Comment # Comment box placeholder
  math: true # Support MathJax.
  md: true # Support Markdown.
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
  cdn: https://cdn.jsdelivr.net/npm/minivaline@latest/dist/MiniValine.min.js
```

### Options

| Config options                                               | support | Detail                                                       |
| ------------------------------------------------------------ | ------- | ------------------------------------------------------------ |
| enable                                                       | Yes     | Tell hexo enable minivaline                                  |
| cdn                                                          | Yes     | `cdn` CDN of the required files. Leave it blank if you want to directly load from server side. |
| mversion                                                     | Yes     | choose [the version of MiniValine](https://www.npmjs.com/package/minivaline?activeTab=versions) you use,eg `5`or`4`or`4.3.0`or`latest`,default is `latest`, If you use option cdn this will be blocked. |
| [mount option](https://minivaline.js.org/docs/en/#/Options?id=mount-options) | NOT     | Which has been installed before. Don't Add This.             |
| [Base Options](https://minivaline.js.org/docs/en/#/Options?id=base-options) | Yes     | Support                                                      |
| [Style Options](https://minivaline.js.org/docs/en/#/Options?id=style-options) | Yes     | Support                                                      |



## FAQ

### MiniValine

+ <https://minivaline.js.org/docs/en/#/FAQ>

### hexo-next-minivaline

#### I had add it in config, but it built without minivaline?

+ Note whether the option name case is uppercase or lowercase.
+ Add it in **hexo** `_config.yml`, but not Next **theme** `_config.yml`
+ Some config option, which is important ,eg appkey or appid,  is blank.
+ Try use the Latest [hexo-next-minivaline](https://www.npmjs.com/package/hexo-next-minivaline?activeTab=versions) and [Latest hexo-theme-next](https://github.com/next-theme/hexo-theme-next/releases) please.

#### Support enableQQ?

+ Try See [CHANGELOG](https://minivaline.js.org/docs/en/#/CHANGELOG) or [Options](https://minivaline.js.org/docs/en/#/Options) , Some plug-in configurations may not be compatible downward



## Feedback

* Report a bug in [GitHub Issues][issues-bug-url].
* Request a new feature on [GitHub][issues-feat-url].
* Vote for [popular feature requests][feat-req-vote-url].
* Join our [Gitter][gitter-url] chats.



## More 

+ Visit the [AWESOME MiniValine](https://github.com/MiniValine/AWESOME-MiniValine) list to share plugins and tutorials with other users.
+ [Add or improve translation](https://crowdin.com/project/minivaline) in few seconds.




## License

[GPL-3.0](https://github.com/MiniValine/hexo-next-minivaline/blob/master/LICENSE)


[issues-bug-url]: https://github.com/MiniValine/MiniValine/issues/new?assignees=&labels=Bug&template=bug-report.md
[issues-feat-url]: https://github.com/MiniValine/MiniValine/issues/new?assignees=&labels=Feature+Request&template=feature-request.md
[gitter-url]: https://gitter.im/thebestminivaline
[feat-req-vote-url]: https://github.com/MiniValine/MiniValine/issues?q=is%3Aopen+is%3Aissue+label%3A%22Feature+Request%22
