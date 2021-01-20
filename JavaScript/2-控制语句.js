// 输出
console.log("1");
window.alert("2");
document.write("3");

// 循环 - while
while(i<2){
    console.log(i);
    i++;
}
// 循环 - for
for(let i=0;i<2;i++){
    console.log(i);
}
// 循环 - do while
do{
    console.log(i);
    i++;
}while(i<2)

// 判断 - if else
if(i==2){
    console.log(i);
}else if(i>2){
    console.log(i);
}else{
    console.log(i);
}
// 判断 - switch case
switch(i){
    case 1:
        console.log(1);
        break;
    default:
        console.log(0);
}

// 异常捕获
try{
    console.log(0);
}catch(err){
    console.log(1);
}finally{
    console.log(2);
}