# 执行
## 方法1:
chmod +x ./xx.sh  #使脚本具有执行权限
./xx.sh  #执行脚本

## 方法2：
/bin/sh test.sh

# 变量
your_name="xx"
for file in `ls /etc`
for file in $(ls /etc)
## 使用变量
echo $your_name
echo ${your_name}
## 删除变量
unset variable_name
## 只读变量
readonly your_name2

# 字符串
## 单引号
a = 'xx'
## 双引号
b = "xx"
## 拼接
c1='hello, '$your_name' !'
c2='hello, ${your_name} !'
## 字符串长度
string="abcd"
echo ${#string} #输出 4
## 子字符串
string="runoob is a great site"
echo ${string:1:4} # 输出 unoo
## 查字符串
string="runoob is a great site"
echo `expr index "$string" io`  # 输出 4

# 数组
array_name=(value0 value1 value2 value3)
## 定义数组
array_name[n]=valuen
## 读取数组
valuen=${array_name[n]}
## 数组长度
### 取得数组元素的个数
length=${#array_name[@]}
length=${#array_name[*]}
### 取得数组单个元素的长度
lengthn=${#array_name[n]}

# 多行注释
:<<EOF
注释内容...
注释内容...
注释内容...
EOF