// 接口
interface BBB{
    void bbMethod();
}

// 类定义
class AAA : BBB
{
    private double a1;
    public void setA1( double a1 ){
        a1 = val;
    };
    public double getA1( void ){
        return a1;
    };
    public AAA(val){  // 构造函数
        Console.writeLine("construct");
        a1 = val;
    };
    public void bbMethod(){  // 实现接口
        Console.writeLine("implement bbMehod");
    }
    static void Main(string[] args) // 静态方法
    {
         AAA aaa = new AAA(10.0);
         Console.WriteLine(aaa.getLength());
         aaa.setLength(6.0);
         Console.WriteLine(aaa.getLength());
         Console.ReadKey();
    }
};

// 对象定义
int main(){
    double temp = 0.0;
    AAA aaa;
    aaa.setA1(5.0);
    temp = aaa.getA1();
    cout<< temp;
}