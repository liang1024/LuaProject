


--��ָ���ı�����Ԫ��

mytable = {}                          -- ��ͨ��
mymetatable = {}                      -- Ԫ��
setmetatable(mytable,mymetatable)     -- �� mymetatable ��Ϊ mytable ��Ԫ��

--���ϴ���Ҳ����ֱ��д��һ�У�
mytable = setmetatable({},{})


print("--__index Ԫ����--")

other = { foo = 3 }
t = setmetatable({}, { __index = other })
print(t.foo)
print(t.bar)

--[[
���__index����һ�������Ļ���Lua�ͻ�����Ǹ�������table�ͼ�����Ϊ�������ݸ�������
__index Ԫ�����鿴����Ԫ���Ƿ���ڣ���������ڣ����ؽ��Ϊ nil������������� __index ���ؽ����
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
ʵ��������
mytable ��ֵΪ {key1 = "value1"}��
mytable ������Ԫ��Ԫ����Ϊ __index��
��mytable���в��� key1������ҵ������ظ�Ԫ�أ��Ҳ����������
��mytable���в��� key2������ҵ������� metatablevalue���Ҳ����������
�ж�Ԫ����û��__index���������__index������һ������������øú�����
Ԫ�����в鿴�Ƿ��� "key2" ���Ĳ�����mytable.key2�����ã���������� "key2" �������� "metatablevalue"�����򷵻� mytable ��Ӧ�ļ�ֵ��
--]]

--���Խ����ϴ����д�ɣ�
mytable = setmetatable({key1 = "value1"}, { __index = { key2 = "metatablevalue" } })
print(mytable.key1,mytable.key2)


print("--__newindex Ԫ����--")
mymetatable = {}
mytable = setmetatable({key1 = "value1"}, { __newindex = mymetatable })

print(mytable.key1)

mytable.newkey = "��ֵ2"
print(mytable.newkey,mymetatable.newkey)

mytable.key1 = "��ֵ1"
print(mytable.key1,mymetatable.key1)


mytable = setmetatable({key1 = "value1"}, {
  __newindex = function(mytable, key, value)
		rawset(mytable, key, "\""..value.."\"")

  end
})

mytable.key1 = "new value"
mytable.key2 = 4

print(mytable.key1,mytable.key2)


print("--Ϊ����Ӳ�����--")

-- ����������ֵ��table.maxn��Lua5.2���ϰ汾�����޷�ʹ��
-- �Զ������������ֵ���� table_maxn
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- ������Ӳ���
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


print("--__call Ԫ����--")

-- ����������ֵ��table.maxn��Lua5.2���ϰ汾�����޷�ʹ��
-- �Զ������������ֵ���� table_maxn
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- ����Ԫ����__call
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



print("--__tostring Ԫ�����--")

mytable = setmetatable({ 10, 20, 30 }, {
  __tostring = function(mytable)
    sum = 0
    for k, v in pairs(mytable) do
		sum = sum + v
	end
    return "������Ԫ�صĺ�Ϊ " .. sum
  end
})
print(mytable)



