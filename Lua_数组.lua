print("----- 一维数组")


array = {"Lua", "Tutorial"}

for i= 0, 2 do
   print(array[i])
end


--以负数为索引

array = {}

for i= -2, 2 do
   array[i] = i *2
end

for i = -2,2 do
   print(array[i])
end