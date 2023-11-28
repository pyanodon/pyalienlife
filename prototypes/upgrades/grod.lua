local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['grod-1']),
        table.deepcopy(data.raw.recipe['grod-2']),
        table.deepcopy(data.raw.recipe['grod-3']),
        table.deepcopy(data.raw.recipe['grod-4']),
    }) do
        recipe.name = recipe.name .. '-pressured'
        FUN.remove_ingredient(recipe, 'water')
        FUN.add_ingredient(recipe, {name = 'pressured-water', amount = 1000, type = 'fluid', fluidbox_index = 1})
        FUN.multiply_result_amount(recipe, 'grod', 1.25)
        data:extend{recipe}
    end

    for recipe, result in pairs({
        [table.deepcopy(data.raw.recipe['grod-al'])] = 'al-biomass',
        [table.deepcopy(data.raw.recipe['grod-al-2'])] = 'al-biomass',
        [table.deepcopy(data.raw.recipe['grod-al-3'])] = 'al-biomass',
        [table.deepcopy(data.raw.recipe['grod-pb'])] = 'pb-biomass',
        [table.deepcopy(data.raw.recipe['grod-pb-2'])] = 'pb-biomass',
        [table.deepcopy(data.raw.recipe['grod-pb-3'])] = 'pb-biomass',
        [table.deepcopy(data.raw.recipe['grod-sn'])] = 'sn-biomass',
        [table.deepcopy(data.raw.recipe['grod-sn-2'])] = 'sn-biomass',
        [table.deepcopy(data.raw.recipe['grod-sn-3'])] = 'sn-biomass',
    }) do
        recipe.name = recipe.name .. '-tailings'
        FUN.add_ingredient_amount(recipe, 'dirty-water-heavy', 100)
        FUN.multiply_result_amount(recipe, result, 3)
        data:extend{recipe}
    end

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['grod-1']),
        table.deepcopy(data.raw.recipe['grod-2']),
        table.deepcopy(data.raw.recipe['grod-3']),
        table.deepcopy(data.raw.recipe['grod-4']),
    }) do
        recipe.name = recipe.name .. '-dry'
        FUN.remove_ingredient(recipe, 'water')
        data:extend{recipe}
    end

    local seeds = table.deepcopy(data.raw.recipe['grod-seeds'])
    seeds.name = 'grod-seeds-heavy-water'
    seeds.main_product = 'grod-seeds'
    FUN.add_result(seeds, {type = 'fluid', name = 'geothermal-water', amount = 60})
    data:extend{seeds}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'grods-swamp-mk01',
        'grods-swamp-mk02',
        'grods-swamp-mk03',
        'grods-swamp-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'grod-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-grod.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'grod-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
                {'py-science-pack-2', 1},
                {'chemical-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'hi-sprinkler',
            icon = '__pyalienlifegraphics3__/graphics/technology/hi-sprinkler.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'grod-1', new = 'grod-1-pressured', type = 'recipe-replacement'},
                {old = 'grod-2', new = 'grod-2-pressured', type = 'recipe-replacement'},
                {old = 'grod-3', new = 'grod-3-pressured', type = 'recipe-replacement'},
                {old = 'grod-4', new = 'grod-4-pressured', type = 'recipe-replacement'},
            },
        },
        {
            name = 'ground-irrigation',
            icon = '__pyalienlifegraphics3__/graphics/technology/ground-irrigation.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'grod-al', new = 'grod-al-tailings', type = 'recipe-replacement'},
                {old = 'grod-pb', new = 'grod-pb-tailings', type = 'recipe-replacement'},
                {old = 'grod-sn', new = 'grod-sn-tailings', type = 'recipe-replacement'},
                {old = 'grod-al-2', new = 'grod-al-2-tailings', type = 'recipe-replacement'},
                {old = 'grod-pb-2', new = 'grod-pb-2-tailings', type = 'recipe-replacement'},
                {old = 'grod-sn-2', new = 'grod-sn-2-tailings', type = 'recipe-replacement'},
                {old = 'grod-al-3', new = 'grod-al-3-tailings', type = 'recipe-replacement'},
                {old = 'grod-pb-3', new = 'grod-pb-3-tailings', type = 'recipe-replacement'},
                {old = 'grod-sn-3', new = 'grod-sn-3-tailings', type = 'recipe-replacement'},
            }
        },
        {
            name = 'carbide-c',
            icon = '__pyalienlifegraphics3__/graphics/technology/carbide-c.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = -0.5, type = 'module-effects'},
                {old = 'grod-seeds', new = 'grod-seeds-heavy-water', type = 'recipe-replacement'},
                {old = 'grod-1', new = 'grod-1-dry', type = 'recipe-replacement'},
                {old = 'grod-2', new = 'grod-2-dry', type = 'recipe-replacement'},
                {old = 'grod-3', new = 'grod-3-dry', type = 'recipe-replacement'},
                {old = 'grod-4', new = 'grod-4-dry', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'grod'
}