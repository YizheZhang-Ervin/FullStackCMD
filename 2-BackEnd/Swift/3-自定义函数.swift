// 1.函数定义
func funcname(形参名:类型) -> returntype
{
   return parameters
}

// 元组返回值
func funcname(形参名:类型) -> (返回值名:returntype,返回值名2:returntype2)
{
   return parameters
}
// 可选元组返回值
func funcname(形参名:类型) -> (返回值名:returntype,返回值名2:returntype2)?
{
   return parameters
}

// 无返回值函数
func funcname(形参名:类型)
{
   statements
}

// 外部参数名
// 你可以在局部参数名前指定外部参数名，中间以空格分隔，外部参数名用于在函数调用时传递给函数的参数
func funcname(firstArg a: Int, secondArg b: Int) -> Int {
   statements
}
funcname(firstArg:5, secondArg:3)

// 可变参数(接收0或多个值)
func funcname<N>(xxpara: N...){
    statements
}
funcname(xxpara: 4,3,5)

// 函数内可改的参数
// 当传入的参数作为输入输出参数时，需要在参数名前加 & 符，表示这个值可以被函数修改
func funcname(_ name: inout String){
    statements
}
var name = 1
funcname(&name)

// 使用函数类型
func sum(a: Int, b: Int) -> Int {
   return a + b
}
var addition: (Int, Int) -> Int = sum

// 将函数作为参数传递给另外一个参数
func another(addition: (Int, Int) -> Int, a: Int, b: Int) {
    print("\(addition(a, b))")
}

// 函数嵌套
// 第一个箭头是外部函数calcDecrement的返回值
// 第二个箭头是内部函数的返回值
func calcDecrement(forDecrement total: Int) -> () -> Int {
   var overallDecrement = 0
   func decrementer() -> Int {
      overallDecrement -= total
      return overallDecrement
   }
   return decrementer
}
let decrem = calcDecrement(forDecrement: 30)
print(decrem())

// 调用
funcname(xx: "xxx"))

// 2. 闭包
{(parameters1,parameters2) -> returntype in
   statements
}

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = names.sorted(by: backwards)

// 参数名称缩写
let names = ["AT", "AE", "D", "S", "BE"]
var reversed = names.sorted( by: { $0 > $1 } )
print(reversed)

// 运算符函数
let names = ["AT", "AE", "D", "S", "BE"]
var reversed = names.sorted(by: >)
print(reversed)

// 尾随闭包
func someFunctionThatTakesAClosure(closure: () -> Void) {
    // 函数体部分
}
// 以下是不使用尾随闭包进行函数调用
someFunctionThatTakesAClosure({
    // 闭包主体部分
})
// 以下是使用尾随闭包进行函数调用
someFunctionThatTakesAClosure() {
  // 闭包主体部分
}

// 捕获值
func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}
let incrementByTen = makeIncrementor(forIncrement: 10)
// 返回的值为10
print(incrementByTen())
// 返回的值为20
print(incrementByTen())
// 返回的值为30
print(incrementByTen())

// 闭包是引用类型
// 函数/闭包赋值给一个常量还是变量，实际上都是将常量/变量的值设置为对应函数/闭包的引用
func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}
let incrementByTen = makeIncrementor(forIncrement: 10)
// 返回的值为10
incrementByTen()
// 返回的值为20
incrementByTen()
// 返回的值为30
incrementByTen()
// 返回的值为40
incrementByTen()
let alsoIncrementByTen = incrementByTen
// 返回的值也为50
print(alsoIncrementByTen())

// 3. 下标脚本
// 可以传入不同参数类型来重载
class daysofaweek {
    private var days = ["Sunday", "Monday", "Tuesday", "Wednesday",
        "Thursday", "Friday", "saturday"]
    subscript(index: Int) -> String {
        get {
            return days[index]   // 声明下标脚本的值
        }
        set(newValue) {
            self.days[index] = newValue   // 执行赋值操作
        }
    }
}
var p = daysofaweek()
print(p[0])

// 4. 访问控制
public class SomePublicClass {}
internal class SomeInternalClass {}
fileprivate class SomeFilePrivateClass {}
private class SomePrivateClass {}
 
public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction() {}
private func somePrivateFunction() {}