
--while( true )
--do
--   print("循环将永远执行下去")
--end



--while(condition)
--do
--   statements
--end
--  condition?true条件为true时会循环下去


print("-----while------")
a=10
while( a < 20 )
do
   print("a 的值为:", a)
   a = a+1
end


print("-----for------")

--var从exp1变化到exp2，每次变化以exp3为步长递增var，并执行一次"执行体"。exp3是可选的，如果不指定，默认为1。

--for var=exp1,exp2,exp3 do
--    <执行体>
--end


for i=10,1,-1 do
    print(i)
end


--for的三个表达式在循环开始前一次性求值，以后不再进行求值。比如上面的f(x)只会在循环开始前执行一次，其结果用在后面的循环中。

function f(x)
    print("function")
    return x*2
end

for i=1,f(5) do print(i)
end


--泛型for循环

days = {"Suanday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}
for i,v in ipairs(days) do  print(v) end




--条件判断语句（condition）为 true 才会停止执行

print("-----repeat until------")


--[ 变量定义 --]
a = 10
--[ 执行循环 --]
repeat
   print("a的值为:", a)
   a = a + 1
until( a > 15 )


print("-----嵌套循环------")


j =2
for i=2,10 do
   for j=2,(i/j) , 2 do
      if(not(i%j))
      then
         break
      end
      if(j > (i/j))then
         print("i 的值为：",i)
      end
   end
end


print("-----break------")


--[ 定义变量 --]
a = 10

--[ while 循环 --]
while( a < 20 )
do
   print("a 的值为:", a)
   a=a+1
   if( a > 15)
   then
      --[ 使用 break 语句终止循环 --]
      break
   end
end







