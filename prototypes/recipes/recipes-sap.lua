

for _, tree in pairs(data.raw.tree) do
    tree.minable.results =
        {
            {type = 'item', name = 'wood', amount = tree.minable.count},
            {type = 'item', name = 'saps', amount_min = 1, amount_max = 5, probability = 0.1},
            {type = 'item', name = 'sap-seeds', amount = 5, probability = 0.005}
        }
end


RECIPE {
    type = "recipe",
    name = "sap-seeds",
    category = "sap",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "saps", amount = 5},
    },
    results = {
        {type = "item", name = "sap-seeds", amount = 2}
    },
}

RECIPE {
    type = "recipe",
    name = "sap-tree",
    category = "sap",
    enabled = true,
    energy_required = 120,
    ingredients = {
        {type = "item", name = "sap-seeds", amount = 5},
    },
    results = {
        {type = "item", name = "sap-tree", amount = 1}
    },
}


--Secondary Upgrade Recipes--
--SUR--
--WIP--

--mk02--
--WIP--
--[[
RECIPE {
    type = 'recipe',
    name = 'sap-tree-mk02',
    category = 'sap',
    enabled = true,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
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
