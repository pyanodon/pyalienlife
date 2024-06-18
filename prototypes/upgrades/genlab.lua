if data and not yafc_turd_integration then
    local adam = RECIPE('adam42-gen'):copy()
    adam.name = 'adam42-gen-laser'
    adam:add_ingredient({name = 'personal-laser-defense-equipment', amount = 1, type = 'item'})
    adam:add_result({name = 'personal-laser-defense-equipment', amount = 1, type = 'item', probability = 0.99, catalyst_amount = 1})
    adam:remove_result('adam42-gen')
    adam:add_result({name = 'adam42-gen', type = 'item', amount_min = 1, amount_max = 2})
    adam.energy_required = adam.energy_required * 4
    adam.main_product = 'adam42-gen'

    local pks = RECIPE('enzyme-pks'):copy()
    pks.name = 'enzyme-pks-nickel-carbonyl'
    pks:add_ingredient({name = 'nickel-carbonyl', amount = 200, type = 'fluid'})
    pks:multiply_result_amount('enzyme-pks', 2)
    pks.energy_required = pks.energy_required * 2
    pks.main_product = 'enzyme-pks'

    local hmas = RECIPE('hmas'):copy()
    hmas.name = 'hmas-pvp'
    hmas:add_ingredient({name = 'pvp', amount = 2, type = 'item'})
    hmas:multiply_result_amount('hmas', 2.5)
    hmas.energy_required = hmas.energy_required * 3

    data:extend{adam, pks, hmas}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'genlab-mk01',
        'genlab-mk02',
        'genlab-mk03',
        'genlab-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'genlab-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-genlab.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'biotech-machines-mk03', 'personal-laser-defense-equipment'},
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
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'hsn',
            icon = '__pyalienlifegraphics3__/graphics/technology/hsn.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = 'adam42-gen', new = 'adam42-gen-laser', type = 'recipe-replacement'}
            },
        },
        {
            name = 'enn',
            icon = '__pyalienlifegraphics3__/graphics/technology/enn.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = 'enzyme-pks', new = 'enzyme-pks-nickel-carbonyl', type = 'recipe-replacement'}
            }
        },
        {
            name = 'dwx',
            icon = '__pyalienlifegraphics3__/graphics/technology/dwx.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = 'hmas', new = 'hmas-pvp', type = 'recipe-replacement'}
            }
        }
    }
}