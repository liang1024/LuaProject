



print("--��ģʽ--")

-- ��ֻ����ʽ���ļ�
file = io.open("test.txt", "r")

-- ����Ĭ�������ļ�Ϊ test.lua
io.input(file)

-- ����ļ���һ��
print(io.read())

-- �رմ򿪵��ļ�
io.close(file)

-- �Ը��ӵķ�ʽ��ֻд�ļ�
file = io.open("test.txt", "a")

-- ����Ĭ������ļ�Ϊ test.lua
io.output(file)

-- ���ļ����һ����� Lua ע��
io.write("--  test.txt�t�ļ�ĩβע��")

-- �رմ򿪵��ļ�
io.close(file)


print("--��ȫģʽ--")


-- ��ֻ����ʽ���ļ�
file = io.open("test.txt", "r")

-- ����ļ���һ��
print(file:read())

-- �رմ򿪵��ļ�
file:close()

-- �Ը��ӵķ�ʽ��ֻд�ļ�
file = io.open("test.txt", "a")

-- ���ļ����һ����� Lua ע��
file:write("--test")

-- �رմ򿪵��ļ�
file:close()




--����ʵ��ʹ���� seek ��������λ���ļ������� 25 ��λ�ò�ʹ�� read ������ *a ���������ӵ���λ��(������ 25 ��λ��)��ȡ�����ļ���

-- ��ֻ����ʽ���ļ�
file = io.open("test.lua", "r")

file:seek("end",-25)
print(file:read("*a"))

-- �رմ򿪵��ļ�
file:close()


