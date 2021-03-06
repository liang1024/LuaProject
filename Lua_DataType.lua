
print("---1.(基本数据类型)---")

print(type("Hello world"))      --string
print(type(10.4*3))             --number
print(type(print))              --function
print(type(type))               --function
print(type(true))               --boolean
print(type(nil))                --nil
print(type(type(X)))            --string


print("---2.nil(空)---")

print(type(a))

tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end



print("---3.boolean（布尔）---")


print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为 false!")
end


print("---4.number（数字）---")

print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))


print("---5.string（字符串)--")


string1 = "this is string1"
string2 = 'this is string2'


html = [[
<html>
<head></head>
<body>
    <a href="http://www.w3cschool.cc/">w3cschool菜鸟教程</a>
</body>
</html>
]]

print(html)


--[[
在对一个数字字符串上进行算术操作时�
琇ua 会尝试将这个数字字符串转成一个数字:
--]]

print("2" + 6)

print("2" + "6")

print("2 + 6")

print("-2e2" * "6")


--print("error" + 1)  --会保报错
--[[
lua: Lua_DataType.lua:85: attempt to perform arithmetic on a string value
stack traceback:
	Lua_DataType.lua:85: in main chunk
	[C]: ?
--]]

print("a" .. 'b')   --字符串连接使用的是 ..

print(157 .. 428)


--使用 # 来计算字符串的长度，放在字符串前面，

len = "www.w3cschool.cc"
print(#len)

print(#"www.w3cschool.cc")



print("---6.table（表）--")

--[[
在 Lua 里，table 的创建是通过"构造表达式"来完成，
最简单构造表达式是{}�
用来创建一个空表。也可以在表里添加一些数据，直接初始化表:
--]]

-- 创建一个空的 table
local tbl1 = {}

-- 直接初始表
local tbl2 = {"apple", "pear", "orange", "grape"}


--Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字或者是字符串。

-- table_test.lua 脚本文件
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end



--不同于其他语言的数组把 0 作为数组的初始索引，在 Lua 里表的默认初始索引一般以 1 开始。

local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("Key", key)
end

--table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。

a3 = {}
for i = 1, 10 do
    a3[i] = i
end
a3["key"] = "val"
print(a3["key"])
print(a3["none"])

print("---6.function（函数）---")
--在 Lua 中，函数是被看作是"第一类值（First-Class Value）"，函数可以存在变量里:

function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))


--function 可以以匿名函数（anonymous function）的方式通过参数传递:

function anonymous(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v))
    end
end
tab = { key1 = "val1", key2 = "val2" }

anonymous(tab, function(key, val)
    return key .. " = " .. val
end)

print("---7.thread（线程）�--")
print("---8.userdata（自定义类型）-")
















