if data and not yafc_turd_integration then
    local recipe = data.raw.recipe['petri-dish-bacteria']

    local with_agar = table.deepcopy(recipe)
    local with_collagen = table.deepcopy(recipe)
    local with_enz = table.deepcopy(recipe)

    with_agar.name = 'petri-dish-bacteria-with-agar'
    with_collagen.name = 'petri-dish-bacteria-with-collagen'
    with_enz.name = 'petri-dish-bacteria-with-enzyme'

    with_agar:multiply_ingredient_amount('petri-dish', 2)
    with_collagen:multiply_ingredient_amount('petri-dish', 10)
    with_enz:multiply_ingredient_amount('petri-dish', 50)

    with_agar:multiply_result_amount('petri-dish-bacteria', 3)
    with_collagen:multiply_result_amount('petri-dish-bacteria', 15)
    with_enz:multiply_result_amount('petri-dish-bacteria', 125)

    with_agar:add_ingredient({'agar', 1})
    with_collagen:add_ingredient({'collagen', 1})
    with_enz:add_ingredient({'enzyme-pks', 1})

    with_agar.energy_required = 60
    with_collagen.energy_required = 200
    with_enz.energy_required = 1000

    data:extend{with_agar, with_collagen, with_enz}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'micro-mine-mk01',
        'micro-mine-mk02',
        'micro-mine-mk03',
        'micro-mine-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'micromine-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-micromine.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'microfilters-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'py-science-pack-2', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'adv',
            icon = '__pyalienlifegraphics3__/graphics/technology/adv.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = 'petri-dish-bacteria-with-agar', type = 'unlock-recipe'}
            },
        },
        {
            name = '4D',
            icon = '__pyalienlifegraphics3__/graphics/technology/4D.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = 'petri-dish-bacteria-with-collagen', type = 'unlock-recipe'}
            }
        },
        {
            name = 'dna-damage',
            icon = '__pyalienlifegraphics3__/graphics/technology/dna-damage.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
               {recipe = 'petri-dish-bacteria-with-enzyme', type = 'unlock-recipe'}
            }
        }
    }
}