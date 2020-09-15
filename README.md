# 博客

此博客使用 hexo 作为博客系统，使用 github actions 构建, 部署于 github pages， 访问地址: https://zexiplus.github.io/tech-blog


## 分支
- master 稳定分支
- source 源码分支, 定期合并入 master
- pages 部署分支， 用于部署 github pages


## 目录




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

推送代码至 `source` 分支即可触发 github action 自动构建并部署在 github pages 环境中。 