// 类定义
class student{
   var studname: String
   var mark: Int 
   var mark2: Int 
}

let studrecord = student()

// 实例方法
// 默认仅给方法的第一个参数名称一个局部参数名称;默认同时给第二个和后续的参数名称为全局参数名称
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func incrementBy(amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}
// 初始计数值是0
let counter = Counter()

// 计数值现在是1
counter.increment()

// 计数值现在是6
counter.incrementBy(amount: 5)
print(counter.count)

// 计数值现在是0
counter.reset()
print(counter.count)

// 外部名称设置
// 我们强制在第一个参数添加外部名称把这个局部名称当作外部名称使用（Swift 2.0前是使用 # 号）。
// 相反，我们呢也可以使用下划线（_）设置第二个及后续的参数不提供一个外部名称
class multiplication {
    var count: Int = 0
    func incrementBy(first no1: Int, no2: Int) {
        count = no1 * no2
        print(count)
    }
}
let counter = multiplication()
counter.incrementBy(first: 800, no2: 3)
counter.incrementBy(first: 100, no2: 5)
counter.incrementBy(first: 15000, no2: 3)

// self属性
class calculations {
    let a: Int
    let b: Int
    let res: Int
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
        res = a + b
        print("Self 内: \(res)")
    }
    
    func tot(c: Int) -> Int {
        return res - c
    }
    
    func result() {
        print("结果为: \(tot(c: 20))")
        print("结果为: \(tot(c: 50))")
    }
}
let pri = calculations(a: 600, b: 300)
let sum = calculations(a: 1200, b: 300)
pri.result()
sum.result()

// 实例方法中改值
struct area {
    var length = 1
    var breadth = 1
    
    func area() -> Int {
        return length * breadth
    }
    
    mutating func scaleBy(res: Int) {
        length *= res
        breadth *= res
        
        print(length)
        print(breadth)
    }
}
var val = area(length: 3, breadth: 5)
val.scaleBy(res: 3)
val.scaleBy(res: 30)
val.scaleBy(res: 300)

// 可变方法中给self赋值
struct area {
    var length = 1
    var breadth = 1
    
    func area() -> Int {
        return length * breadth
    }
    
    mutating func scaleBy(res: Int) {
        self.length *= res
        self.breadth *= res
        print(length)
        print(breadth)
    }
}
var val = area(length: 3, breadth: 5)
val.scaleBy(res: 13)

// 类型方法
// 类型本身调用的方法
class Math
{
    class func abs(number: Int) -> Int
    {
        if number < 0
        {
            return (-number)
        }
        else
        {
            return number
        }
    }
}
struct absno
{
    static func abs(number: Int) -> Int
    {
        if number < 0
        {
            return (-number)
        }
        else
        {
            return number
        }
    }
}
let no = Math.abs(number: -35)
let num = absno.abs(number: -5)
print(no)
print(num)

// 子类、重写方法
class SuperClass {
    func show() {
        print("这是超类 SuperClass")
    }
}

class SubClass: SuperClass  {
    override func show() {
        print("这是子类 SubClass")
    }
}
let superClass = SuperClass()
superClass.show()
let subClass = SubClass()
subClass.show()

class Circle {
    var radius = 12.5
    var area: String {
        return "矩形半径 \(radius) "
    }
}

// 重写属性
class Rectangle: Circle {
    var print = 7
    override var area: String {
        return super.area + " ，但现在被重写为 \(print)"
    }
}
let rect = Rectangle()
rect.radius = 25.0
rect.print = 3
print("Radius \(rect.area)")

// 重写属性观察器
class Circle {
    var radius = 12.5
    var area: String {
        return "矩形半径为 \(radius) "
    }
}
class Rectangle: Circle {
    var print = 7
    override var area: String {
        return super.area + " ，但现在被重写为 \(print)"
    }
}
let rect = Rectangle()
rect.radius = 25.0
rect.print = 3
print("半径: \(rect.area)")

class Square: Rectangle {
    override var radius: Double {
        didSet {
            print = Int(radius/5.0)+1
        }
    }
}
let sq = Square()
sq.radius = 100.0
print("半径: \(sq.area)")

// 防止重写
final class Circle {
    final var radius = 12.5
    var area: String {
        return "矩形半径为 \(radius) "
    }
}
class Rectangle: Circle {
    var print = 7
    override var area: String {
        return super.area + " ，但现在被重写为 \(print)"
    }
}
let rect = Rectangle()
rect.radius = 25.0
rect.print = 3
print("半径: \(rect.area)")
class Square: Rectangle {
    override var radius: Double {
        didSet {
            print = Int(radius/5.0)+1
        }
    }
}
let sq = Square()
sq.radius = 100.0
print("半径: \(sq.area)")

// 构造器
class mainClass {
    var no1 : Int // 局部存储变量
    init(no1 : Int) {
        self.no1 = no1 // 初始化
    }
}
class subClass : mainClass {
    var no2 : Int // 新的子类存储变量
    init(no1 : Int, no2 : Int) {
        self.no2 = no2 // 初始化
        super.init(no1:no1) // 初始化超类
    }
    // 便利方法只需要一个参数
    override convenience init(no1: Int)  {
        self.init(no1:no1, no2:0)
    }
}
let res = mainClass(no1: 10)
let res2 = subClass(no1: 10, no2: 20)
print("res 为: \(res.no1)")
print("res2 为: \(res2.no1)")
print("res2 为: \(res2.no2)")

// 构造器重写重载
class SuperClass {
    var corners = 4
    var description: String {
        return "\(corners) 边"
    }
}
let rectangle = SuperClass()
print("矩形: \(rectangle.description)")

class SubClass: SuperClass {
    override init() {  //重载构造器
        super.init()
        corners = 5
    }
}
let subClass = SubClass()
print("五角型: \(subClass.description)")

// 类可失败构造器
class StudRecord {
    let studname: String!
    init?(studname: String) {
        self.studname = studname
        if studname.isEmpty { return nil }
    }
}
if let stname = StudRecord(studname: "失败构造器") {
    print("模块为 \(stname.studname)")
}

// 析构过程
var counter = 0;  // 引用计数器
class BaseClass {
    init() {
        counter += 1;
    }
    deinit {
        counter -= 1;
    }
}
var show: BaseClass? = BaseClass()
print(counter)
show = nil
print(counter)

// 弱引用
class Module {
    let name: String
    init(name: String) { self.name = name }
    var sub: SubModule?
    deinit { print("\(name) 主模块") }
}
class SubModule {
    let number: Int
    
    init(number: Int) { self.number = number }
    
    weak var topic: Module?
    
    deinit { print("子模块 topic 数为 \(number)") }
}
var toc: Module?
var list: SubModule?
toc = Module(name: "ARC")
list = SubModule(number: 4)
toc!.sub = list
list!.topic = toc
toc = nil
list = nil

// 无主引用
class Student {
    let name: String
    var section: Marks?
    
    init(name: String) {
        self.name = name
    }
    
    deinit { print("\(name)") }
}
class Marks {
    let marks: Int
    unowned let stname: Student
    
    init(marks: Int, stname: Student) {
        self.marks = marks
        self.stname = stname
    }
    
    deinit { print("学生的分数为 \(marks)") }
}
var module: Student?
module = Student(name: "ARC")
module!.section = Marks(marks: 98, stname: module!)
module = nil