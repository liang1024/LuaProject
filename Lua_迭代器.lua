

print("--���� for ������--")

array = {"Lua", "Tutorial"}

for key,value in ipairs(array)
do
   print(key, value)
end



print("--��״̬�ĵ�����--")

print("--���� n ��ƽ��--")
function square(iteratorMaxCount,currentNumber)
   if currentNumber<iteratorMaxCount
   then
      currentNumber = currentNumber+1
   return currentNumber, currentNumber*currentNumber
   end
end

for i,n in square,3,0
do
   print(i,n)
end
print("---------")

function iter (a, i)
    i = i + 1
    local v = a[i]
    if v then
       return i, v
    end
end

function ipairs (a)
    return iter, a, 0
end




print("--��״̬�ĵ�����--")


array = {"Lua", "Tutorial"}

function elementIterator (collection)
   local index = 0
   local count = #collection
   -- �հ�����
   return function ()
      index = index + 1
      if index <= count
      then
         --  ���ص������ĵ�ǰԪ��
         return collection[index]
      end
   end
end

for element in elementIterator(array)
do
   print(element)
end

