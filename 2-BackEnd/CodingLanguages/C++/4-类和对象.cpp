class BBB{
    public:
        virtual int virtualA1() = 0;
}
// 类定义
class AAA: public BBB
{
   public:
      void setA1( double a1 );
      double getA1( void );
      AAA();  // 构造函数
      ~AAA();  // 析构函数
      friend double printA1(AAA aaa);  // 友元函数不是任何类的成员函数
      static void staticA1();
      int virtualA1(){
          cout<<"implement virtual method";
      }
   private:
      double a1;
};

// 类方法在外部定义
void AAA::setA1(double val){
    a1 = val;
}

double AAA::getA1(void){
    return a1;
}

void AAA::staticA1(){
    cout<<"static method";
}

// 友元函数: 定义在类外部，但有权访问类的所有私有（private）成员和保护（protected）成员
double printA1(AAA aaa){
    cout<<aaa.a1;
}

// 对象定义
int main(){
    double temp = 0.0;
    AAA aaa;
    aaa.setA1(5.0);
    temp = aaa.getA1();
    cout<< temp;
}