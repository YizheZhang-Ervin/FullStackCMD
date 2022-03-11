一、本质
1.模块打包机打包输出js模块
代码转换/文件优化/代码分割/模块合并/自动刷新/代码校验/自动发布

二、内容
配置/优化策略/ast抽象语法树/tapable事件流/手写webpack/loader/plugin

三、打包后的文件
1.是一个自执行函数
(1)先定义一个缓存
(2)配置实现require方法
(3)在缓存中/不在缓存中(则按键值对存储[模块路径:函数])
(4)调用缓存中函数

四、webpack配置文件名
nodemodules里webpack里webpack-cli里bin里config-yargs.js里默认名字为webpack.config.js或webpackfile.js

五、执行webpack
方法一:默认文件名直接运行npx webpack
方法二:自定义文件名传参执行npx webpack --config xx.js
方法三:在package.json中配置脚本
“scripts”:{
“build”:”webpack --config xx.js”,
“dev”:”webpack-dev-server”
}
运行时用npm run build
或运行时传参用npm run build -- --config xx.js

六、全局变量引入
1.expose-loader
2.providePlugin
3.引入不打包

七、webpack优化
1.不解析(在modules中设置)
noParse:/xx/

2.IgnorePlugin(在plugins中设置)
new webpack.IgnorePlugin(/\.\/xx/,/xxlib/) xxlib中引入xx则忽略

3.dllPlugin(output中设置)
library:''
libraryTarget:''
plugins中new wepack.dllPlugin({name:'',path:path.resolve(__dirname,'dist','manifest.json')})

4.happypack
多线程打包

5.自带优化
用import会自动去掉无用的代码(es6模块会把结果放到default上):tree-shaking  
自动省略可以简化的代码:scope hosting作用域提升  
抽离公共代码
懒加载

八、Tapable
事件流机制，把各个插件串联起来，核心原理是发布订阅模式
SyncHook/SyncBailHook/SyncWaterfallHook/SyncLoopHook/
AsyncParallelHook/AsyncParallelBailHook/AsyncSeriesHook/AsyncSeriesBailHook/AsyncSeriesWaterfallHook
异步钩子:需要等待所有并发的异步事件执行后再执行回调方法

九、手写webpack
0.通过npm link 和 npm link xxModule来实现全局命令调用某个模块
1.找到当前执行名的路径
2.写一个compiler类，加载config，并new以后run
2.1compiler类要保存入口文件路径+保存所有模块依赖+执行并且创建模块依赖关系+发射打包后的文件
(1)构建模块
模块内容
模块id
源码改造+返回依赖列表
把相对路径和模块内容对应起来
模块递归加载
(2)解析源码AST
babel
(3)发射文件
拿到输出到哪个目录下 输出路径
(4)loader
获取对应loader函数，递归调用loader实现转化功能
(5)plugins

十、load
-!不会让文件通过pre+normal loader处理
!不会让文件通过normal loader处理
!!不会让pre+normal+post loader处理

pitch loader/normal loader

babel-loader/banner-loader/file-loader/url-loader/less-loader/css-loader

十一、插件
内置插件
文件列表插件
内联插件

十二、打包后自动发布