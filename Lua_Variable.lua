


a = 5               -- ȫ�ֱ���
local b = 5         -- �ֲ�����

function joke()
    c = 5           -- ȫ�ֱ���
    local d = 6     -- �ֲ�����
end

joke()
print(c,d)          --> 5 nil

do
    local a = 6     -- �ֲ�����
    b = 6           -- ȫ�ֱ���
    print(a,b);     --> 6 6
end

print(a,b)      --> 5 6

--��ֵ���

a, b, c = 0, 1
print(a,b,c)             --> 0   1   nil

a, b = a+1, b+1, b+2     -- value of b+2 is ignored
print(a,b)               --> 1   2

a, b, c = 0
print(a,b,c)             --> 0   nil   nil



