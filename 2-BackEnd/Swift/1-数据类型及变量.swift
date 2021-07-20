// 1.基本数据类型: 
// 1.1 Int
// 1.2 UInt
// 1.3 浮点数：Float、Double
// 1.4 布尔值：Bool
// 1.5 字符串：String
var xxstr = "xx"
var xxstr2 = String("xx")
var emptystr = ""
var emptystr2 = String()
emptystr.isEmpty()
// 用let不可修改，用var可修改
// 长度
xxstr.count
// 连接
xxstr+xxstr2
xxstr+=xxstr2
// 比较
xxstr==xxstr2
xxstr<xxstr2
// unicode字符串
for code in unicodeString.utf8 {
   print("\(code) ")
}
for code in unicodeString.utf16 {
   print("\(code) ")
}
// 检查字符串是否拥有特定前缀
hasPrefix(prefix: String)
// 检查字符串是否拥有特定后缀
hasSuffix(suffix: String)
// 转换字符串数字为整型
Int(String)
// 标量编码
xxstr.unicodeScalars

// 1.6 字符：Character
// 定义
let xxchar: Character = "xx"
let xxchar: Character = ""
// 字符串取字符
xxstr.characters
// 字符串连字符
xxstr.append(xxchar)

// 1.7 可选类型：Optional

// 1.8 数组Array
var someArray = [SomeType]()
var someArray = [SomeType](repeating: InitialValue, count: NumbeOfElements)
// 访问数组
var someVar = someArray[index]
// 修改数组
someArray.append(30)
someArray += [40]
// 遍历数组
for item in someArray {
   print(item)
}
for (index, item) in someStrs.enumerated() {
    print("\(index) \(item)")
}
// 合并数组
someArray+someArray2
// 数组元素个数
someArray.count
// 判断数组是否为空
someArray.isEmpty

// 1.9 字典Dictionary
var someDict =  [KeyType: ValueType]()
// 空字典
var someDict = [Int: String]()
// 赋值
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
// 访问
var someVar = someDict[key]
// 修改
// key 不存在，则添加值，如果存在则修改 key 对应的值
var oldVal = someDict.updateValue("One 新的值", forKey: 1)
someDict[1] = "One 新的值"
// 移除
var removedValue = someDict.removeValue(forKey: 2)
someDict[2] = nil
// 遍历
for (key, value) in someDict {
   print("\(key) \(value)")
}
for (key, value) in someDict.enumerated() {
    print("\(key) \(value)")
}
// 字典转数组
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
let dictKeys = [Int](someDict.keys)
let dictValues = [String](someDict.values)
for (key) in dictKeys {
    print("\(key)")
}
for (value) in dictValues {
    print("\(value)")
}
// 字典键值对个数
someDict.count
// 判断数组是否为空
someDict.isEmpty


// 1.8 其他
// AnyObject可以代表任何class类型的实例。
// Any可以表示任何类型，包括方法类型（function types）。

// 1.9 字面量
// (1)整型: 二进制前缀为 0b，八进制前缀为 0o，十六进制前缀为 0x
// (2)浮点:
// 默认用十进制表示（无前缀），也可以用十六进制表示（加前缀 0x）
// 浮点型的_和数字前的0会被忽略
// 整数部分，小数点，小数部分及指数部分，十进制指数e，十六进制指数p
// (3)字符串
// 不能包含未转义的双引号 （"）、未转义的反斜线（\）、回车符或换行符
// (4)布尔值
// true 表示真、false 表示假、nil 表示没有值

// 2.类型别名
typealias newname = type
var varname: newname = varval

// 3.变量声明 + 类型推断
// 浮点默认推断double
var varname = varval
print("\(varname)")
print(varname)

// 4. 常量声明(可用unicode)
let constantName = constantval
let constantName:type = constantval
print("\(constantName)")
print(constantName)

// 5.可选类型
var optionalInteger: type?
var optionalInteger: Optional<type>

// 5.1 默认空值为nil
// 可选类型的实例包含一个值，你可以用后缀操作符!来访问

// 5.2 强制解析
// 当确定可选类型包含值后，可在后面加一个!取值使用
var varname:type?
print(optionalInteger!)

// 5.3自动解析
// 你可以在声明可选变量时使用!替换?
var varname:type!
print(varname)

