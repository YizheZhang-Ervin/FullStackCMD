// 判断 - if
if (布尔表达式 1) true else false

if(布尔表达式 1){
   // 如果布尔表达式 1 为 true 则执行该语句块
}else if(布尔表达式 2){
   // 如果布尔表达式 2 为 true 则执行该语句块
}else {
   // 如果以上条件都为 false 执行该语句块
}

// 循环 - while
while(condition)
{
   statement(s);
}
// 循环 - do while
do {
   statement(s);
} while( condition );
// 循环 - for
for( var x <- Range ){
   statement(s);
}
// 循环 - for
for( x <- List ){
   statement(s);
}
// 循环 - for
for( var x <- List if condition1; if condition2...){
   statement(s);
}
// 循环 - for
var retVal = for{ var x <- List
     if condition1; if condition2...
}yield x
1 to 10 或1.to(10)包含左右
Range(1,10)左闭右开
1 until 10 或1.until(10)左闭右开

// 循环 - foreach
xs.foreach(x=>println(x))