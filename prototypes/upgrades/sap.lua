local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data then
    local water = table.deepcopy(data.raw.recipe['sap-01'])
    local co2 = table.deepcopy(data.raw.recipe['sap-01'])
    local air = table.deepcopy(data.raw.recipe['sap-01'])

    water.name = 'sap-01-water'
    co2.name = 'sap-01-co2'
    air.name = 'sap-01-air'

    FUN.add_ingredient(water, {type = 'fluid', name = 'water', amount = 200})
    FUN.add_ingredient(co2, {type = 'fluid', name = 'carbon-dioxide', amount = 30})
    FUN.add_ingredient(air, {type = 'fluid', name = 'pressured-air', amount = 200})

    data:extend{water, co2, air}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'sap-extractor-mk01',
        'sap-extractor-mk02',
        'sap-extractor-mk03',
        'sap-extractor-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'sap-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-sap.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'sap-mk03'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'py-science-pack-1', 1},
                {'logistic-science-pack', 1},
                {'py-science-pack-2', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'inoculator',
            icon = '__pyalienlifegraphics3__/graphics/technology/inoculator.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {productivity = 0.45, type = 'module-effects'},
                {old = 'sap-01', new = 'sap-01-water', type = 'recipe-replacement'},
            },
        },
        {
            name = 'patch',
            icon = '__pyalienlifegraphics3__/graphics/technology/patch.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {productivity = 0.5, type = 'module-effects'},
                {old = 'sap-01', new = 'sap-01-co2', type = 'recipe-replacement'},
            }
        },
        {
            name = 'bark',
            icon = '__pyalienlifegraphics3__/graphics/technology/bark.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'lock-recipe', 'recipe-replacement'
                {productivity = 0.55, type = 'module-effects'},
                {old = 'sap-01', new = 'sap-01-air', type = 'recipe-replacement'},
            }
        }
    },
    module_category = 'sap'
}