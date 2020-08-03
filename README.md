# Blog

This blog is based on the open source blog system hexo, used to record and share practical knowledge in program engineering. The service runs on Google Cloud Platform, visit address: https://hexo-blog-service-mp2mnvwagq-de.a.run.app





## table of Contents

* Docker usage that front-end engineers should understand
* Nginx that front-end engineers should know
* Kubernetes that front-end engineers should understand
* Linux shell programming that front-end engineers should know
* Continuous integration that front-end engineers should understand



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

* Visit https://hexo.io/themes and download the theme to the `themes` folder
* Modify the `_config.yml` file in the blog root directory to replace the original `theme` content
* Preview after running `yarn clean`



## Deployment

Push code to the `origin/master` branch to trigger cloud build to be automatically built and deployed in the cloud run environment.
