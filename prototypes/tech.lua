data:extend({
     -- 科技树节点
     {
        type = "technology",
        name = "arc-reactor",
        icon = BASE_DIR.."/graphics/arc-reactor-tech.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "arc-reactor"
            },
            {
                type = "unlock-recipe",
                recipe = "arc-reactor-battery"
            },
        },
        preerequisites = {
            "fusion-reactor-equipment"
        },
        unit = {
            count = 300,
            time = 30,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"military-science-pack", 1},
              }
        },
        order = "g-c-c-a"
    },
})