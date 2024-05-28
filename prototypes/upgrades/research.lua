if data and not yafc_turd_integration then
    local py_science_1 = RECIPE('py-science-pack-1'):copy()
    local py_science_2 = RECIPE('py-science-pack-2'):copy()
    local py_science_3 = RECIPE('py-science-pack-3'):copy()
    local py_science_4 = RECIPE('py-science-pack-4'):copy()

    py_science_1.name = py_science_1.name .. '-turd'
    py_science_2.name = py_science_2.name .. '-turd'
    py_science_3.name = py_science_3.name .. '-turd'
    py_science_4.name = py_science_4.name .. '-turd'

    py_science_1:add_ingredient({name = 'chitin', amount = 5, type = 'item'})
    py_science_2:add_ingredient({name = 'sl-concentrate', amount = 4, type = 'item'})
    if mods.pyalternativeenergy then py_science_3:add_ingredient({name = 'passivation-layer', amount = 2, type = 'item'}) end
    py_science_4:add_ingredient({name = 'mova-pulp3', amount = 100, type = 'fluid'})

    py_science_1:add_result_amount('py-science-pack-1', 2)
    py_science_2:add_result_amount('py-science-pack-2', 6)
    py_science_3:add_result_amount('py-science-pack-3', 1)
    py_science_4:add_result_amount('py-science-pack-4', 1)

    data:extend{py_science_1, py_science_2, py_science_3, py_science_4}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'research-center-mk01',
        'research-center-mk02',
        'research-center-mk03',
        'research-center-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'research-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-research.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'biotech-machines-mk02', 'lead-mk03'},
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
            name = 'unstable',
            icon = '__pyalienlifegraphics3__/graphics/technology/unstable.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = 'py-science-pack-1', new = 'py-science-pack-1-turd', type = 'recipe-replacement'}
            },
        },
        {
            name = 'ms',
            icon = '__pyalienlifegraphics3__/graphics/technology/ms.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = 'py-science-pack-2', new = 'py-science-pack-2-turd', type = 'recipe-replacement'}
            },
        },
        {
            name = 'spg',
            icon = '__pyalienlifegraphics3__/graphics/technology/spg.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = 'py-science-pack-3', new = 'py-science-pack-3-turd', type = 'recipe-replacement'}
            }
        },
        {
            name = 'mci',
            icon = '__pyalienlifegraphics3__/graphics/technology/mci.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = 'py-science-pack-4', new = 'py-science-pack-4-turd', type = 'recipe-replacement'}
            }
        },
    }
}