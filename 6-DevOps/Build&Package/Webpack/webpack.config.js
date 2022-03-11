let path = require('path');
let HTMLWebapckPlugin = require('html-webpack-plugin');
let MiniCssExtractPlugin = require('mini-css-extract-plugin');
const CssMinimizerPlugin = require('css-minimizer-webpack-plugin');
const webpack = require('webpack');

module.exports = {
    // devServer: {  //开发服务器配置
    //     hot:true  // 热更新
    //     port: 3000,
    //     progress: true,
    //     contentBase: './build',
    //     compress: 'true',
    //    proxy:{  //跨域
    //        '/api':{
    //            target:'http://localhost:3000',
    //            pathRewrite:{'/api':""}
    //        }
    //    }
    // },
    optimization: {
        minimizer: [
          new CssMinimizerPlugin(),
        ],
        // 分割代码块，抽离公共块
        splitChunks:{
            // 缓存组
            cacheGroups:{
                // 公共模块
                common:{
                    chunks:'initial',
                    minSize:0,
                    // 使用次数
                    minChunks:2
                },
                // 第三方文件
                vendor:{
                    // 优先抽离
                    priority:1,
                    test:/node_modules/,
                    chunks:'initial',
                    minSize:0,
                    minChunks:2
                }
            }
        }
    },
    mode: 'development',  // production&development
    entry: './src/index.js',
    // 源码映射
    // source-map产生单独文件并返回报错的列
    // 如果用eval-source-map不产生单独文件但会返回报错的行列
    // cheap-module-source-map产生单独文件不产生行列
    // cheap-module-eval-source-map不产生单独文件也不会返回报错的行列
    devtool:'source-map', 
    // 实时监控webpack
    watch:true,
    watchOptions:{
        poll:1000,  // 1s 问1000次
        aggregateTimeout:500,  // 防抖，一直输入代码500ms打包一次
        ignored:/node_modules/
    },
    // resolve:{ //解析第三方包
    //     modules:[path.resolve('node_modules')],
    //     alias:{
    //         bootstrap:''
    //     },
    //     extensions:[],
    //     mainFields:[],
    //     mainFiles:[]
    // },
    output: {
        filename: 'bundle.[hash:8].js',  // 哈希戳8位
        // filename: '[name].js', // 多入口多出口使用
        path: path.resolve(__dirname, 'build'),  //必须用绝对路径
        // publicPath:""  //统一路径
    },
    plugins: [
        new webpack.DefinePlugin({
            DEV:JSON.stringify('production')   // 或DEV:"'production'",两重引号
        }),
        new HTMLWebapckPlugin({
            template: './src/index.html',
            filename: 'index.html',
            minify: {
                removeAttributeQuotes: true,
                collapseWhitespace: true,
            },
            hash: true
        }),
        // 抽离出单独css文件
        new MiniCssExtractPlugin({
            filename:'main.css'
        }),
        // 每个模块中都注入 全局变量$
        // new webpack.ProvidePlugin:{
        //     "$":jquery
        // }
        // 热更新插件、打印更新的模块路径
        new webpack.HotModuleReplacementPlugin(),
        new webpack.NormalModuleReplacementPlugin()
    ],
    module:{ //模块
        rules:[
            // css-loader 解析@import
            // style-loader把css插入head标签中
            // 放数组中则loader顺序从右向左执行，从下到上执行，可放对象中->多传参数
            {
                test:/\.css$/,
                use:[
                    MiniCssExtractPlugin.loader,   // 单独抽离出一个文件
                    'css-loader',
                    'postcss-loader'  // 加前缀
                ]
            },{
                test:/\.less$/,
                use:[{
                        loader:'style-loader'
                    },
                    'css-loader',
                    'less-loader'
                ]
            },{
                test:/\.js$/,
                use:{
                    loader:'babel-loader',
                    options:{  // es6转es5
                        presets:[
                            '@babel/preset-env'
                        ],
                        plugins:[
                            '@babel/plugin-proposal-class-properties'
                        ]
                    }
                },
                include:path.resolve(__dirname,"src"),
                exclude:/node_modules/
            },
            {
                test:/\.js$/,
                use:{
                    loader:'eslint-loader',   // 校验语法规范
                    options:{
                        enforce:'pre'  //pre即previous,也可以是post,normal
                    }
                }
            },
            // 使用全局变量
            // {  
            //     test:require.resolve('jquery'),
            //     use:'expose-loader?$!'
            // }
            {
                test:/\.(png|jpg|gif)$/,
                // 图片小用base64,别的用file-loader
                // use:'file-loader'
                use:{
                    loader:'url-loader',
                    options:{
                        limit:200*1024,
                        output:'/img/'
                    }
                }
            },
            {
                test:/\.html$/,
                use:'html-withimg-loader'
            }
        ]
    }
}