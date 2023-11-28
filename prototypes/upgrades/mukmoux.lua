local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    data:extend{{
        name = 'artifical-insemination',
        type = 'recipe',
        enabled = false,
        energy_required = 450,
        category = 'incubator',
        ingredients = {
            {name = 'mukmoux', amount = 1, type = 'item'},
            {name = 'quartz-tube', amount = 1, type = 'item'},
            {name = 'immunosupressants', amount = 1, type = 'item'},
            {name = 'bedding', amount = 2, type = 'item'},
            {name = 'mukmoux-food-01', amount = 2, type = 'item'},
            {name = 'water', amount = 650, type = 'fluid'},
        },
        results = {
            {name = 'mukmoux-calf', amount_min = 150, amount_max = 250, type = 'item'},
            {name = 'quartz-tube', amount = 1, type = 'item', probability = 0.5},
            {name = 'immunosupressants', amount = 1, type = 'item', probability = 0.5},
            {name = 'meat', amount = 3, type = 'item'},
            {name = 'guts', amount = 5, type = 'item'},
            {name = 'mukmoux-fat', amount = 5, type = 'item'},
            {name = 'bones', amount = 1, type = 'item'},
            {name = 'artificial-blood', amount = 100, type = 'fluid'},
        },
        main_product = 'mukmoux-calf',
        localised_name = {'technology-name.zero-cross'}
    }}

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['mukmoux-calf-1']),
        table.deepcopy(data.raw.recipe['mukmoux-calf-2']),
        table.deepcopy(data.raw.recipe['mukmoux-calf-3']),
        table.deepcopy(data.raw.recipe['mukmoux-calf-4']),
    }) do
        recipe.name = recipe.name .. '-microchip'
        FUN.add_ingredient(recipe, {name = 'microchip', amount = 1, type = 'item'})
        FUN.add_result(recipe, {name = 'microchip', amount = 1, type = 'item', probability = 0.5})
        FUN.add_result(recipe, {name = 'fetal-serum', amount = 10, type = 'fluid'})
        data:extend{recipe}
    end

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['mukmoux-1']),
        table.deepcopy(data.raw.recipe['mukmoux-2']),
        table.deepcopy(data.raw.recipe['mukmoux-3']),
        table.deepcopy(data.raw.recipe['mukmoux-4']),
    }) do
        recipe.name = recipe.name .. '-bip'
        for _, ingredient in pairs(recipe.ingredients) do
            if ingredient.name == 'mukmoux-food-01' or ingredient.name == 'mukmoux-food-02' then
                FUN.add_result(recipe, {name = ingredient.name, amount = 1, type = 'item', probability = 0.5})
            end
        end
        FUN.add_ingredient_amount(recipe, 'mukmoux-food-01', 1)
        FUN.add_ingredient_amount(recipe, 'mukmoux-food-02', 1)
        FUN.multiply_result_amount(recipe, 'mukmoux', 1.5)
        recipe.energy_required = recipe.energy_required * 1.5
        data:extend{recipe}
    end

    local electronics = {'controler-mk01', 'controler-mk02', 'controler-mk03', 'controler-mk04'}
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['mukmoux-pasture-mk01']),
        table.deepcopy(data.raw.recipe['mukmoux-pasture-mk02']),
        table.deepcopy(data.raw.recipe['mukmoux-pasture-mk03']),
        table.deepcopy(data.raw.recipe['mukmoux-pasture-mk04']),
    }) do
        recipe.name = recipe.name .. '-with-electronics'
        FUN.add_ingredient(recipe, {name = electronics[i], amount = 10 * i, type = 'item'})
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'mukmoux-pasture-mk01',
        'mukmoux-pasture-mk02',
        'mukmoux-pasture-mk03',
        'mukmoux-pasture-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'mukmoux-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-mukmoux.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'mukmoux-mk03'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'chemical-science-pack', 1},
                {'py-science-pack-3', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'zero-cross',
            icon = '__pyalienlifegraphics3__/graphics/technology/zero-cross.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'artifical-insemination', type = 'unlock-recipe'}
            },
        },
        {
            name = 'bip',
            icon = '__pyalienlifegraphics3__/graphics/technology/bip.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'mukmoux-1', new = 'mukmoux-1-bip', type = 'recipe-replacement'},
                {old = 'mukmoux-2', new = 'mukmoux-2-bip', type = 'recipe-replacement'},
                {old = 'mukmoux-3', new = 'mukmoux-3-bip', type = 'recipe-replacement'},
                {old = 'mukmoux-4', new = 'mukmoux-4-bip', type = 'recipe-replacement'},
                {old = 'mukmoux-pasture-mk01', new = 'mukmoux-pasture-mk01-with-electronics', type = 'recipe-replacement'},
                {old = 'mukmoux-pasture-mk02', new = 'mukmoux-pasture-mk02-with-electronics', type = 'recipe-replacement'},
                {old = 'mukmoux-pasture-mk03', new = 'mukmoux-pasture-mk03-with-electronics', type = 'recipe-replacement'},
                {old = 'mukmoux-pasture-mk04', new = 'mukmoux-pasture-mk04-with-electronics', type = 'recipe-replacement'},
            }
        },
        {
            name = 'think-collar',
            icon = '__pyalienlifegraphics3__/graphics/technology/think-collar.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {productivity = 0.25, type = 'module-effects'},
                {old = 'mukmoux-calf-1', new = 'mukmoux-calf-1-microchip', type = 'recipe-replacement'},
                {old = 'mukmoux-calf-2', new = 'mukmoux-calf-2-microchip', type = 'recipe-replacement'},
                {old = 'mukmoux-calf-3', new = 'mukmoux-calf-3-microchip', type = 'recipe-replacement'},
                {old = 'mukmoux-calf-4', new = 'mukmoux-calf-4-microchip', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'mukmoux'
}