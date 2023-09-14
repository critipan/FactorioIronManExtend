data:extend({
    -- 物品
    {
        type = "item",
        name = "arc-reactor",
        icon = BASE_DIR.."/graphics/arc-reactor-icon.png",
        icon_size = 32,
        placed_as_equipment_result = "arc-reactor",
        subgroup = "equipment",
        order = "a[energy-source]-c[arc-reactor]",
        stack_size = 1
    },
    -- 合成表
    {
        type = "recipe",
        name = "arc-reactor",
        enabled = false,
        energy_required = 20,
        ingredients = {
            {"fusion-reactor-equipment", 1},
            {"processing-unit", 100},
        },
        result = "arc-reactor"
    },
    -- 实体
    {
        type = "generator-equipment",
        name = "arc-reactor",
        sprite = {
            filename = BASE_DIR.."/graphics/arc-reactor-equipment.png",
            width = 64,
            height = 64,
            priority = "medium"
        },
        shape = {
            width = 2,
            height = 2,
            type = "full"
        },
        energy_source = {
            type = "electric",
            usage_priority = "primary-output"
        },
        power = "5GW",
        categories = {"armor"}
    }
})