---
title: 使用 Hexo + Github Pages + Actions 自动构建/部署站点
date: 2020-09-21 23:19:44
tags: hexo, blog, github pages, github actions
---


搭建站点是程序开发中一个常见的需求， 目前可用的方案有很多。这片文章会介绍如何使用 hexo, git pages, github actions 构建并自动化部署一套博客系统。



## 前提条件

* github 账号
* Nodejs + npm



## 工具介绍

**hexo**

hexo 是一套开源博客工具，有丰富的主题与插件，提供命令行工具，文档可参考 [hexo](https://hexo.io)

**github actions**

github actions 是 github 的自动构建平台， 具有非常丰富的插件系统， 文档可参考 [actions](https://github.com/features/actions)

**github pages**

gitpages 是 github 的静态网站托管平台，可与 actions 轻松结合, 文档可参考 [pages](https://pages.github.com/)



## 初始化

**安装 hexo**

```shell
npm install -g hexo hexo-cli
```



**初始化项目**

新建代码仓库， 复制代码库地址 例如`git@github.com:zexiplus/hexo-demo.git` ，本地执行 `hexo init hexo-demo`, 执行 `cd hexo-demo` 项目，  执行`git init` 初始化 git 目录，执行 `git remote add origin git@github.com:zexiplus/hexo-demo.git ` 添加源，执行`git add . && git commit -m 'init project'` 初始化项目，执行 `git push origin HEAD:source` 把提交推送至远程 source 分支， 项目初始化完毕。

![hexo1](./imgs/hexo1.png)

![hexo2](./imgs/hexo2.png)











## 配置 Actions 



在项目的根目录下新建文件夹及文件 `.github/workflows/pages.yml`, 拷贝内容如下

```yaml
name: Pages

on:
  push:
    branches:
      - source  # default branch

jobs:
  pages:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Use Node.js 12.x
        uses: actions/setup-node@v1
        with:
          node-version: '12.x'
      - name: Cache NPM dependencies
        uses: actions/cache@v2
        with:
          path: node_modules
          key: ${{ runner.OS }}-npm-cache
          restore-keys: |
            ${{ runner.OS }}-npm-cache
      - name: Install Dependencies
        run: npm install
      - name: Clean
        run: npm run clean
      - name: Build
        run: npm run build
      - name: Deploy
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./public
          publish_branch: pages
```

![hexo4](./imgs/hexo4.png)



## 配置 hexo 

编辑项目根目录下`_config.yml`，修改 url 字段为你的 github pages 的访问地址， 修改 root 字段为路径前缀， 示例如下

```yaml
# URL
## If your site is put in a subdirectory, set url as 'http://example.com/child' and root as '/child/'
url: http://zexiplus.github.io/hexo-demo
root: /hexo-demo
permalink: :year/:month/:day/:title/
permalink_defaults:
pretty_urls:
  trailing_index: true # Set to false to remove trailing 'index.html' from permalinks
  trailing_html: true # Set to false to remove trailing '.html' from permalinks
```



## 提交修改

提交修改， 并推送本地分支至远程 `source` 分支， 查看 Actions 面板查看构建详情

```shell
git add .
git commit -m 'feat: change config'
git push origin HEAD:source
```





## 配置 Github pages

在 github 项目页面选择 settings 面板， 找到 Github Pages 栏， branch 选择 pages 分支， 路径选择跟路径， 点击 save 保存， 等待片刻， 点击 生成的链接即可访问博客

![hexo5](./imgs/hexo5.png)

![hexo6](./imgs/hexo6.png)





