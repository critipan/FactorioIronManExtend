-- 用于按需加载模组物品

-- 加载配置文件
require("config")

-- 标志区，用于指示可选mod是否存在
local flag_ironman = mods["IronMan_WarMachine"] ~= nil
local flag_se = mods["space-exploration"] ~= nil


-- 执行加载操作
-- 启用钢铁侠mod
if flag_ironman then
    
else
    require("prototypes.arc-reactor")
    require("prototypes.advanced-exoskeleton")
end


-- 启用钢铁侠和se
if flag_ironman and flag_se then


    -- 替换钢铁侠盔甲的合成表
    data.raw.recipe["iron-armor"].ingredients = {
        {"se-thruster-suit-4", 1},
        {"low-density-structure", 40},
        {"electric-engine-unit", 40},
        {"processing-unit", 100},
        {"alien-biomatter", 500}
       }
end