# Hexo Next MiniValine Version 5.x
[![GPL Licence](https://cdn.jsdelivr.net/gh/MHuiG/imgbed/github/gpl.svg)](https://opensource.org/licenses/GPL-3.0/) 
[![npm downloads](https://img.shields.io/npm/dm/hexo-next-minivaline.svg?style=flat-square)](https://www.npmjs.com/package/hexo-next-minivaline)

>Hexo NexT 主题的一个MiniValine插件.  [English](README.md)
------------------------------
## 简介

更多信息请看 [MiniValine](https://github.com/MiniValine/MiniValine)

## 安装

``` bash
npm install hexo-next-minivaline@latest --save
```



## 配置

### 配置在哪

+ 配置在hexo的配置里面，而不是主题的配置里面

+ In **Hexo** `_config.yml` , Not theme `_config.yml`

### 怎么配置

```yml
minivaline:
  enable: true
  mversion: latest
  appId: zhM0AOiqle17oPoE84CoYw1e-gzGzoHsz # 你的 leancloud application appid
  appKey: itmzT1JbXfAjVwMqDhGPzU45 # 你的 leancloud application appkey
  mode: DesertsP # DesertsP 或 xCss 演示 -> https://minivaline.js.org/demo.html
  # 注意数组在这里面是yaml格式不是json格式，底下是表情数组的例子
  emoticonUrl:
    - https://cdn.jsdelivr.net/npm/alus@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/qq@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/Bilibilis@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/tieba@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/twemoji@latest
    - https://cdn.jsdelivr.net/gh/MiniValine/weibo@latest
  # 更多表情配置细节->https://minivaline.js.org/docs/en/#/Options?id=emoticonurl-string-array
  lazyload: false
  cdn: https://cdn.jsdelivr.net/npm/minivaline@latest/dist/MiniValine.min.js
  # 上面只是个别演示，更多支持的选项 -> https://github.com/MiniValine/hexo-next-minivaline#options
```

### 具体选项

| 选项                                                         | 是否支持 | 默认值           | 可选项                                                       | 详细信息                                                     |
| ------------------------------------------------------------ | -------- | ---------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| enable                                                       | Yes      | 无               | `true` 或`false`                                             | 告诉hexo开启minivaline                                       |
| cdn                                                          | Yes      | 无               | `留空`或`你自己的minivaline cdn地址`                         | `cdn` 是minivaline的cdn. 留空将会从npm的jsdelivr镜像加载官方最新`latest`版本 |
| mversion                                                     | Yes      | latest           | `留空`或`latest`或`直接数字版本`如`4.3.0`，[可选版本](https://www.npmjs.com/package/minivaline?activeTab=versions) | 选择minivaline版本，注意如果上面设置了cdn选项，这个就不起作用了，更多问题请看底下FAQ |
| [mount option](https://minivaline.js.org/docs/en/#/Options?id=mount-options) | NO       | -                | -                                                            | 这个挂载已经提前写在插件里面了，不要再添加可能出现错误，     |
| [Base Options](https://minivaline.js.org/docs/en/#/Options?id=base-options) | Yes      | 和minivaline一样 | 和minivaline一样                                             | 支持，注意看自己选择的minivaline版本是否支持，且区分大小写   |
| [Style Options](https://minivaline.js.org/docs/en/#/Options?id=style-options) | Yes      | 和minivaline一样 | 和minivaline一样                                             | 支持                                                         |



## FAQ

### MiniValine

+ <https://minivaline.js.org/docs/en/#/FAQ>

### hexo-next-minivaline

#### 添加配置了，没有加载?

+ 是否开启了`  enable: true`
+ 选项注意大小写，只有appid和appkey为了兼容以前版本支持小写，其余都是区分大小写的
+ 在hexo里面添加配置，不是在主题里面添加配置
+ 一些选项是不是配置错了
+ 试试最新版 [hexo-next-minivaline](https://www.npmjs.com/package/hexo-next-minivaline?activeTab=versions) and [Latest hexo-theme-next](https://github.com/next-theme/hexo-theme-next/releases) please.

#### 支持enableQQ?

+ 不太安全，不建议添加
+ Try See [CHANGELOG](https://minivaline.js.org/docs/en/#/CHANGELOG) or [Options](https://minivaline.js.org/docs/en/#/Options) , Some plug-in configurations may not be compatible downward

#### 为什么不合并在next主题里面？

+ 现在还是开发阶段，一直在添加新功能，如果想其他插件一样与next主题合并在一起，会经常更新，会给各方维护人员和使用者带来不必要的麻烦。如果后期稳定了~~我们都不想折腾了~~，可能会与next合并在一起。你也可以加入minivaline团队~~这样就一直折腾了~~
+ 如果基于next主题改的主题，理论上这个插件也是支持的，也可以尝试修改一下。

#### 选择版本没有效果？

+ 尝试清空浏览器缓存，因为可能使用上一次的缓存。
+ 使用cdn影响
  + 注意如果上面选择cdn，那么这个版本选择就不起作用，因为你选择哪个cdn文件相当于选择版本了。
+ 可能选择版本有误：
  + 使用`latest`版本，
    + 是[最后](https://www.npmjs.com/package/minivaline?activeTab=versions)一次发行的版本，即包括`5.0.0-alpha.3`类的开发版本，可能不是你想要的结果。
  + 使用直接一位数版本如`4`
    + 这是以这个数字开头的最后一个版本，如`4`表示`4.3.0`
  + 详见[代码](https://github.com/MiniValine/hexo-next-minivaline/blob/master/minivaline.swig#L3)，可以使用`https://cdn.jsdelivr.net/npm/minivaline@XXX/dist/MiniValine.min.js`把`XXX`换成你选择的`mversion`,看看是不是你想要的结果。

+ 可能有错误的配置，或者不支持的配置。[详见](https://minivaline.js.org/docs/en/#/Options)
+ 可能这个版本的minivaline有问题，请到[minivaline](https://github.com/MiniValine/MiniValine)反馈。



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
