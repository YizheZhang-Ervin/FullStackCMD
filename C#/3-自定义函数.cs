/*
    编译运行: csc xx.cs
*/

// 导入包
using System;
// 命名空间
namespace xxx;

class AAA
{
    public int example(int a1)
    {
       return a1;
    }
   // 匿名方法
    int a3 = delegate(int a2)
    {
        Console.WriteLine(a2);
    };
}

class BBB{
    static void Main(string[] args){
        AAA aaa = new AAA();
        aaa.example(5);
    }
}