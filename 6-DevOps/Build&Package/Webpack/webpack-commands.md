# Webpack

```
npm install webpack -g   // 全局安装webpack

npm install webpack --save-dev 或npm install webpack@ --save-dev //本地安装webpack,即下载webpack插件到node_modules 并在package.json文件中加上webpack的配置内容(当你在本地安装 webpack 后，你能够从 node_modules/.bin/webpack 访问它的 bin 版本)

npm init -y   //初始化默认的package.json文件

npm install {whatever}-loader  --save-dev   //安装loader并将该loader配置到package.json文件中

webpack    //对项目进行打包

webpack   --watch   // 自动监控文件的改变

webpack  --display-modules  //打包时显示隐藏的模块

webpack--display-chunks   //打包时显示chunks

webpack --display-error-details //显示详细错误信息

webpack -w #提供watch方法，实时进行打包更新

webpack -p #对打包后的文件进行压缩

webpack -d #提供SourceMaps，方便调试

webpack --colors #输出结果带彩色，比如：会用红色显示耗时较长的步骤

webpack --profile #输出性能数据，可以看到每一步的耗时
```