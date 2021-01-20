/*
    编译运行 
    g++ xx.cpp
    ./xx.out
*/

// 导入包
#include <iostream>
// 命名空间
using namespace std;

// 自定义函数
int example(char s){
    return s+"ok";
}
// 内联函数: 编译时，编译器会把该函数的代码副本放置在每个调用该函数的地方(类中函数默认inline)
inline char bb(){
    return "bb";
}

// 主函数
int main(){
    example("001");
}
