local description = {'', {'turd.font', {'turd.tech'}}, '\n', {'technology-description.turd-partial-respec'}}

local science_packs
if mods.pystellarexpedition then
    science_packs = {
        'automation-science-pack',
        'py-science-pack-1',
        'logistic-science-pack',
        'military-science-pack',
        'py-science-pack-2',
        'chemical-science-pack',
        'space-science-pack-2',
        'py-science-pack-3',
        'production-science-pack',
        'py-science-pack-4',
        'utility-science-pack',
        'space-science-pack',
    }
else
    science_packs = {
        'automation-science-pack',
        'py-science-pack-1',
        'logistic-science-pack',
        'py-science-pack-2',
        'chemical-science-pack',
        'py-science-pack-3',
        'production-science-pack',
        'py-science-pack-4',
        'utility-science-pack',
        'space-science-pack',
    }
end

local offset = 4

local ingredients = {}
for i = offset, #science_packs - 1 do
    pack = science_packs[i]
    ingredients[i] = {pack, 1}
    TECHNOLOGY {
        type = 'technology',
        name = 'turd-partial-respec-' .. (i-offset+1),
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/restart.png',
        icon_size = 128,
        prerequisites = i ~= offset and {'turd-partial-respec-' .. (i-offset)} or {'ulric-upgrade'},    
        effects = {},
        unit = {
            count = 50,
            ingredients = table.deepcopy(ingredients),
            time = 30,
        },
        upgrade = true,
        is_turd = true,
        localised_description = {'', {'turd.font', {'turd.tech'}}, '\n', {'technology-description.turd-partial-respec'}}
    }
end

ingredients[#science_packs] = {science_packs[#science_packs], 1}

TECHNOLOGY {
    type = 'technology',
    name = 'turd-partial-respec-' .. (#science_packs - offset),
    icon = '__pyalienlifegraphics3__/graphics/technology/updates/restart.png',
    icon_size = 128,
    prerequisites = {'turd-partial-respec-' .. (#science_packs - 1 - offset)},
    effects = {},
    unit = {
        count_formula = '2^(L-' .. (#science_packs - offset) .. ')*2500',
        ingredients = ingredients,
        time = 1800,
    },
    max_level = 'infinite',
    is_turd = true,
    upgrade = true,
    localised_description = {'', {'turd.font', {'turd.tech'}}, '\n', {'technology-description.turd-partial-respec'}}
}
