FLUID {
    type = "fluid",
    name = "bio-oil",
    icon = "__pyalienlifegraphics__/graphics/icons/bio-oil.png",
    icon_size = 64,
    default_temperature = 10,
    base_color = {r = 0.341, g = 0.482, b = 0.019},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-alienlife-fluids",
    order = "f"
}

RECIPE {
    type = "recipe",
    name = "bio-oil",
    category = "gasifier",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "dried-biomass", amount = 30},
        {type = "item",  name = "sic",           amount = 2},
        {type = "item",  name = "quartz-tube",   amount = 1},
        {type = "fluid", name = "nitrogen",      amount = 300},
    },
    results = {
        {type = "fluid", name = "bio-oil",     amount = 300},
        {type = "item",  name = "quartz-tube", amount = 1,  probability = 0.75, ignored_by_productivity = 1},
    },
    main_product = "bio-oil",
}:add_unlock("bioprocessing"):change_category("hor")