// 5.4 可选绑定
// 判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量
if let constantName = someOptional {
    statements
}else{
    statements
}

// 运算符
// 6.1 区间运算符
// 闭区间
for index in 1...5 {
    statements
}
// 开区间
for index in 1..<5 {
    statements
}

// 6.2 nil 的聚合运算
??

// 6.3 波浪箭头
~>

// 6.4 类型转换运算符
// 向下转型，用类型转换操作符(as? 或 as!)
// is判断类型 as转型

// 7. 枚举
// 枚举类型 原始值(会自动赋值0开始)/相关值(x,y,z)
enum DaysofaWeek {
    case Sunday
    case Monday
    case TUESDAY
    case WEDNESDAY
    case THURSDAY
    case FRIDAY
    case Saturday
}
var weekDay = DaysofaWeek.THURSDAY 

// 8.结构体
struct MarksStruct {
   var mark: Int

   init(mark: Int) {
      self.mark = mark
   }
}
var aStruct = MarksStruct(mark: 98)

// 9.存储属性
struct Number
{
   var digits: Int
   let pi = 3.1415
}
var n = Number(digits: 12345)
n.digits = 67

// 9.1 延迟存储属性
class sample {
    lazy var no = number() // `var` 关键字是必须的
}
class number {
    var name = "Runoob Swift 教程"
}
var firstsample = sample()
print(firstsample.no.name)

// 9.2 计算属性
class sample {
    var no1 = 0.0, no2 = 0.0
    var length = 300.0, breadth = 150.0
    
    var middle: (Double, Double) {
        get{
            return (length / 2, breadth / 2)
        }
        set(axis){
            no1 = axis.0 - (length / 2)
            no2 = axis.1 - (breadth / 2)
        }
    }
}
var result = sample()
print(result.middle)
result.middle = (0.0, 10.0)
print(result.no1)
print(result.no2)

// 9.3 只读计算属性
class film {
    var head = ""
    var duration = 0.0
    var metaInfo: [String:String] {
        return [
            "head": self.head,
            "duration":"\(self.duration)"
        ]
    }
}
var movie = film()
movie.head = "Swift 属性"
movie.duration = 3.09
print(movie.metaInfo["head"]!)
print(movie.metaInfo["duration"]!)

// 9.4 属性观察器
// willSet在设置新的值之前调用
// didSet在新的值被设置之后立即调用
class Samplepgm {
    var counter: Int = 0{
        willSet(newTotal){
            print("计数器: \(newTotal)")
        }
        didSet{
            if counter > oldValue {
                print("新增数 \(counter - oldValue)")
            }
        }
    }
}
let NewCounter = Samplepgm()
NewCounter.counter = 100
NewCounter.counter = 800

// 9.5 类型属性
struct Structname {
   static var storedTypeProperty = " "
   static var computedTypeProperty: Int {
      // 这里返回一个 Int 值
   }
}
enum Enumname {
   static var storedTypeProperty = " "
   static var computedTypeProperty: Int {
      // 这里返回一个 Int 值
   }
}
class Classname {
   class var computedTypeProperty: Int {
      // 这里返回一个 Int 值
   }
}
// 获取和设置类型属性的值
struct StudMarks {
   static let markCount = 97
   static var totalCount = 0
   var InternalMarks: Int = 0 {
      didSet {
         if InternalMarks > StudMarks.markCount {
            InternalMarks = StudMarks.markCount
         }
         if InternalMarks > StudMarks.totalCount {
            StudMarks.totalCount = InternalMarks
         }
      }
   }
}
var stud1Mark1 = StudMarks()
var stud1Mark2 = StudMarks()
stud1Mark1.InternalMarks = 98
print(stud1Mark1.InternalMarks) 
stud1Mark2.InternalMarks = 87
print(stud1Mark2.InternalMarks)

// 10.构造过程
// 不写init有默认构造器
// 对某个类实例来说，它的常量属性只能在定义它的类的构造过程中修改；不能在子类中修改
struct Rectangle {
    var length: Double?  // 存储属性声明为可选时，将自动初始化为空 nil
    
    init(frombreadth breadth: Double) {
        length = breadth * 10
    }
    
