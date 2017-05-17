


--¶ÔÖ¸¶¨µÄ±íÉèÖÃÔª±í

mytable = {}                          -- ÆÕÍ¨±í
mymetatable = {}                      -- Ôª±í
setmetatable(mytable,mymetatable)     -- °Ñ mymetatable ÉèÎª mytable µÄÔª±í

--ÒÔÉÏ´úÂëÒ²¿ÉÒÔÖ±½ÓĞ´³ÉÒ»ĞĞ£º
mytable = setmetatable({},{})


print("--__index Ôª·½·¨--")

other = { foo = 3 }
t = setmetatable({}, { __index = other })
print(t.foo)
print(t.bar)

--[[
Èç¹û__index°üº¬Ò»¸öº¯ÊıµÄ»°£¬Lua¾Í»áµ÷ÓÃÄÇ¸öº¯Êı£¬tableºÍ¼ü»á×÷Îª²ÎÊı´«µİ¸øº¯Êı¡£
__index Ôª·½·¨²é¿´±íÖĞÔªËØÊÇ·ñ´æÔÚ£¬Èç¹û²»´æÔÚ£¬·µ»Ø½á¹ûÎª nil£»Èç¹û´æÔÚÔòÓÉ __index ·µ»Ø½á¹û¡£
--]]

mytable = setmetatable({key1 = "value1"}, {
  __index = function(mytable, key)
    if key == "key2" then
      return "metatablevalue"
    else
      return nil
    end
  end
})

print(mytable.key1,mytable.key2)

--[[
ÊµÀı½âÎö£º
mytable ±í¸³ÖµÎª {key1 = "value1"}¡£
mytable ÉèÖÃÁËÔª±í£¬Ôª·½·¨Îª __index¡£
ÔÚmytable±íÖĞ²éÕÒ key1£¬Èç¹ûÕÒµ½£¬·µ»Ø¸ÃÔªËØ£¬ÕÒ²»µ½Ôò¼ÌĞø¡£
ÔÚmytable±íÖĞ²éÕÒ key2£¬Èç¹ûÕÒµ½£¬·µ»Ø metatablevalue£¬ÕÒ²»µ½Ôò¼ÌĞø¡£
ÅĞ¶ÏÔª±íÓĞÃ»ÓĞ__index·½·¨£¬Èç¹û__index·½·¨ÊÇÒ»¸öº¯Êı£¬Ôòµ÷ÓÃ¸Ãº¯Êı¡£
Ôª·½·¨ÖĞ²é¿´ÊÇ·ñ´«Èë "key2" ¼üµÄ²ÎÊı£¨mytable.key2ÒÑÉèÖÃ£©£¬Èç¹û´«Èë "key2" ²ÎÊı·µ»Ø "metatablevalue"£¬·ñÔò·µ»Ø mytable ¶ÔÓ¦µÄ¼üÖµ¡£
--]]

--¿ÉÒÔ½«ÒÔÉÏ´úÂë¼òµ¥Ğ´³É£º
mytable = setmetatable({key1 = "value1"}, { __index = { key2 = "metatablevalue" } })
print(mytable.key1,mytable.key2)


print("--__newindex Ôª·½·¨--")
mymetatable = {}
mytable = setmetatable({key1 = "value1"}, { __newindex = mymetatable })

print(mytable.key1)

mytable.newkey = "ĞÂÖµ2"
print(mytable.newkey,mymetatable.newkey)

mytable.key1 = "ĞÂÖµ1"
print(mytable.key1,mymetatable.key1)


mytable = setmetatable({key1 = "value1"}, {
  __newindex = function(mytable, key, value)
		rawset(mytable, key, "\""..value.."\"")

  end
})

mytable.key1 = "new value"
mytable.key2 = 4

print(mytable.key1,mytable.key2)


print("--Îª±íÌí¼Ó²Ù×÷·¨--")

-- ¼ÆËã±íÖĞ×î´óÖµ£¬table.maxnÔÚLua5.2ÒÔÉÏ°æ±¾ÖĞÒÑÎŞ·¨Ê¹ÓÃ
-- ×Ô¶¨Òå¼ÆËã±íÖĞ×î´óÖµº¯Êı table_maxn
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- Á½±íÏà¼Ó²Ù×÷
mytable = setmetatable({ 1, 2, 3 }, {
  __add = function(mytable, newtable)
    for i = 1, table_maxn(newtable) do
      table.insert(mytable, table_maxn(mytable)+1,newtable[i])
    end
    return mytable
  end
})

secondtable = {4,5,6}

mytable = mytable + secondtable
	for k,v in ipairs(mytable) do
print(k,v)
end


print("--__call Ôª·½·¨--")

-- ¼ÆËã±íÖĞ×î´óÖµ£¬table.maxnÔÚLua5.2ÒÔÉÏ°æ±¾ÖĞÒÑÎŞ·¨Ê¹ÓÃ
-- ×Ô¶¨Òå¼ÆËã±íÖĞ×î´óÖµº¯Êı table_maxn
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- ¶¨ÒåÔª·½·¨__call
mytable = setmetatable({10}, {
  __call = function(mytable, newtable)
	sum = 0
	for i = 1, table_maxn(mytable) do
		sum = sum + mytable[i]
	end
    for i = 1, table_maxn(newtable) do
		sum = sum + newtable[i]
	end
	return sum
  end
})
newtable = {10,20,30}
print(mytable(newtable))



print("--__tostring Ôª·½·¨¨--")

mytable = setmetatable({ 10, 20, 30 }, {
  __tostring = function(mytable)
    sum = 0
    for k, v in pairs(mytable) do
		sum = sum + v
	end
    return "±íËùÓĞÔªËØµÄºÍÎª " .. sum
  end
})
print(mytable)



