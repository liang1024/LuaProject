co = coroutine.create(
    function(i)
        print(i);
    end
)

coroutine.resume(co, 1)   -- 1
print(coroutine.status(co))  -- dead

print("----------")

co = coroutine.wrap(
    function(i)
        print(i);
    end
)

co(1)

print("----------")

co2 = coroutine.create(
    function()
        for i=1,10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))  --running
                print(coroutine.running()) --thread:XXXXXX
            end
            coroutine.yield()
        end
    end
)

coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3

print(coroutine.status(co2))   -- suspended
print(coroutine.running())

print("----------")



function foo (a)
    print("foo �������", a)
    return coroutine.yield(2 * a) -- ����  2*a ��ֵ
end

co = coroutine.create(function (a , b)
    print("��һ��Эͬ����ִ�����", a, b) -- co-body 1 10
    local r = foo(a + 1)

    print("�ڶ���Эͬ����ִ�����", r)
    local r, s = coroutine.yield(a + b, a - b)  -- a��b��ֵΪ��һ�ε���Эͬ����ʱ����

    print("������Эͬ����ִ�����", r, s)
    return b, "����Эͬ����"                   -- b��ֵΪ�ڶ��ε���Эͬ����ʱ����
end)

print("main", coroutine.resume(co, 1, 10)) -- true, 4
print("--�ָ���----")
print("main", coroutine.resume(co, "r")) -- true 11 -9
print("---�ָ���---")
print("main", coroutine.resume(co, "x", "y")) -- true 10 end
print("---�ָ���---")
print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
print("---�ָ���---")



print("--������-����������--")

local newProductor

function productor()
     local i = 0
     while true do
          i = i + 1
          send(i)     -- ����������Ʒ���͸�������
     end
end

function consumer()
     while true do
          local i = receive()     -- ������������õ���Ʒ
          print(i)
     end
end

function receive()
     local status, value = coroutine.resume(newProductor)
     return value
end

function send(x)
     coroutine.yield(x)     -- x��ʾ��Ҫ���͵�ֵ��ֵ�����Ժ󣬾͹����Эͬ����
end

-- ��������
newProductor = coroutine.create(productor)
consumer()



