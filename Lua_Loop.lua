
--while( true )
--do
--   print("ѭ������Զִ����ȥ")
--end



--while(condition)
--do
--   statements
--end
--  condition?true����Ϊtrueʱ��ѭ����ȥ


print("-----while------")
a=10
while( a < 20 )
do
   print("a ��ֵΪ:", a)
   a = a+1
end


print("-----for------")

--var��exp1�仯��exp2��ÿ�α仯��exp3Ϊ��������var����ִ��һ��"ִ����"��exp3�ǿ�ѡ�ģ������ָ����Ĭ��Ϊ1��

--for var=exp1,exp2,exp3 do
--    <ִ����>
--end


for i=10,1,-1 do
    print(i)
end


--for���������ʽ��ѭ����ʼǰһ������ֵ���Ժ��ٽ�����ֵ�����������f(x)ֻ����ѭ����ʼǰִ��һ�Σ��������ں����ѭ���С�

function f(x)
    print("function")
    return x*2
end

for i=1,f(5) do print(i)
end


--����forѭ��

days = {"Suanday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}
for i,v in ipairs(days) do  print(v) end




--�����ж���䣨condition��Ϊ true �Ż�ִֹͣ��

print("-----repeat until------")


--[ �������� --]
a = 10
--[ ִ��ѭ�� --]
repeat
   print("a��ֵΪ:", a)
   a = a + 1
until( a > 15 )


print("-----Ƕ��ѭ��------")


j =2
for i=2,10 do
   for j=2,(i/j) , 2 do
      if(not(i%j))
      then
         break
      end
      if(j > (i/j))then
         print("i ��ֵΪ��",i)
      end
   end
end


print("-----break------")


--[ ������� --]
a = 10

--[ while ѭ�� --]
while( a < 20 )
do
   print("a ��ֵΪ:", a)
   a=a+1
   if( a > 15)
   then
      --[ ʹ�� break �����ֹѭ�� --]
      break
   end
end







