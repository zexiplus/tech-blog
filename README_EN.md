# Blog

This blog uses hexo as the blog system, built with github actions, and deployed on github pages. Visit address: https://zexiplus.github.io/tech-blog


## Branch
-master stable branch
-source source branch, merged into master regularly
-pages deployment branch, used to deploy github pages


## table of Contents




## Development



**Installation dependencies**

```shell
npm install
# or
yarn
```

**Start the development environment**

```shell
npm run server
# or
yarn server
```

**Construct**

```shell
npm run build
# or
yarn build
```

**Change theme**

* Current theme: [Chic](https://github.com/Siricee/hexo-theme-Chic)
* Visit https://hexo.io/themes and download the theme to the `themes` folder
* Modify the `_config.yml` file in the blog root directory to replace the original `theme` content
* Preview after running `yarn clean`



## Deployment

Push the code to the `source` branch to trigger the github action to be automatically built and deployed in the github pages environment.