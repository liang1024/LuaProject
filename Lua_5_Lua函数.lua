

print("--���ڱȽ���ֵ�Ĵ�С�����������ֵ----")

--[[ ������������ֵ�����ֵ --]]
function max(num1, num2)

   if (num1 > num2) then
      result = num1;
   else
      result = num2;
   end

   return result;
end
-- ���ú���
print("��ֵ�Ƚ����ֵΪ ",max(10,4))
print("��ֵ�Ƚ����ֵΪ ",max(5,6))



print("--��������Ϊ�������ݸ�����----")

myprint = function(param)
   print("���Ǵ�ӡ���� -   ##",param,"##")
end

function add(num1,num2,functionPrint)
   result = num1 + num2
   -- ���ô��ݵĺ�������
   functionPrint(result)
end
myprint(10)
-- myprint ������Ϊ��������
add(2,5,myprint)


print("--�෵��ֵ---")

function maximum (a)
    local mi = 1             -- ���ֵ����
    local m = a[mi]          -- ���ֵ
    for i,val in ipairs(a) do
       if val > m then
           mi = i
           m = val
       end
    end
    return m, mi
end

print(maximum({8,10,23,12,5}))


print("--�ɱ����---")

function average(...)
   result = 0
   local arg={...}
   for i,v in ipairs(arg) do
      result = result + v
   end
   print("�ܹ����� " .. #arg .. " ����")
   return result/#arg
end

print("ƽ��ֵΪ",average(10,5,3,4,5,6))









