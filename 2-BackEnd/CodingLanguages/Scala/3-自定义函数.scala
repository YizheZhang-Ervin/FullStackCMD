def 方法名(参数名:参数类型):返回值类型={方法体}
*方法体最后一行为返回值，不用加return
无入参调用可无括号 def x1() = 1+2
无返回值 def x2():unit={println('xx')}
命名参数 def x3(a:Float,b:Float):Float={println(a/b)}
默认参数，不可省略括号 def x3(a:string='xx'):unit={println(a)}
可变参数 def x4(a:Int*){for(aa in a){println(aa)}}

object HelloWorld {
    def main(args: Array[String]) {
       println("Hello, world!") // 输出 Hello World
    }
}