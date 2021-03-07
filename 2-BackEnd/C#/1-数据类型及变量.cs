// 基本数据类型: bool/byte/char/decimal/double/float/int/long/sbyte/short/uint/ulong/ushort
// 引用数据类型: object/dynamic/string(字符串含@则/不转义)
// 类型转换: ToBoolean、ToByte、ToChar、ToDouble、ToDecimal、ToDateTime、ToString
// 变量定义
int a1 = 0;
double? a2 = 3.14157;  //可空类型
double a3 = a2 ?? 5.34;  //合并运算符

string a4 = "ab"  // 引用类型

double[] a5 = new double[10];  // 浮点型数组
string[] a6 = { "aa", "bb", "cc", "dd" };  // 字符串数组
char[] a7 = { 'H', 'e', 'l', 'l','o' };  // 字符数组

int* aptr;  // 指针类型

enum Days { Sun, Mon, tue, Wed, thu, Fri, Sat };  // 枚举类型

// 常量定义
#define C1; // 预处理器
const int C2 = 10;

// 数据结构
struct DDD
{
   public char  d1[50];
   public int   d2;
   public bool d3;
};