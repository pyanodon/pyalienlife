RECIPE {
    type = "recipe",
    name = "advanced-burner-drill",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"burner-mining-drill", 2},
        {"pipe", 5},
        {"inductor1", 10},
        {"small-parts-01", 20},
        {"steel-plate", 10},
    },
    results = {
        {"advanced-burner-drill", 1}
    }
}:add_unlock("mining-with-fluid")

ITEM {
    type = "item",
    name = "advanced-burner-drill",
    icon = "__pycoalprocessinggraphics__/graphics/missing_icon_64.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "x",
    place_result = "advanced-burner-drill",
    stack_size = 10
}

-- Tmp entity
local entity = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
entity.name = "advanced-burner-drill"
entity.minable.result = "advanced-burner-drill"
entity.energy_source = table.deepcopy(data.raw["mining-drill"]["burner-mining-drill"].energy_source)
data:extend{entity}

