
--���ƽṹ���������ʽ����������κ�ֵ��Lua��Ϊfalse��nilΪ�٣�true�ͷ�nilΪ�档

--[ 0 Ϊ true ]
if(0)
then
    print("0 Ϊ true")
end



print("--if ���---")

--[[

if(�������ʽ)
then
   --[ �ڲ������ʽΪ true ʱִ�е���� --]
end


--]]

--[ ������� --]
a = 10;

--[ ʹ�� if ��� --]
if( a < 20 )
then
   --[ if ����Ϊ true ʱ��ӡ������Ϣ --]
   print("a С�� 20" );
end
print("a ��ֵΪ:", a);


print("--if...else ���---")


--[ ������� --]
a = 100;
--[ ������� --]
if( a < 20 )
then
   --[ if ����Ϊ true ʱִ�и����� --]
   print("a С�� 20" )
else
   --[ if ����Ϊ false ʱִ�и����� --]
   print("a ���� 20" )
end
print("a ��ֵΪ :", a)


print("--if...elseif...else ���---")

--[ ������� --]
a = 100

--[ ��鲼������ --]
if( a == 10 )
then
   --[ �������Ϊ true ��ӡ������Ϣ --]
   print("a ��ֵΪ 10" )
elseif( a == 20 )
then
   --[ if else if ����Ϊ true ʱ��ӡ������Ϣ --]
   print("a ��ֵΪ 20" )
elseif( a == 30 )
then
   --[ if else if condition ����Ϊ true ʱ��ӡ������Ϣ --]
   print("a ��ֵΪ 30" )
else
   --[ �����������û��һ��Ϊ true ʱ��ӡ������Ϣ --]
   print("û��ƥ�� a ��ֵ" )
end
print("a ����ʵֵΪ: ", a )

print("--if Ƕ�����--")

--[ ������� --]
a = 100;
b = 200;

--[ ������� --]
if( a == 100 )
then
   --[ if ����Ϊ true ʱִ������ if �����ж� --]
   if( b == 200 )
   then
      --[ if ����Ϊ true ʱִ�и����� --]
      print("a ��ֵΪ 100 b ��ֵΪ 200" );
   end
end
print("a ��ֵΪ :", a );
print("b ��ֵΪ :", b );


