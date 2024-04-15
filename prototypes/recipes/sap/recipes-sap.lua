for _, tree in pairs(data.raw.tree) do
    if tree.minable and tree.minable.result then
        tree.minable.results = {{
            type = 'item',
            name = tree.minable.result,
            amount = tree.minable.count
        }}
        tree.minable.result = nil
    end

    if tree.minable and tree.minable.results then
        for _, result in pairs(tree.minable.results) do
            if result[1] and result[2] then
                result.name = result[1]
                result.amount = result[2]
                result[1] = nil
                result[2] = nil
            end

            if result.name == 'wood' then
                result.name = 'log'
                if string.match(tree.name, 'dry') or string.match(tree.name, 'dead') then -- dead trees should not give sap
                    result.amount = 1
                else
                    result.amount = nil
                    result.amount_min = 1
                    result.amount_max = 2
                    table.insert(tree.minable.results, {
                        type = 'item',
                        name = 'saps',
                        amount = 1,
                        probability = 0.1
                    })
                end
                break
            end
        end
    end
end

RECIPE {
    type = 'recipe',
    name = 'sap-seeds',
    category = 'nursery',
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = 'item', name = 'saps', amount = 5},
    },
    results = {
        {type = 'item', name = 'sap-seeds', amount = 2}
    },
}:add_unlock('sap-mk01')

RECIPE {
    type = 'recipe',
    name = 'sap-tree',
    category = 'nursery',
    enabled = false,
    energy_required = 45,
    ingredients = {
        {type = 'item', name = 'sap-seeds', amount = 5},
        {type = 'item', name = 'planter-box', amount = 1},
    },
    results = {
        {type = 'item', name = 'sap-tree', amount = 1}
    },
}:add_unlock('sap-mk01')
