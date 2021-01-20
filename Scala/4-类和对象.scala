// 类定义
class People{
var name:String = _ //占位符
private [this] val gender='male' //this可改为包名，类内访问类外不可
def eat():String{name+'eat'}
}
// 调用
val p = new People()
p.name='abc'
p.eat()

// 构造器
class Person(val name:String,val age:Int){
var gender:String = _
def this(name:String,age:Int){
this(name,age)
this.gender = gender
}
}

// 继承
class A(name:String) extends B(name:String){
override def xx:String='xx'
override val gender='F'
}

// 抽象
abstract class A{
def speak
}
class B extends A{
override def speak:unit={println('XX')}
}

// case class，不用new就可调用内部属性
case class xx(name:String){}
// 调用
xx('abc').name

// 接口
trait Equal {
  def isEqual(x: Any): Boolean
  def isNotEqual(x: Any): Boolean = !isEqual(x)
}