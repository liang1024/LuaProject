

string1 = "Lua"
print("\"字符串 1 是\"",string1)
string2 = 'runoob.com'
print("字符串 2 是",string2)

string3 = [["Lua 教程"]]
print("字符串 3 是",string3)



print("--1.字符串全部转为大写字母。--")
string4="abc"
print(string.upper(string4))

print("--2.字符串全部转为小写字母--")
string5="ABC"
print(string.lower(string5))


print("--3.替换字符--")
--string.gsub(mainString,findString,replaceString,num)
--mainString为要替换的字符串， findString 为被替换的字符，replaceString 要替换的字符，num 替换次数（可以忽略，则全部替换）

string5="abcdabc"
print(string.gsub(string5,"abc","eee",1));  --次数为2时把后面的abc也会替换掉


print("--4.字符串反转--")
string5="abcde"
print(string.reverse(string5))


print("--5.format--")
--返回一个类似printf的格式化字符串
--print(string.format("the value is:%d",4))
string1 = "Lua"
string2 = "Tutorial"
number1 = 10
number2 = 20
-- 基本字符串格式化
print(string.format("基本格式化 %s %s",string1,string2))
-- 日期格式化
date = 2; month = 1; year = 2014
print(string.format("日期格式化 %02d/%02d/%03d", date, month, year))
-- 十进制格式化
print(string.format("%.4f",1/3))

--string.char(arg) 和 string.byte(arg[,int])

print("--6.string.char(arg) 和 string.byte(arg[,int])--")
--char 将整型数字转成字符并连接， byte 转换字符为整数值(可以指定某个字符，默认第一个字符)。

-- 整数 ASCII 码转换为字符
print(string.char(97))

print(string.char(97,98,99,100))

print(string.byte("ABCD",4))

print(string.byte("ABCD"))

-- 转换末尾第二个字符
print(string.byte("Lua",-2))

print("--7.string.len(arg)--")

--计算字符串长度。
print(string.len("abc"))


print("-- 8.string.rep(string, n))--")
--返回字符串string的n个拷贝

print(string.rep("abcd",4))  --4次


print("-- 9.    ..   链接两个字符串  --")

print("www.runoob".."com")
string1 = "www."
string2 = "runoob"
string3 = ".com"
-- 使用 .. 进行字符串连接
print("连接字符串",string1..string2..string3)


print("-- 10. string.find() 字符串查找  --")


string = "Lua Tutorial"

print(string.find(string,"Tutorial"))  --打印出所找到的起始点与终点下标




