    init(frombre bre: Double) {
        length = bre * 30
    }
    //不提供外部名字
    init(_ area: Double) {
        length = area
    }
}
// 调用不提供外部名字
let rectarea = Rectangle(180.0)
print("面积为: \(rectarea.length)")
// 调用不提供外部名字
let rearea = Rectangle(370.0)
print("面积为: \(rearea.length)")
// 调用不提供外部名字
let recarea = Rectangle(110.0)
print("面积为: \(recarea.length)")

// 10.1 结构体的逐一成员构造器
struct Rectangle {
    var length = 100.0, breadth = 200.0
}
let area = Rectangle(length: 24.0, breadth: 32.0)

print("矩形的面积: \(area.length)")
print("矩形的面积: \(area.breadth)")

// 10.2 构造器代理
// 构造器可以通过调用其它构造器来完成实例的部分构造过程
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}
// origin和size属性都使用定义时的默认值Point(x: 0.0, y: 0.0)和Size(width: 0.0, height: 0.0)：
let basicRect = Rect()
print("Size 结构体初始值: \(basicRect.size.width, basicRect.size.height) ")
print("Rect 结构体初始值: \(basicRect.origin.x, basicRect.origin.y) ")
// 将origin和size的参数值赋给对应的存储型属性
let originRect = Rect(origin: Point(x: 2.0, y: 2.0),
    size: Size(width: 5.0, height: 5.0))
print("Size 结构体初始值: \(originRect.size.width, originRect.size.height) ")
print("Rect 结构体初始值: \(originRect.origin.x, originRect.origin.y) ")
//先通过center和size的值计算出origin的坐标。
//然后再调用（或代理给）init(origin:size:)构造器来将新的origin和size值赋值到对应的属性中
let centerRect = Rect(center: Point(x: 4.0, y: 4.0),
    size: Size(width: 3.0, height: 3.0))
print("Size 结构体初始值: \(centerRect.size.width, centerRect.size.height) ")
print("Rect 结构体初始值: \(centerRect.origin.x, centerRect.origin.y) ")

// 可失败构造器
struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}
//通过该可失败构造器来构建一个Animal的对象，并检查其构建过程是否成功
// someCreature 的类型是 Animal? 而不是 Animal
let someCreature = Animal(species: "长颈鹿")
// 打印 "动物初始化为长颈鹿"
if let giraffe = someCreature {
    print("动物初始化为\(giraffe.species)")
}

// 枚举类型可失败构造器
enum TemperatureUnit {
    // 开尔文，摄氏，华氏
    case Kelvin, Celsius, Fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "C":
            self = .Celsius
        case "F":
            self = .Fahrenheit
        default:
            return nil
        }
    }
}
let fahrenheitUnit = TemperatureUnit(symbol: "F")
if fahrenheitUnit != nil {
    print("这是一个已定义的温度单位，所以初始化成功。")
}
let unknownUnit = TemperatureUnit(symbol: "X")
if unknownUnit == nil {
    print("这不是一个已定义的温度单位，所以初始化失败。")
}

// 可失败构造器init!
struct StudRecord {
    let stname: String
    
    init!(stname: String) {
        if stname.isEmpty {return nil }
        self.stname = stname
    }
}
let stmark = StudRecord(stname: "Runoob")
if let name = stmark {
    print("指定了学生名")
}
let blankname = StudRecord(stname: "")
if blankname == nil {
    print("学生名为空")
}

// 11. 可选链
class Person {
    var residence: Residence?
}
class Residence {
    var numberOfRooms = 1
}
let john = Person()
// 链接可选residence?属性，如果residence存在则取回numberOfRooms的值
if let roomCount = john.residence?.numberOfRooms {
    print("John 的房间号为 \(roomCount)。")
} else {
    print("不能查看房间号")
}

// 11.1 连接多层可选链
class Person {
    var residence: Residence?
}
// 定义了一个变量 rooms，它被初始化为一个Room[]类型的空数组
class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        return rooms[i]
    }
    func printNumberOfRooms() {
        print("房间号为 \(numberOfRooms)")
    }
    var address: Address?
}
// Room 定义一个name属性和一个设定room名的初始化器
class Room {
    let name: String
    init(name: String) { self.name = name }
}
// 模型中的最终类叫做Address
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if (buildingName != nil) {
            return buildingName
        } else if (buildingNumber != nil) {
            return buildingNumber
        } else {
            return nil
        }
    }
}
let john = Person()
if let johnsStreet = john.residence?.address?.street {
    print("John 的地址为 \(johnsStreet).")
} else {
    print("不能检索地址")
}

