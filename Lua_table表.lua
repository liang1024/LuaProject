-- ��ʼ����
mytable = {}

-- ָ��ֵ
mytable[1]= "Lua"

-- �Ƴ�����
mytable = nil
-- lua �������ջ��ͷ��ڴ�



print("--�򵥵� table--")


-- �򵥵� table
mytable = {}
print("mytable �������� ",type(mytable))

mytable[1]= "Lua"
mytable["wow"] = "�޸�ǰ"
print("mytable ����Ϊ 1 ��Ԫ���� ", mytable[1])
print("mytable ����Ϊ wow ��Ԫ���� ", mytable["wow"])

-- alternatetable��mytable����ָͬһ�� table
alternatetable = mytable

print("alternatetable ����Ϊ 1 ��Ԫ���� ", alternatetable[1])
print("mytable ����Ϊ wow ��Ԫ���� ", alternatetable["wow"])

alternatetable["wow"] = "�޸ĺ�"

print("mytable ����Ϊ wow ��Ԫ���� ", mytable["wow"])

-- �ͷű���
alternatetable = nil
print("alternatetable �� ", alternatetable)

-- mytable ��Ȼ���Է���
print("mytable ����Ϊ wow ��Ԫ���� ", mytable["wow"])

mytable = nil
print("mytable �� ", mytable)


print("--���ӷ�--")

fruits = {"banana","orange","apple"}
-- ���� table ���Ӻ���ַ���
print("���Ӻ���ַ��� ",table.concat(fruits))

-- ָ�������ַ�
print("���Ӻ���ַ��� ",table.concat(fruits,", "))

-- ָ������������ table
print("���Ӻ���ַ��� ",table.concat(fruits,", ", 2,3))




print("--������Ƴ�--")


fruits = {"banana","orange","apple"}

-- ��ĩβ����
table.insert(fruits,"mango")
print("����Ϊ 4 ��Ԫ��Ϊ ",fruits[4])

-- ������Ϊ 2 �ļ�������
table.insert(fruits,2,"grapes")
print("����Ϊ 2 ��Ԫ��Ϊ ",fruits[2])

print("���һ��Ԫ��Ϊ ",fruits[5])
table.remove(fruits)
print("�Ƴ������һ��Ԫ��Ϊ ",fruits[5])


print("--Table ����--")

fruits = {"banana","orange","apple","grapes"}
print("����ǰ")
for k,v in ipairs(fruits) do
	print(k,v)
end

table.sort(fruits)
print("�����")
for k,v in ipairs(fruits) do
	print(k,v)
end



print("--Table ���ֵ--")

function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end
tbl = {[1] = "a", [2] = "b", [3] = "c", [26] = "z"}
print("tbl ���� ", #tbl)
print("tbl ���ֵ ", table_maxn(tbl))











