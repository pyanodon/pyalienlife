local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    local manure = table.deepcopy(data.raw.recipe['manure-bacteria'])
    manure.name = 'manure-bacteria-fish'
    FUN.add_ingredient(manure, {name = 'fish-hydrolysate', type = 'fluid', amount = 5})
    FUN.multiply_result_amount(manure, 'manure-bacteria', 1.5)

    local darkness = table.deepcopy(data.raw.recipe['zogna-bacteria'])
    FUN.remove_ingredient(darkness, 'small-lamp')
    darkness.name = 'zogna-bacteria-darkness'
    darkness.energy_required = 8

    local icd = table.deepcopy(data.raw.recipe['bio-sample'])
    icd.name = 'bio-sample-icd'
    FUN.add_ingredient(icd, {name = 'pressured-air', type = 'fluid', amount = 50})
    FUN.add_ingredient(icd, {name = 'pressured-water', type = 'fluid', amount = 50})
    icd.results = {{name = 'bio-sample', amount_max = 2, type = 'item', amount_min = 1}}

    data:extend{darkness, manure, icd}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'incubator-mk01',
        'incubator-mk02',
        'incubator-mk03',
        'incubator-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'incubator-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-incubator.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'microbiology-mk02', 'fertilizer-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'gs',
            icon = '__pyalienlifegraphics3__/graphics/technology/gs.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'manure-bacteria', new = 'manure-bacteria-fish', type = 'recipe-replacement'}
            },
        },
        {
            name = 'zero',
            icon = '__pyalienlifegraphics3__/graphics/technology/zero.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'zogna-bacteria', new = 'zogna-bacteria-darkness', type = 'recipe-replacement'}
            }
        },
        {
            name = 'icd',
            icon = '__pyalienlifegraphics3__/graphics/technology/icd.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'bio-sample', new = 'bio-sample-icd', type = 'recipe-replacement'}
            }
        }
    }
}