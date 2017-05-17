
--Lua提供了一个名为require的函数用来加载模块。要加载一个模块，只需要简单地调用就可以了
require("module")

print(module.constant)

module.func3()

-- 别名变量 m
local m = require("module")

print(m.constant)

m.func3()