// 12. 扩展器
// 12.1 计算型属性
extension Int {
   var add: Int {return self + 100 }
   var sub: Int { return self - 10 }
   var mul: Int { return self * 10 }
   var div: Int { return self / 5 }
}
let addition = 3.add
print("加法运算后的值：\(addition)")
let subtraction = 120.sub
print("减法运算后的值：\(subtraction)")
let multiplication = 39.mul
print("乘法运算后的值：\(multiplication)")
let division = 55.div
print("除法运算后的值: \(division)")
let mix = 30.add + 34.sub
print("混合运算结果：\(mix)")

// 12.2 构造器扩展
struct sum {
    var num1 = 100, num2 = 200
}
struct diff {
    var no1 = 200, no2 = 100
}
struct mult {
    var a = sum()
    var b = diff()
}
extension mult {
    init(x: sum, y: diff) {
        _ = x.num1 + x.num2
        _ = y.no1 + y.no2
    }
}
let a = sum(num1: 100, num2: 200)
let b = diff(no1: 200, no2: 100)
let getMult = mult(x: a, y: b)
print("getMult sum\(getMult.a.num1, getMult.a.num2)")
print("getMult diff\(getMult.b.no1, getMult.b.no2)")

// 12.3 方法扩展
extension Int {
   func topics(summation: () -> ()) {
      for _ in 0..<self {
         summation() 
      }
   }
}  
4.topics({
   print("扩展模块内")       
})    
3.topics({
   print("内型转换模块内")       
})  


// 12.4 可变实例方法
extension Double {
   mutating func square() {
      let pi = 3.1415
      self = pi * self * self
   }
}
var Trial1 = 3.3
Trial1.square()
print("圆的面积为: \(Trial1)")
var Trial2 = 5.8
Trial2.square()
print("圆的面积为: \(Trial2)")
var Trial3 = 120.3
Trial3.square()
print("圆的面积为: \(Trial3)")

// 12.5 下标
extension Int {
   subscript(var multtable: Int) -> Int {
      var no1 = 1
      while multtable > 0 {
         no1 *= 10
         --multtable
      }
      return (self / no1) % 10
   }
}
print(12[0])
print(7869[1])
print(786543[2])

// 12.6 嵌套类型
extension Int {
   enum calc
   {
      case add
      case sub
      case mult
      case div
      case anything
   }

   var print: calc {
      switch self
      {
         case 0:
            return .add
         case 1:
            return .sub
         case 2:
            return .mult
         case 3:
            return .div
         default:
            return .anything
       }
   }
}
func result(numb: [Int]) {
   for i in numb {
      switch i.print {
         case .add:
            print(" 10 ")
          case .sub:
            print(" 20 ")
         case .mult:
         print(" 30 ")
         case .div:
         print(" 40 ")
         default:
         print(" 50 ")

      }
   }
}
result([0, 1, 2, 3, 4, 7])

// 13. 协议
protocol SomeProtocol {
    // 协议内容
}
// 要使类遵循某个协议，需要在类型名称后加上协议名称，中间以冒号:分隔，作为类型定义的一部分。遵循多个协议时，各协议之间用逗号,分隔。
struct SomeStructure: FirstProtocol, AnotherProtocol {
    // 结构体内容
}
// 如果类在遵循协议的同时拥有父类，应该将父类名放在协议名之前，以逗号分隔。
class SomeClass: SomeSuperClass, FirstProtocol, AnotherProtocol {
    // 类的内容
}

// 14. 泛型
// 定义一个交换两个变量的函数
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var numb1 = 100
var numb2 = 200
print("交换前数据:  \(numb1) 和 \(numb2)")
swapTwoValues(&numb1, &numb2)
print("交换后数据: \(numb1) 和 \(numb2)")
var str1 = "A"
var str2 = "B"
print("交换前数据:  \(str1) 和 \(str2)")
swapTwoValues(&str1, &str2)
print("交换后数据: \(str1) 和 \(str2)")