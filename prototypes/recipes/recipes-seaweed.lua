--------------------------SEA WEED-----------------------


data:extend({
    {
    type = "fish",
    name = "seaweed",
    icon = "__pyalienlifegraphics__/graphics/icons/seaweed.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    minable = {mining_time = 0.4, result = "seaweed", count = 2},
    max_health = 20,
    subgroup = "creatures",
    order = "b-a",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-0.5, -0.3}, {0.5, 0.3}},
    pictures =
    {
      {
        filename = "__base__/graphics/entity/fish/fish-1.png",
        priority = "extra-high",
        width = 22,
        height = 36
      },
      {
        filename = "__base__/graphics/entity/fish/fish-2.png",
        priority = "extra-high",
        width = 32,
        height = 32
      }
    },
    --autoplace = { influence = 0.05 }
    autoplace =
    {
        order = "xc",
        --max_probability = 0.025,
        peaks =
        {
            {
                influence = 0.04,
                --min_influence = 0,
                --water_optimal = 0.875,
                --water_range = 0.125,
                --water_max_range = 0.125,
            }
        },
    },
    active = false
  }
})

--[[
RECIPE {
    type = 'recipe',
    name = 'seaweed',
    category = 'seaweed',
    enabled = true,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'water', amount = 200},
    },
    results = {
        {type = 'item', name = 'seaweed', amount = 4},
    },
}
]]--