# 输入输出
i = input()
print(i)

# 循环 - while
while i<2:
    print(i)
    i+=1
# 循环 - for
for i in range(10):
    print(i)

# 判断 - if else
if i==2:
    print(i)
elif i>2:
    print(i+1)
else:
    print(i+2)

# 异常捕获
try:
    print(i)
except Exception:
    print(i+1)