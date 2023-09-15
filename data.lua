-- 用于按需加载模组物品

-- 加载配置文件
require("config")

-- 标志区，用于指示可选mod是否存在
local flag_ironman = mods["IronMan_WarMachine"] ~= nil
local flag_se = mods["space-exploration"] ~= nil


-- 执行加载操作
-- 启用钢铁侠mod
if flag_ironman then
    table.insert(data.raw.technology["arc-reactor"].effects,{type = "unlock-recipe",recipe = "arc-reactor-battery"})
    local t = data.raw["equipment-grid"]["iron-grid"]
    t.width = 26
    t.height = 26
else
    require("prototypes.tech")
    require("prototypes.arc-reactor")
    require("prototypes.advanced-exoskeleton")
end

-- if flag_se then
--     local name0 = "burner-turbine"
--     local name1 = "high-power-burner-turbine"
--     -- 添加大功率热能涡轮发电机 SE（AAI 工业）
--     local entity = table.deepcopy(data.raw["burner-generator"][name0])
--     entity.name = name1
--     entity.max_power_output = "1GW"
--     entity.minable = {hardness = 0.2, mining_time = 0.5, result = name1}
--     local recipe = table.deepcopy(data.raw["recipe"][name0])
--     recipe.name = name1
--     recipe.ingredients = data.raw["recipe"]["se-antimatter-reactor"].ingredients
--     local item = table.deepcopy(data.raw.item[name0])
--     item.name = name1
--     item.place_result = name1

--     data:extend({entity, recipe, item})
--     table.insert(data.raw.technology["arc-reactor"].effects,{type = "unlock-recipe",recipe = name1})

-- end

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
    local shield_equipment = data.raw["energy-shield-equipment"]["advanced-shields"]
    shield_equipment.max_shield_value = 8000
    shield_equipment.energy_source.input_flow_limit = "100MW"
    shield_equipment.energy_source.buffer_capacity = "1GW"
end



require("prototypes.arc-reactor-battery")