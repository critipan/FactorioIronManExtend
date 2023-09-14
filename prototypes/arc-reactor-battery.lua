data:extend({
    {
        type = "item",
        name = "arc-reactor-battery",
        icon = BASE_DIR.."/graphics/arc-reactor-equipment.png",
        icon_size = 64, icon_mipmaps = 1,
        pictures =
        {
          layers =
          {
            {
              size = 64,
              filename = BASE_DIR.."/graphics/arc-reactor-equipment.png",
              scale = 0.25,
              mipmap_count = 1
            },
            {
              draw_as_light = true,
              flags = {"light"},
              size = 64,
              filename = BASE_DIR.."/graphics/arc-reactor-equipment.png",
              scale = 0.25,
              mipmap_count = 1
            }
          }
        },
        fuel_category = "chemical",
        fuel_value = "100GJ",
        fuel_acceleration_multiplier = 3,
        fuel_top_speed_multiplier = 1.5,
        subgroup = "raw-resource",
        order = "r[uranium-rocket-fuel]",
        stack_size = 100
    },
    {
        type = "recipe",
        name = "arc-reactor-battery",
        energy_required = 90,
        enabled = false,
        category = "advanced-crafting",
        ingredients = {{"arc-reactor", 1}},
        icon = BASE_DIR.."/graphics/arc-reactor-equipment.png",
        icon_size = 64, icon_mipmaps = 1,
        result = "arc-reactor-battery",
        result_count = 5
    }
    
})