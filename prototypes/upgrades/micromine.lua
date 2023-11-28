local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    local recipe = data.raw.recipe['petri-dish-bacteria']

    local with_agar = table.deepcopy(recipe)
    local with_collagen = table.deepcopy(recipe)
    local with_enz = table.deepcopy(recipe)

    with_agar.name = 'petri-dish-bacteria-with-agar'
    with_collagen.name = 'petri-dish-bacteria-with-collagen'
    with_enz.name = 'petri-dish-bacteria-with-enzyme'

    FUN.multiply_ingredient_amount(with_agar, 'petri-dish', 2)
    FUN.multiply_ingredient_amount(with_collagen, 'petri-dish', 10)
    FUN.multiply_ingredient_amount(with_enz, 'petri-dish', 50)

    FUN.multiply_result_amount(with_agar, 'petri-dish-bacteria', 3)
    FUN.multiply_result_amount(with_collagen, 'petri-dish-bacteria', 15)
    FUN.multiply_result_amount(with_enz, 'petri-dish-bacteria', 125)

    FUN.add_ingredient(with_agar, {'agar', 1})
    FUN.add_ingredient(with_collagen, {'collagen', 1})
    FUN.add_ingredient(with_enz, {'enzyme-pks', 1})

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
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'petri-dish-bacteria-with-agar', type = 'unlock-recipe'}
            },
        },
        {
            name = '4D',
            icon = '__pyalienlifegraphics3__/graphics/technology/4D.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {recipe = 'petri-dish-bacteria-with-collagen', type = 'unlock-recipe'}
            }
        },
        {
            name = 'dna-damage',
            icon = '__pyalienlifegraphics3__/graphics/technology/dna-damage.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
               {recipe = 'petri-dish-bacteria-with-enzyme', type = 'unlock-recipe'}
            }
        }
    }
}