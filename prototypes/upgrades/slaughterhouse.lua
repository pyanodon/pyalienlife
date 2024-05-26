local pyAE = (data and mods.pyalternativeenergy) or (script and script.active_mods.pyalternativeenergy)
local pySE = (data and mods.pystellarexpedition) or (script and script.active_mods.pystellarexpedition)

local rendering_recipes = {
    'full-render-zipir',
    'full-render-dhilmoss',
    'full-render-xenos',
    'full-render-kor',
    'full-render-auogs',
    'ex-used-auog',
    'full-render-mukmoux',
    'full-render-scrondrixs',
    'full-render-ulrics',
    'full-render-phagnots',
    'full-render-simik',
    'full-render-cottongut',
    'full-render-arthurian',
    'full-render-arqads',
    'full-render-phadais',
    'ex-used-dingrits',
    'full-render-dingrits',
    'full-render-kmauts',
    'full-render-trit',
    'full-render-vonix',
    'full-render-vrauks',
    'full-render-xyhiphoe',
    'full-render-fish',
}
if pyAE then
    table.insert(rendering_recipes, 'full-render-num')
    table.insert(rendering_recipes, 'full-render-zun')
end
if pySE then
    table.insert(rendering_recipes, 'full-render-kakkalakki')
    --table.insert(rendering_recipes, 'full-render-riga')
    --table.insert(rendering_recipes, 'full-render-tuls')
end
local effects = {laser = {}, music = {}, lard = {}}

if data and not yafc_turd_integration then
    local things_to_add = {
        laser = {ingredients = {{type = 'item', name = 'laser-turret', amount = 1}}, results = {{type = 'item', name = 'laser-turret', amount = 1, probability = 0.999}}},
        music = {ingredients = {{type = 'item', name = 'programmable-speaker', amount = 1}}, results = {{type = 'item', name = 'programmable-speaker', amount = 1, probability = 0.99}}},
        lard = {ingredients = {{type = 'fluid', name = 'grease', amount = 3}}, results = {}}
    }

    local products_to_buff = {
        laser = {'blood', 'mukmoux-fat', 'sulfuric-acid', 'bones', 'brain'},
        music = {'skin', 'carapace', 'pelt', 'chitin', 'shell', 'fish-oil', 'photophore'},
        lard = {'meat', 'arthropod-blood', 'guts', 'formic-acid', 'bonemeal', 'tendon', 'keratin'}
    }

    for _, path in pairs{'laser', 'music', 'lard'} do
        for _, recipe_name in pairs(rendering_recipes) do
            local recipe = RECIPE(recipe_name):copy(function(r) return r.name .. '-' .. path end)
            recipe.localised_name = recipe.localised_name or {'recipe-name.'..recipe_name}
            for _, ingredient in pairs(things_to_add[path].ingredients) do
                recipe:add_ingredient(ingredient)
            end
            for _, result in pairs(things_to_add[path].results) do
                recipe:add_result(result)
            end
            for _, product in pairs(products_to_buff[path]) do
                if product == 'brain' then
                    for _, result in pairs(recipe.results) do
                        if (result[1] or result.name) == 'brain' then
                            recipe:add_result({name = 'brain', amount = 1, type = 'item', probability = 0.05})
                            break
                        end
                    end
                else
                    recipe:multiply_result_amount(product, 2)
                end
            end
            data:extend{recipe}
            table.insert(effects[path], {old = recipe_name, new = recipe.name, type = 'recipe-replacement'})
        end
    end
elseif script then
    for _, path in pairs{'laser', 'music', 'lard'} do
        for _, recipe_name in pairs(rendering_recipes) do
            table.insert(effects[path], {old = recipe_name, new = recipe_name .. '-' .. path, type = 'recipe-replacement'})
        end
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'slaughterhouse-mk01',
        'slaughterhouse-mk02',
        'slaughterhouse-mk03',
        'slaughterhouse-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'slaughterhouse-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-slaugterhouse.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'laser-turret', 'biotech-machines-mk02'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
                {'logistic-science-pack', 1},
                {'military-science-pack', 1},
                {'chemical-science-pack', 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = 'laser-cutting',
            icon = '__pyalienlifegraphics3__/graphics/technology/laser-cutting.png',
            icon_size = 128,
            order = 'c-a',
            effects = effects.laser,
        },
        {
            name = 'mercy-killing',
            icon = '__pyalienlifegraphics3__/graphics/technology/mercy-killing.png',
            icon_size = 128,
            order = 'c-a',
            effects = effects.music
        },
        {
            name = 'lard-machine',
            icon = '__pyalienlifegraphics3__/graphics/technology/lard-machine.png',
            icon_size = 128,
            order = 'c-a',
            effects = effects.lard
        }
    }
}