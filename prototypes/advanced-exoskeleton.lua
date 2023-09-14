data:extend({
  -- 科技树节点
  {
    type = "technology",
    name = "advanced-exoskeleton",
    icon = BASE_DIR.."/graphics/advanced-exoskeleton-tech.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "advanced-exoskeleton"
      }
    },
    prerequisites = {"exoskeleton-equipment"},
    unit = {
      count = 300,
      time = 30,
      ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"military-science-pack", 1},
      }
    },
    order = "g-c-c-c"
  },
  -- 合成表
  {
    type = "recipe",
    name = "advanced-exoskeleton",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {"exoskeleton-equipment", 1},
        {"processing-unit", 20},
    },
    result = "advanced-exoskeleton"
  },
  -- 物品
  {
    type = "item",
    name = "advanced-exoskeleton",
    icon = BASE_DIR.."/graphics/advanced-exoskeleton-icon.png",
        icon_size = 32,
    placed_as_equipment_result = "advanced-exoskeleton",

    subgroup = "equipment",
    order = "e[exoskeleton]-b[advanced-exoskeleton]",
    stack_size = 10
  },
  -- 实体
  {
    type = "movement-bonus-equipment",
    name = "advanced-exoskeleton",
    sprite =
    {
      filename = BASE_DIR.."/graphics/advanced-exoskeleton-equipment.png",
      width = 64,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_consumption = "250kW",
    movement_bonus = 0.85,
    categories = {"armor"}
  }
})