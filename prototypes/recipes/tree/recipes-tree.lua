-- RECIPE {
--     type = "recipe",
--     name = "starter-biomass",
--     categories = {"handcrafting"},
--     enabled = true,
--     energy_required = 2,
--     ingredients = {
--         {type = "item", name = "wood", amount = 5},
--     },
--     results = {
--         {type = "item", name = "biomass", amount = 30}
--     },
-- }

RECIPE {
    type = "recipe",
    name = "tree",
    categories = {"nursery"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "wood-seedling", amount = 3},
        {type = "item", name = "planter-box",   amount = 1},
    },
    results = {
        {type = "item", name = "tree-mk01", amount = 1}
    },
}:add_unlock("wood-processing")
