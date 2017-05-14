
print("---1.(������������)---")

print(type("Hello world"))      --string
print(type(10.4*3))             --number
print(type(print))              --function
print(type(type))               --function
print(type(true))               --boolean
print(type(nil))                --nil
print(type(type(X)))            --string


print("---2.nil(��)---")

print(type(a))

tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end



print("---3.boolean��������---")


print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("������һ���� true")
else
    print("false �� nil ��Ϊ false!")
end


print("---4.number�����֣�---")

print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))


print("---5.string���ַ���)--")


string1 = "this is string1"
string2 = 'this is string2'


html = [[
<html>
<head></head>
<body>
    <a href="http://www.w3cschool.cc/">w3cschool����̳�</a>
</body>
</html>
]]

print(html)


--[[
�ڶ�һ�������ַ����Ͻ�����������ʱ�
�Lua �᳢�Խ���������ַ���ת��һ������:
--]]

print("2" + 6)

print("2" + "6")

print("2 + 6")

print("-2e2" * "6")


--print("error" + 1)  --�ᱣ����
--[[
lua: Lua_DataType.lua:85: attempt to perform arithmetic on a string value
stack traceback:
	Lua_DataType.lua:85: in main chunk
	[C]: ?
--]]

print("a" .. 'b')   --�ַ�������ʹ�õ��� ..

print(157 .. 428)


--ʹ�� # �������ַ����ĳ��ȣ������ַ���ǰ�棬

len = "www.w3cschool.cc"
print(#len)

print(#"www.w3cschool.cc")



print("---6.table����--")

--[[
�� Lua �table �Ĵ�����ͨ��"������ʽ"����ɣ�
��򵥹�����ʽ��{}�
��������һ���ձ�Ҳ�����ڱ������һЩ���ݣ�ֱ�ӳ�ʼ����:
--]]

-- ����һ���յ� table
local tbl1 = {}

-- ֱ�ӳ�ʼ��
local tbl2 = {"apple", "pear", "orange", "grape"}


--Lua �еı�table����ʵ��һ��"��������"��associative arrays����������������������ֻ������ַ�����

-- table_test.lua �ű��ļ�
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end



--��ͬ���������Ե������ 0 ��Ϊ����ĳ�ʼ�������� Lua ����Ĭ�ϳ�ʼ����һ���� 1 ��ʼ��

local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("Key", key)
end

--table ����̶����ȴ�С�������������ʱ table ���Ȼ��Զ�������û��ʼ�� table ���� nil��

a3 = {}
for i = 1, 10 do
    a3[i] = i
end
a3["key"] = "val"
print(a3["key"])
print(a3["none"])

print("---6.function��������---")
--�� Lua �У������Ǳ�������"��һ��ֵ��First-Class Value��"���������Դ��ڱ�����:

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


--function ����������������anonymous function���ķ�ʽͨ����������:

function anonymous(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v))
    end
end
tab = { key1 = "val1", key2 = "val2" }

anonymous(tab, function(key, val)
    return key .. " = " .. val
end)

print("---7.thread���̣߳��--")
print("---8.userdata���Զ������ͣ�-")
















