// 输入输出
Console.ReadLine();
Console.WriteLine(i);
Console.ReadKey();

// 循环 - while
while(i<2){
    Console.WriteLine(i);
    i++;
}
// 循环 - for
for(i=0;i<2;i++){
    Console.WriteLine(i);
}
// 循环 - foreach
foreach(int ele in i){
    Console.WriteLine(ele);
}
// 循环 - do while
do{
    Console.WriteLine(i);
    i++;
}while(i<2)

// 判断 - if else
if(i==2){
    Console.WriteLine(i);
}else if(i>2){
    Console.WriteLine(i+1);
}else{
    Console.WriteLine(i+2);
}
// 判断 - switch case
switch(i){
    case 1:
        Console.WriteLine(i);
        break;
    default:
        Console.WriteLine(i);
}

// 异常捕获
try{
    Console.WriteLine(i);
}catch(Exception e){
    Console.WriteLine(i+1);
}finally{
    Console.WriteLine(i+2);
}