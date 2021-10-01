// 数据类型: bool/char/int/float/double/void/wchar_t
// 类型转换: static_cast<type>、const_cast<type>、dynamic_cast<type>、reinterpret_cast<type>
// 已有类型取新名: typedef type newName;  
// 变量定义
bool a1 = true;
char a2 = "0";
int a3 = 0;
float a4 = 0.1;
double a5 = 0.1;
extern wchar_t a6 = "0";  // extern表示定义在其他文件中

int& a3Ref = a3;  // 引用变量定义

int *a3Point// 指针变量声明
a3Point = &a3// 指针变量存储地址

int b1[2] = {1,2};  // 确定长度整数数组
int b2[] = {1,2,3};  // 不确定长度整数数组
char b3[2] = {"a","b"};  //确定长度字符数组
char b4[] = "abab";  //不确定长度字符数组

enum color { red, green, blue } c;  // 枚举类型

// 常量定义
#define C1 10; // 预处理器
const int C2 = 10;

// 数据结构
struct DDD
{
   char  d1[50];
   int   d2;
   bool d3;
} ddd;