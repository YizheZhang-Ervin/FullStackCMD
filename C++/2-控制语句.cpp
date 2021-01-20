// 输入输出
cin >> i;
cout << i;

// 循环 - while
while(i<2){
    cout << i << i << endl;
    i++;
}
// 循环 - for
for(i=0;i<2;i++){
    clog<<i;
}
// 循环 - do while
do{
    cerr<<i;
    i++;
}while(i<2)

// 判断 - if else
if(i==2){
    cout<< i;
}else if(i>2){
    cout<< i;
}else{
    cout<< i;
}
// 判断 - switch case
switch(i){
    case 1:
        cout<<1;
        break;
    default:
        cout<<0;
}

// 异常捕获
try{
    cout<<0;
}catch(...){
    cout<<1;
}