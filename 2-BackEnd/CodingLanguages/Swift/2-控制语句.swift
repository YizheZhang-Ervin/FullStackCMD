// 1. 输入输出
readline()
print()

// 2. 选择语句
// 2.1
if boolean_expression {
   /* 如果布尔表达式为真将执行的语句 */
}

// 2.2
if boolean_expression {
   /* 如果布尔表达式为真将执行的语句 */
} else {
   /* 如果布尔表达式为假将执行的语句 */
}

// 2.3
if boolean_expression_1 {
   /* 如果 boolean_expression_1 表达式为 true 则执行该语句 */
} else if boolean_expression_2 {
   /* 如果 boolean_expression_2 表达式为 true 则执行该语句 */
} else if boolean_expression_3 {
   /* 如果 boolean_expression_3 表达式为 true 则执行该语句 */
} else {
   /* 如果以上所有条件表达式都不为 true 则执行该语句 */
}

// 2.4
if boolean_expression_1 {
   /* 当 boolean_expression_1 表达式 true 时执行 */
   if boolean_expression_2 {
      /* 当 boolean_expression_1 表达式 true 时执行 */
   }
}

// 2.5
switch expression {
   case expression1  :
      statement(s)
      fallthrough /* 可选 */
   case expression2, expression3  :
      statement(s)
      fallthrough /* 可选 */
  
   default : /* 可选 */
      statement(s);
}

// 2.6
Exp1 ? Exp2 : Exp3;

// 3.循环语句
// 3.1
for index in var {
   循环体
}

// 3.2
while condition
{
   statement(s)
}

// 3.3
for init; condition; increment{
   循环体
}

// 3.4
repeat
{
   statement(s);
}while( condition );

// 3.5
continue // 进下个循环
break // 中断循环
fallthrough //结束case