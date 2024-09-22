if data and not yafc_turd_integration then
    data.raw.recipe['energy-drinkb'].category = 'chemistry'

    for i, recipe in pairs({
        RECIPE('Phadai-Dance-Dance-Revolution-1'):copy(),
        RECIPE('Phadai-Dance-Dance-Revolution-2'):copy(),
        RECIPE('Phadai-Dance-Dance-Revolution-3'):copy(),
        RECIPE('Phadai-Dance-Dance-Revolution-4'):copy(),
    }) do
        recipe.name = recipe.name .. '-piezoelectric'
        recipe:add_ingredient({name = 'crystallographic-substrate', amount = 2 * i, type = 'item'})
        recipe:add_result({name = 'proton-donor', amount = 6 * i, type = 'item'})
        recipe.main_product = 'proton-donor'
        data:extend{recipe}
    end

    for _, recipe in pairs({
        RECIPE('Phadai-Dance-Dance-Revolution-1'):copy(),
        RECIPE('Phadai-Dance-Dance-Revolution-2'):copy(),
        RECIPE('Phadai-Dance-Dance-Revolution-3'):copy(),
        RECIPE('Phadai-Dance-Dance-Revolution-4'):copy(),
    }) do
        recipe.name = recipe.name .. '-dubstep'
        recipe:multiply_result_amount('carapace', 2)
        recipe:add_result_amount('used-phadai', -1)
        data:extend{recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'phadai-enclosure-mk01',
        'phadai-enclosure-mk02',
        'phadai-enclosure-mk03',
        'phadai-enclosure-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'phadai-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-phadai.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'phadai'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
                {'py-science-pack-2', 1},
                {'chemical-science-pack', 1},
                {'py-science-pack-3', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'ethanol-boost',
            icon = '__pyalienlifegraphics3__/graphics/technology/ethanol-boost.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {speed = 0.25, productivity = 0.1, type = 'module-effects'},
                {old = 'energy-drink', new = 'energy-drinkb', type = 'recipe-replacement'}
            },
        },
        {
            name = 'piezoelectric-floor',
            icon = '__pyalienlifegraphics3__/graphics/technology/piezoelectric-floor.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = 'Phadai Dance Dance Revolution 1', new = 'Phadai Dance Dance Revolution 1-piezoelectric', type = 'recipe-replacement'},
                {old = 'Phadai Dance Dance Revolution 2', new = 'Phadai Dance Dance Revolution 2-piezoelectric', type = 'recipe-replacement'},
                {old = 'Phadai Dance Dance Revolution 3', new = 'Phadai Dance Dance Revolution 3-piezoelectric', type = 'recipe-replacement'},
                {old = 'Phadai Dance Dance Revolution 4', new = 'Phadai Dance Dance Revolution 4-piezoelectric', type = 'recipe-replacement'},
            }
        },
        {
            name = 'dubstep-track',
            icon = '__pyalienlifegraphics3__/graphics/technology/dubstep-track.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = 'Phadai Dance Dance Revolution 1', new = 'Phadai Dance Dance Revolution 1-dubstep', type = 'recipe-replacement'},
                {old = 'Phadai Dance Dance Revolution 2', new = 'Phadai Dance Dance Revolution 2-dubstep', type = 'recipe-replacement'},
                {old = 'Phadai Dance Dance Revolution 3', new = 'Phadai Dance Dance Revolution 3-dubstep', type = 'recipe-replacement'},
                {old = 'Phadai Dance Dance Revolution 4', new = 'Phadai Dance Dance Revolution 4-dubstep', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'phadai'
}
