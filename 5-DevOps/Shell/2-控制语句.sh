# 选择
## if then
if condition
then
    command1 
    command2
    ...
    commandN 
fi
## if then else
if condition
then
    command1 
    command2
    ...
    commandN
else
    command
fi
## if then elif else
if condition1
then
    command1
elif condition2 
then 
    command2
else
    commandN
fi
## case
case 值 in
模式1)
    command1
    command2
    ...
    commandN
    ;;
模式2）
    command1
    command2
    ...
    commandN
    ;;
esac

# 循环
## for
for var in item1 item2 ... itemN
do
    command1
    command2
    ...
    commandN
done
## while
while condition
do
    command
done
### 无限循环1
while :
do
    command
done
### 无限循环2
while true
do
    command
done
### 无限循环3
for (( ; ; ))

## until
until condition
do
    command
done