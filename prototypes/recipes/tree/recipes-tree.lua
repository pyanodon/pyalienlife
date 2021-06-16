
RECIPE {
    type = "recipe",
    name = "starter-biomass",
    category = "handcrafting",
    enabled = true,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "wood", amount = 5},
    },
    results = {
        {type = "item", name = "biomass", amount = 30}
    },
}

RECIPE {
    type = "recipe",
    name = "tree",
    category = "fwf",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "wood-seedling", amount = 3},
    },
    results = {
        {type = "item", name = "tree-mk01", amount = 1}
    },
}:add_unlock("botany-mk01")


--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--
--[[
RECIPE {
    type = 'recipe',
    name = 'tree-mk02',
    category = 'sap',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
        {type = 'item', name = 'sodium-alginate', amount = 1},
        {type = 'item', name = 'urea', amount = 1},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'wood', amount = 5},
    },
    results = {
        {type = 'item', name = 'sap-seeds-mk02', amount = 1},
    },
  }
  ]]--
