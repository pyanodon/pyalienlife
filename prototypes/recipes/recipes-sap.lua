
for _, tree in pairs(data.raw.tree) do
    if tree.minable ~= nil then
        tree.minable.results =
            {
                {type = 'item', name = 'wood', amount = tree.minable.count},
                {type = 'item', name = 'saps', amount = 1, probability = 0.05},
                {type = 'item', name = 'sap-seeds', amount = 5, probability = 0.005}
            }
    end
end

RECIPE {
    type = "recipe",
    name = "sap-seeds",
    category = "nursery",
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
    category = "nursery",
    enabled = true,
    energy_required = 45,
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

RECIPE {
    type = 'recipe',
    name = 'sap-seeds-mk02',
    category = 'sap',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
        {type = 'item', name = 'sodium-alginate', amount = 1},
        {type = 'item', name = 'urea', amount = 1},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'sap-tree', amount = 5},
    },
    results = {
        {type = 'item', name = 'sap-seeds-mk02', amount = 1},
    },
  }:add_unlock("selective-breeding")

  RECIPE {
    type = 'recipe',
    name = 'sap-tree-mk02',
    category = 'sap',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'fluid', name = 'dirty-water', amount = 200},
        {type = 'item', name = 'sap-seeds-mk02', amount = 6},
        {type = 'item', name = 'fertilizer', amount = 4},
        {type = 'item', name = 'bonemeal', amount = 10}
    },
    results = {
        {type = 'item', name = 'sap-tree-mk02', amount = 1},
    },
  }:add_unlock("selective-breeding")
