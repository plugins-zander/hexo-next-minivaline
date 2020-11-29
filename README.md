# Hexo Next MiniValine Version 5.x
[![GPL Licence](https://cdn.jsdelivr.net/gh/MHuiG/imgbed/github/gpl.svg)](https://opensource.org/licenses/GPL-3.0/) 
[![npm downloads](https://img.shields.io/npm/dm/hexo-next-minivaline.svg?style=flat-square)](https://www.npmjs.com/package/hexo-next-minivaline)

>A MiniValine plugin for Hexo NexT theme.  [中文](README.CN.md)
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
  appId: zhM0AOiqle17oPoE84CoYw1e-gzGzoHsz # Your leancloud application appid
  appKey: itmzT1JbXfAjVwMqDhGPzU45 # Your leancloud application appkey
  mode: DesertsP # DesertsP or xCss demo -> https://minivaline.js.org/demo.html
  # Pay attention array, eg following, use yaml style NOT json in hexo-next-minivaline
  emoticonUrl:
    - https://cdn.jsdelivr.net/npm/alus@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/qq@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/Bilibilis@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/tieba@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/twemoji@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/weibo@latest
  # Detail -> https://minivaline.js.org/docs/en/#/Options?id=emoticonurl-string-array
  lazyload: false
  cdn: https://cdn.jsdelivr.net/npm/minivaline@latest/dist/MiniValine.min.js
  # more support option -> https://github.com/MiniValine/hexo-next-minivaline#options
```

### Options

| Config options                                               | Support | Default              | option                                                       | Detail                                                       |
| ------------------------------------------------------------ | ------- | -------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| enable                                                       | Yes     | null                 | `true` or `false`                                            | Tell hexo enable minivaline                                  |
| cdn                                                          | Yes     | null                 | `Leave blank`or `Your minivaline cdn address`                | `cdn` CDN of the required files. Leave it blank if you want to directly load from server side. |
| mversion                                                     | Yes     | `latest`             | `Leave blank` or`num version` eg`4.3.0`,[detail](https://www.npmjs.com/package/minivaline?activeTab=versions) | If you use option cdn this will be blocked.More question in FAQ following. |
| [mount option](https://minivaline.js.org/docs/en/#/Options?id=mount-options) | NO      | -                    | -                                                            | Which has been installed before. Don't Add This.             |
| [Base Options](https://minivaline.js.org/docs/en/#/Options?id=base-options) | Yes     | same with minivaline | same with minivaline                                         | Support                                                      |
| [Style Options](https://minivaline.js.org/docs/en/#/Options?id=style-options) | Yes     | same with minivaline | same with minivaline                                         | Support                                                      |



## FAQ

### MiniValine

+ <https://minivaline.js.org/docs/en/#/FAQ>

### hexo-next-minivaline

#### I had add it in config, but it built without minivaline?

+ set `enable: true`
+ Note whether the option name case is uppercase or lowercase.
+ Add it in **hexo** `_config.yml`, but not Next **theme** `_config.yml`
+ Some config option may be wrong. 
+ Try use the Latest [hexo-next-minivaline](https://www.npmjs.com/package/hexo-next-minivaline?activeTab=versions) and [Latest hexo-theme-next](https://github.com/next-theme/hexo-theme-next/releases) please.

#### Support enableQQ?

+ Try See [CHANGELOG](https://minivaline.js.org/docs/en/#/CHANGELOG) or [Options](https://minivaline.js.org/docs/en/#/Options) , Some plug-in configurations may not be compatible downward

#### Not my version?

+ Clear brower cache,and try again
+ If you use option `cdn`, this `mversion` will be blocked.
+ May be the `mversion` is wrong
  + latest
    + means the latest version release on [npm](https://www.npmjs.com/package/minivaline?activeTab=versions) ,include `alpha-version`eg`5.0.0-alpha.3`,may not you mean.
  + one number eg`4`
    + means the lastet version start with 4, eg`4.3.0`
  + [Code here](https://github.com/MiniValine/hexo-next-minivaline/blob/master/minivaline.swig#L3),
  + you can try `https://cdn.jsdelivr.net/npm/minivaline@Your-mversion-value/dist/MiniValine.min.js` before using.
  
+ Is there something wrong with option?[detail](https://minivaline.js.org/docs/en/#/Options)
+ May be something wrong with minivaline, feedback [minivaline](https://github.com/MiniValine/MiniValine).



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

