local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data then
    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['caged-antelope-1']),
        table.deepcopy(data.raw.recipe['caged-antelope-2']),
        table.deepcopy(data.raw.recipe['caged-antelope-3']),
        table.deepcopy(data.raw.recipe['caged-antelope-4']),
        table.deepcopy(data.raw.recipe['caged-antelope-5']),
        table.deepcopy(data.raw.recipe['caged-antelope-6']),
        table.deepcopy(data.raw.recipe['caged-antelope-7']),
        table.deepcopy(data.raw.recipe['caged-antelope-8']),
    }) do
        recipe.name = recipe.name .. '-5th-dimension'
        for _, result in pairs(recipe.results) do
            if result.name == 'caged-antelope' then
                result.probability = result.probability + 0.1
            end
        end
        data:extend{recipe}
    end

    local strangelets = table.deepcopy(data.raw.recipe['full-render-antelope'])
    strangelets.name = 'full-render-antelope-existential'
    strangelets.main_product = 'strangelets'
    FUN.add_result(strangelets, {type = 'item', name = 'strangelets', probability = 0.25, amount = 1})
    data:extend{strangelets}

    data:extend{{
        type = 'recipe',
        name = 'quantum-dots-antelope',
        ingredients = {{'dimensional-gastricorg', 1}},
        enabled = false,
        category = 'antelope',
        results = {
            {type = 'item', name = 'quantum-dots', amount = 1},
            {type = 'item', name = 'quantum-dots', probability = 0.333, amount = 8},
            {type = 'item', name = 'quantum-dots', amount_min = 7, amount_max = 11},
            {type = 'item', name = 'quantum-dots', amount = 2},
            {type = 'item', name = 'quantum-dots', probability = 0.5, amount = 5},
            {type = 'item', name = 'quantum-dots', amount_min = 1, amount_max = 2},
        },
        main_product = 'quantum-dots',
        energy_required = 60,
        subgroup = 'py-alienlife-antelope'
    }}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'antelope-enclosure-mk01'
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'schrodinger-antelope-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-antelope.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'schrodinger-antelope'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
                {'military-science-pack', 1},
                {'py-science-pack-2', 1},
                {'chemical-science-pack', 1},
                {'py-science-pack-3', 1},
                {'production-science-pack', 1},
                {'py-science-pack-4', 1},
                {'utility-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'pentadimensional',
            icon = '__pyalienlifegraphics3__/graphics/technology/pentadimensional.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {consumption = 55.55, type = 'module-effects'},
                {old = 'caged-antelope-1', new = 'caged-antelope-1-5th-dimension', type = 'recipe-replacement'},
                {old = 'caged-antelope-2', new = 'caged-antelope-2-5th-dimension', type = 'recipe-replacement'},
                {old = 'caged-antelope-3', new = 'caged-antelope-3-5th-dimension', type = 'recipe-replacement'},
                {old = 'caged-antelope-4', new = 'caged-antelope-4-5th-dimension', type = 'recipe-replacement'},
                {old = 'caged-antelope-5', new = 'caged-antelope-5-5th-dimension', type = 'recipe-replacement'},
                {old = 'caged-antelope-6', new = 'caged-antelope-6-5th-dimension', type = 'recipe-replacement'},
                {old = 'caged-antelope-7', new = 'caged-antelope-7-5th-dimension', type = 'recipe-replacement'},
                {old = 'caged-antelope-8', new = 'caged-antelope-8-5th-dimension', type = 'recipe-replacement'},
            },
        },
        {
            name = 'existential-hazard',
            icon = '__pyalienlifegraphics3__/graphics/technology/existential-hazard.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {speed = -0.1, type = 'module-effects'},
                {old = 'full-render-antelope', new = 'full-render-antelope-existential', type = 'recipe-replacement'},
            }
        },
        {
            name = 'higgs-field',
            icon = '__pyalienlifegraphics3__/graphics/technology/higgs-field.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {recipe = 'quantum-dots-antelope', type = 'unlock-recipe'}
            }
        }
    },
    module_category = 'antelope'
}