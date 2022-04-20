local mine_results_1 =
{
    type = 'item',
    name = 'saps',
    amount = 1,
    probability = 0.05
}

--log(serpent.block(data.raw.tree['temperate-tree'].minable.results))
for _, tree in pairs(data.raw.tree) do
    if tree.minable ~= nil  and tree.minable.results ~= nil and tree.minable.results[1].name == 'wood' then
        tree.minable.results[1].name = 'log'
        tree.minable.results[1].amount = tree.minable.results[1].amount / 4.0

    elseif tree.minable ~= nil and tree.minable.result == 'wood' then
        tree.minable.result = nil
        tree.minable.results =
            {
                {
                    type = 'item',
                    name = 'log',
                    amount = tree.minable.count / 4.0,
                },
            }
    end

    if tree.minable.results[1].amount >= 1 then -- no sap from dead trees
        table.insert(tree.minable.results, mine_results_1)
    else
        tree.minable.results[1].probability = tree.minable.results[1].amount
        tree.minable.results[1].amount = 1
    end
end
--log(serpent.block(data.raw.tree['temperate-tree'].minable.results))

RECIPE {
    type = "recipe",
    name = "sap-seeds",
    category = "nursery",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "saps", amount = 5},
    },
    results = {
        {type = "item", name = "sap-seeds", amount = 2}
    },
}:add_unlock("sap")

RECIPE {
    type = "recipe",
    name = "sap-tree",
    category = "nursery",
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = "item", name = "sap-seeds", amount = 5},
        {type = "item", name = "planter-box", amount = 1},
    },
    results = {
        {type = "item", name = "sap-tree", amount = 1}
    },
}:add_unlock("sap")
