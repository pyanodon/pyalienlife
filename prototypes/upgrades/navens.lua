local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    local recipe = table.deepcopy(data.raw.recipe['navens-sample'])
    recipe.name = 'navens-sample-with-vonix-gen'
    FUN.add_ingredient(recipe, {'vonix-codex', 5})
    data:extend{recipe}

    data:extend{{
        type = 'recipe',
        name = 'pre-pesticide-01-navens',
        ingredients = {
            {name = 'navens', type = 'item', amount = 12},
            {name = 'mcb', type = 'fluid', amount = 100},
            {name = 'phenol', type = 'item', amount = 1},
        },
        results = {
            {name = 'pre-pesticide-01', type = 'fluid', amount = 350},
        },
        energy_required = 20,
        enabled = false,
        category = 'biofactory'
    }}

    data:extend{
        {
            type = 'item',
            name = 'navens-abomination',
            icon = '__pyalienlifegraphics__/graphics/icons/abomination.png',
            icon_size = 64,
            stack_size = 50,
            subgroup = 'py-alienlife-auog'
        },
        {
            type = 'recipe',
            name = 'full-render-navens-abomination',
            category = 'slaughterhouse',
            subgroup = 'py-alienlife-auog',
            ingredients = {{'navens-abomination', 1}},
            results = {
                {name = 'navens', type = 'item', amount_min = 13, amount_max = 16},
                {name = 'dirty-water-light', type = 'fluid', amount = 10},
                {'guts', 1}
            },
            enabled = false,
            icon = '__pyalienlifegraphics__/graphics/icons/rendering-abomination.png',
            icon_size = 64,
            localised_name = {'recipe-name.full-render-navens-abomination'},
            energy_required = 10
        }
    }

    local victims = {'auog', 'mukmoux', 'scrondrix', 'zungror'}
    local profit = {1, 2, 4, 6}
    if not mods.pyalternativeenergy then victims[4] = 'antelope' end
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['navens-1']),
        table.deepcopy(data.raw.recipe['navens-2']),
        table.deepcopy(data.raw.recipe['navens-3']),
        table.deepcopy(data.raw.recipe['navens-4']),
    }) do
        recipe.name = recipe.name .. '-abomination'
        FUN.add_ingredient(recipe, {name = victims[i], amount = 1, type = 'item'})
        FUN.remove_ingredient(recipe, 'guts')
        recipe.main_product = 'navens-abomination'
        recipe.results = {{'navens-abomination', profit[i]}}
        recipe.energy_required = recipe.energy_required * 1.5
        data:extend{recipe}
    end

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['navens-spore']),
        table.deepcopy(data.raw.recipe['navens-spore-2']),
        table.deepcopy(data.raw.recipe['navens-spore-3']),
        table.deepcopy(data.raw.recipe['navens-spore-mk02']),
        table.deepcopy(data.raw.recipe['navens-spore-mk03']),
        table.deepcopy(data.raw.recipe['navens-spore-mk04']),
    }) do
        recipe.name = recipe.name .. '-sterilization'
        FUN.add_ingredient(recipe, {type = 'fluid', name = 'phosphorus-tricloride', amount = 1})
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'navens-culture-mk01',
        'navens-culture-mk02',
        'navens-culture-mk03',
        'navens-culture-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'navens-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-navens.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'navens-mk03', 'vonix', 'nuclear-power'},
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
            name = 'cytotoxicity',
            icon = '__pyalienlifegraphics3__/graphics/technology/cytotoxicity.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {speed = 0.08, type = 'module-effects'},
                {recipe = 'pre-pesticide-01-navens', type = 'unlock-recipe'},
                {old = 'navens-sample', new = 'navens-sample-with-vonix-gen', type = 'recipe-replacement'}
            },
        },
        {
            name = 'pre-sterilization',
            icon = '__pyalienlifegraphics3__/graphics/technology/pre-sterilization.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = 5, productivity = 0.2, type = 'module-effects'},
                {old = 'navens-spore', new = 'navens-spore-sterilization', type = 'recipe-replacement'},
                {old = 'navens-spore-2', new = 'navens-spore-2-sterilization', type = 'recipe-replacement'},
                {old = 'navens-spore-3', new = 'navens-spore-3-sterilization', type = 'recipe-replacement'},
                {old = 'navens-spore-mk02', new = 'navens-spore-mk02-sterilization', type = 'recipe-replacement'},
                {old = 'navens-spore-mk03', new = 'navens-spore-mk03-sterilization', type = 'recipe-replacement'},
                {old = 'navens-spore-mk04', new = 'navens-spore-mk04-sterilization', type = 'recipe-replacement'},
            }
        },
        {
            name = 'lichen',
            icon = '__pyalienlifegraphics3__/graphics/technology/lichen.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'full-render-navens-abomination', type = 'unlock-recipe'},
                {old = 'navens-1', new = 'navens-1-abomination', type = 'recipe-replacement'},
                {old = 'navens-2', new = 'navens-2-abomination', type = 'recipe-replacement'},
                {old = 'navens-3', new = 'navens-3-abomination', type = 'recipe-replacement'},
                {old = 'navens-4', new = 'navens-4-abomination', type = 'recipe-replacement'},
            },
        },
    },
    module_category = 'navens'
}