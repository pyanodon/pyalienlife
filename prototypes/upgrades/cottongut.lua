local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    local cottongut_sciences = {'solidified-sarcorus', 'paragen', 'negasium', 'nonconductive-phazogen', 'denatured-seismite', 'denatured-seismite'}
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['cottongut-science-red-seeds']),
        table.deepcopy(data.raw.recipe['cottongut-science-green-seeds']),
        table.deepcopy(data.raw.recipe['cottongut-science-blue-seeds']),
        table.deepcopy(data.raw.recipe['cottongut-science-py-seeds']),
        table.deepcopy(data.raw.recipe['cottongut-science-prod-seeds']),
        table.deepcopy(data.raw.recipe['denatured-seismite-2']),
    }) do
        recipe.name = recipe.name .. '-80-20'
        FUN.add_result_amount(recipe, cottongut_sciences[i], 1)
        recipe.energy_required = recipe.energy_required * 5
        data:extend{recipe}
    end

    data:extend{{
        type = 'recipe',
        name = 'cottongut-food-03',
        enabled = false,
        energy_required = 10,
        category = 'crafting-with-fluid',
        ingredients = {
            {'bones', 10},
            {'moondrop', 1},
            {'cottongut-pup', 1},
            {'tin-plate', 2},
            {type = 'fluid', name = 'subcritical-water', amount = 50},
            {'seaweed', 10},
            {'wood-seeds', 2},
            {'native-flora', 15}
        },
        results = {{'cottongut-food-03', 8}}
    }}

    for _, recipe in pairs({
        table.deepcopy(data.raw.recipe['caged-cottongut-1']),
        table.deepcopy(data.raw.recipe['caged-cottongut-2']),
        table.deepcopy(data.raw.recipe['caged-cottongut-3']),
        table.deepcopy(data.raw.recipe['caged-cottongut-4']),
    }) do
        recipe.name = recipe.name .. '-cannibal'
        FUN.add_ingredient(recipe, {name = 'cottongut-food-03', amount = 1, type = 'item'})
        FUN.multiply_result_amount(recipe, 'cottongut', 1.5)
        recipe.energy_required = math.ceil(recipe.energy_required * 0.85)
        data:extend{recipe}
    end

    local metals = {'high-grade-lead', 'reduced-chromium', 'reduced-silver', 'high-grade-quartz'}
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['prandium-lab-mk01']),
        table.deepcopy(data.raw.recipe['prandium-lab-mk02']),
        table.deepcopy(data.raw.recipe['prandium-lab-mk03']),
        table.deepcopy(data.raw.recipe['prandium-lab-mk04']),
    }) do
        recipe.name = recipe.name .. '-ultrasound'
        FUN.add_ingredient(recipe, {name = metals[i], amount = 80, type = 'item'})
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'prandium-lab-mk01',
        'prandium-lab-mk02',
        'prandium-lab-mk03',
        'prandium-lab-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'cottongut-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-cottongut.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'cottongut-science-mk03', 'lead-mk03'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'chemical-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'igm',
            icon = '__pyalienlifegraphics3__/graphics/technology/igm.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'cottongut-science-red-seeds', new = 'cottongut-science-red-seeds-80-20', type = 'recipe-replacement'},
                {old = 'cottongut-science-green-seeds', new = 'cottongut-science-green-seeds-80-20', type = 'recipe-replacement'},
                {old = 'cottongut-science-blue-seeds', new = 'cottongut-science-blue-seeds-80-20', type = 'recipe-replacement'},
                {old = 'cottongut-science-py-seeds', new = 'cottongut-science-py-seeds-80-20', type = 'recipe-replacement'},
                {old = 'cottongut-science-prod-seeds', new = 'cottongut-science-prod-seeds-80-20', type = 'recipe-replacement'},
                {old = 'denatured-seismite-2', new = 'denatured-seismite-2-80-20', type = 'recipe-replacement'},
            },
        },
        {
            name = 'ts',
            icon = '__pyalienlifegraphics3__/graphics/technology/ts.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'cottongut-food-03', type = 'unlock-recipe'},
                {old = 'caged-cottongut-1', new = 'caged-cottongut-1-cannibal', type = 'recipe-replacement'},
                {old = 'caged-cottongut-2', new = 'caged-cottongut-2-cannibal', type = 'recipe-replacement'},
                {old = 'caged-cottongut-3', new = 'caged-cottongut-3-cannibal', type = 'recipe-replacement'},
                {old = 'caged-cottongut-4', new = 'caged-cottongut-4-cannibal', type = 'recipe-replacement'},
            }
        },
        {
            name = 'ud',
            icon = '__pyalienlifegraphics3__/graphics/technology/ud.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {consumption = 0.25, speed = 0.3, productivity = 0.1, type = 'module-effects'},
                {old = 'prandium-lab-mk01', new = 'prandium-lab-mk01-ultrasound', type = 'recipe-replacement'},
                {old = 'prandium-lab-mk02', new = 'prandium-lab-mk02-ultrasound', type = 'recipe-replacement'},
                {old = 'prandium-lab-mk03', new = 'prandium-lab-mk03-ultrasound', type = 'recipe-replacement'},
                {old = 'prandium-lab-mk04', new = 'prandium-lab-mk04-ultrasound', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'cottongut'
}