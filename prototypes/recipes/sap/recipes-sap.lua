--log(serpent.block(data.raw.tree['temperate-tree'].minable.results))
for _, tree in pairs(data.raw.tree) do
    if tree.minable ~= nil  and tree.minable.results ~= nil and tree.minable.results[1].name == 'wood' then
        local mine_results_1 =
            {
                type = 'item',
                name = 'saps',
                amount = 1,
                probability = 0.05
            }
        local mine_results_2 =
            {
                type = 'item',
                name = 'sap-seeds',
                amount = 5,
                probability = 0.005
            }
        table.insert(tree.minable.results, mine_results_1)
        table.insert(tree.minable.results, mine_results_2)
    elseif tree.minable ~= nil and tree.minable.result == 'wood' then
        tree.minable.result = nil
        tree.minable.results =
            {
                {
                    type = 'item',
                    name = 'wood',
                    amount = tree.minable.count,
                },
                {
                    type = 'item',
                    name = 'saps',
                    amount = 1,
                    probability = 0.05
                },
                {
                    type = 'item',
                    name = 'sap-seeds',
                    amount = 5,
                    probability = 0.005
                }
            }
    end
end
--log(serpent.block(data.raw.tree['temperate-tree'].minable.results))

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
    category = 'nursery',
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
        {type = 'item', name = 'sodium-alginate', amount = 1},
        --{type = 'item', name = 'urea', amount = 1},
        {type = 'item', name = 'moss', amount = 5},
        {type = 'item', name = 'sap-tree', amount = 5},
    },
    results = {
        {type = 'item', name = 'sap-seeds-mk02', amount = 1},
    },
  }:add_unlock("selective-breeding"):add_ingredient({type = "item", name = "urea", amount = 1})

  RECIPE {
    type = 'recipe',
    name = 'sap-tree-mk02',
    category = 'nursery',
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = 'fluid', name = 'dirty-water-light', amount = 200},
        {type = 'item', name = 'sap-seeds-mk02', amount = 6},
        {type = 'item', name = 'fertilizer', amount = 4},
        {type = 'item', name = 'bonemeal', amount = 10}
    },
    results = {
        {type = 'item', name = 'sap-tree-mk02', amount = 1},
    },
  }:add_unlock("selective-breeding")
