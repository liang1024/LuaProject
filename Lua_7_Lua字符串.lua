

string1 = "Lua"
print("\"�ַ��� 1 ��\"",string1)
string2 = 'runoob.com'
print("�ַ��� 2 ��",string2)

string3 = [["Lua �̳�"]]
print("�ַ��� 3 ��",string3)



print("--1.�ַ���ȫ��תΪ��д��ĸ��--")
string4="abc"
print(string.upper(string4))

print("--2.�ַ���ȫ��תΪСд��ĸ--")
string5="ABC"
print(string.lower(string5))


print("--3.�滻�ַ�--")
--string.gsub(mainString,findString,replaceString,num)
--mainStringΪҪ�滻���ַ����� findString Ϊ���滻���ַ���replaceString Ҫ�滻���ַ���num �滻���������Ժ��ԣ���ȫ���滻��

string5="abcdabc"
print(string.gsub(string5,"abc","eee",1));  --����Ϊ2ʱ�Ѻ����abcҲ���滻��


print("--4.�ַ�����ת--")
string5="abcde"
print(string.reverse(string5))


print("--5.format--")
--����һ������printf�ĸ�ʽ���ַ���
--print(string.format("the value is:%d",4))
string1 = "Lua"
string2 = "Tutorial"
number1 = 10
number2 = 20
-- �����ַ�����ʽ��
print(string.format("������ʽ�� %s %s",string1,string2))
-- ���ڸ�ʽ��
date = 2; month = 1; year = 2014
print(string.format("���ڸ�ʽ�� %02d/%02d/%03d", date, month, year))
-- ʮ���Ƹ�ʽ��
print(string.format("%.4f",1/3))

--string.char(arg) �� string.byte(arg[,int])

print("--6.string.char(arg) �� string.byte(arg[,int])--")
--char ����������ת���ַ������ӣ� byte ת���ַ�Ϊ����ֵ(����ָ��ĳ���ַ���Ĭ�ϵ�һ���ַ�)��

-- ���� ASCII ��ת��Ϊ�ַ�
print(string.char(97))

print(string.char(97,98,99,100))

print(string.byte("ABCD",4))

print(string.byte("ABCD"))

-- ת��ĩβ�ڶ����ַ�
print(string.byte("Lua",-2))

print("--7.string.len(arg)--")

--�����ַ������ȡ�
print(string.len("abc"))


print("-- 8.string.rep(string, n))--")
--�����ַ���string��n������

print(string.rep("abcd",4))  --4��


print("-- 9.    ..   ���������ַ���  --")

print("www.runoob".."com")
string1 = "www."
string2 = "runoob"
string3 = ".com"
-- ʹ�� .. �����ַ�������
print("�����ַ���",string1..string2..string3)


print("-- 10. string.find() �ַ�������  --")


string = "Lua Tutorial"

print(string.find(string,"Tutorial"))  --��ӡ�����ҵ�����ʼ�����յ��±�




















