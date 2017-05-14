
print("---1.(»ù±¾Êı¾İÀàĞÍ)---")

print(type("Hello world"))      --string
print(type(10.4*3))             --number
print(type(print))              --function
print(type(type))               --function
print(type(true))               --boolean
print(type(nil))                --nil
print(type(type(X)))            --string


print("---2.nil(¿Õ)---")

print(type(a))

tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end



print("---3.boolean£¨²¼¶û£©---")


print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("ÖÁÉÙÓĞÒ»¸öÊÇ true")
else
    print("false ºÍ nil ¶¼Îª false!")
end


print("---4.number£¨Êı×Ö£©---")

print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))


print("---5.string£¨×Ö·û´®)--")


string1 = "this is string1"
string2 = 'this is string2'


html = [[
<html>
<head></head>
<body>
    <a href="http://www.w3cschool.cc/">w3cschool²ËÄñ½Ì³Ì</a>
</body>
</html>
]]

print(html)


--[[
ÔÚ¶ÔÒ»¸öÊı×Ö×Ö·û´®ÉÏ½øĞĞËãÊõ²Ù×÷Ê±£
¬Lua »á³¢ÊÔ½«Õâ¸öÊı×Ö×Ö·û´®×ª³ÉÒ»¸öÊı×Ö:
--]]

print("2" + 6)

print("2" + "6")

print("2 + 6")

print("-2e2" * "6")


--print("error" + 1)  --»á±£±¨´í
--[[
lua: Lua_DataType.lua:85: attempt to perform arithmetic on a string value
stack traceback:
	Lua_DataType.lua:85: in main chunk
	[C]: ?
--]]

print("a" .. 'b')   --×Ö·û´®Á¬½ÓÊ¹ÓÃµÄÊÇ ..

print(157 .. 428)


--Ê¹ÓÃ # À´¼ÆËã×Ö·û´®µÄ³¤¶È£¬·ÅÔÚ×Ö·û´®Ç°Ãæ£¬

len = "www.w3cschool.cc"
print(#len)

print(#"www.w3cschool.cc")



print("---6.table£¨±í£©--")

--[[
ÔÚ Lua Àï£¬table µÄ´´½¨ÊÇÍ¨¹ı"¹¹Ôì±í´ïÊ½"À´Íê³É£¬
×î¼òµ¥¹¹Ôì±í´ïÊ½ÊÇ{}£
ÓÃÀ´´´½¨Ò»¸ö¿Õ±í¡£Ò²¿ÉÒÔÔÚ±íÀïÌí¼ÓÒ»Ğ©Êı¾İ£¬Ö±½Ó³õÊ¼»¯±í:
--]]

-- ´´½¨Ò»¸ö¿ÕµÄ table
local tbl1 = {}

-- Ö±½Ó³õÊ¼±í
local tbl2 = {"apple", "pear", "orange", "grape"}


--Lua ÖĞµÄ±í£¨table£©ÆäÊµÊÇÒ»¸ö"¹ØÁªÊı×é"£¨associative arrays£©£¬Êı×éµÄË÷Òı¿ÉÒÔÊÇÊı×Ö»òÕßÊÇ×Ö·û´®¡£

-- table_test.lua ½Å±¾ÎÄ¼ş
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end



--²»Í¬ÓÚÆäËûÓïÑÔµÄÊı×é°Ñ 0 ×÷ÎªÊı×éµÄ³õÊ¼Ë÷Òı£¬ÔÚ Lua Àï±íµÄÄ¬ÈÏ³õÊ¼Ë÷ÒıÒ»°ãÒÔ 1 ¿ªÊ¼¡£

local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("Key", key)
end

--table ²»»á¹Ì¶¨³¤¶È´óĞ¡£¬ÓĞĞÂÊı¾İÌí¼ÓÊ± table ³¤¶È»á×Ô¶¯Ôö³¤£¬Ã»³õÊ¼µÄ table ¶¼ÊÇ nil¡£

a3 = {}
for i = 1, 10 do
    a3[i] = i
end
a3["key"] = "val"
print(a3["key"])
print(a3["none"])

print("---6.function£¨º¯Êı£©---")
--ÔÚ Lua ÖĞ£¬º¯ÊıÊÇ±»¿´×÷ÊÇ"µÚÒ»ÀàÖµ£¨First-Class Value£©"£¬º¯Êı¿ÉÒÔ´æÔÚ±äÁ¿Àï:

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


--function ¿ÉÒÔÒÔÄäÃûº¯Êı£¨anonymous function£©µÄ·½Ê½Í¨¹ı²ÎÊı´«µİ:

function anonymous(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v))
    end
end
tab = { key1 = "val1", key2 = "val2" }

anonymous(tab, function(key, val)
    return key .. " = " .. val
end)

print("---7.thread£¨Ïß³Ì£©©--")
print("---8.userdata£¨×Ô¶¨ÒåÀàĞÍ£©-")
















