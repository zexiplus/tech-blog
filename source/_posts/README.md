# 博客

此博客基于开源博客系统 hexo 打造， 用于记录与分享程序工程中的实用知识。服务运行在 Google Cloud Platform ，访问地址：https://hexo-blog-service-mp2mnvwagq-de.a.run.app





## 目录

* 前端工程师应该懂的 docker 用法
* 前端工程师应该懂的 nginx 
* 前端工程师应该懂的 kubernetes 
* 前端工程师应该懂的 linux shell 编程
* 前端工程师应该懂的持续集成



## 开发



**安装依赖**

```shell
npm install
# or
yarn
```

**启动开发环境**

```shell
npm run server
# or
yarn server
```

**构建**

```shell
npm run build
# or
yarn build
```

**更换主题**

* 当前主题：[Chic](https://github.com/Siricee/hexo-theme-Chic)
* 访问  https://hexo.io/themes 并下载主题至 `themes`  文件夹下
* 修改博客根目录下的 `_config.yml` 文件，替换原 `theme` 内容
* 运行 `yarn clean` 后预览



## 部署

推送代码至 `origin/master` 分支即可触发 cloud build 自动构建并部署在 cloud run 环境中。 