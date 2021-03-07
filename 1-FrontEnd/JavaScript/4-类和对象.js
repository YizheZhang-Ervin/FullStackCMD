class BBB{

}

class AAA extends BBB{
    construct(val){
        this.a1 = val;
    }
    getA1(){
        return this.a1;
    }
    setA1(val){
        this.a1 = val;
    }
    static staticA1(){
        return "static method";
    }
}

let aaa = new AAA(5);
console.log(aaa.getA1());
aaa.setA1(2);
console.log(aaa.getA1());