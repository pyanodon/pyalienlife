local FUN = require '__pycoalprocessing__/prototypes/functions/functions'

if data and not yafc_turd_integration then
    local biomass = {'nacl-biomass', 's-biomass', 'ni-biomass', 'ti-biomass'}
    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['bhoddos-1']),
        table.deepcopy(data.raw.recipe['bhoddos-2']),
        table.deepcopy(data.raw.recipe['bhoddos-3']),
        table.deepcopy(data.raw.recipe['bhoddos-4']),
    }) do
        recipe.name = recipe.name .. '-meltdown'
        recipe.energy_required = math.ceil(recipe.energy_required * 0.3333)
        FUN.remove_ingredient(recipe, 'fungal-substrate')
        FUN.remove_ingredient(recipe, 'fungal-substrate-02')
        FUN.remove_ingredient(recipe, 'fungal-substrate-03')
        FUN.remove_ingredient(recipe, 'biomass')
        FUN.remove_ingredient(recipe, 'moss')
        FUN.remove_ingredient(recipe, 'manure')
        FUN.remove_ingredient(recipe, 'bacteria-1-barrel')
        FUN.remove_result(recipe, 'empty-barrel')
        data:extend{recipe}
    end

    for i, recipe in pairs({
        table.deepcopy(data.raw.recipe['bhoddos-1']),
        table.deepcopy(data.raw.recipe['bhoddos-2']),
        table.deepcopy(data.raw.recipe['bhoddos-3']),
        table.deepcopy(data.raw.recipe['bhoddos-4']),
    }) do
        recipe.name = recipe.name .. '-exoenzymes'
        FUN.add_ingredient(recipe, {type = 'item', name = 'soil', amount = i})
        FUN.add_result(recipe, {type = 'item', name = 'plutonium-oxide', amount = i})
        recipe.main_product = 'plutonium-oxide'
        data:extend{recipe}
    end

    for i, spore in pairs({
        table.deepcopy(data.raw.recipe['bhoddos-spore']),
        table.deepcopy(data.raw.recipe['bhoddos-spore-3']),
    }) do
        spore.name = spore.name .. '-upgraded'
        spore.main_product = 'bhoddos-spore'
        spore.ingredients = {
            {'rich-dust', 1}
        }
        FUN.multiply_result_amount(spore, 'bhoddos-spore', 10)
        data:extend{spore}
    end

    local sporopollenin = table.deepcopy(data.raw.recipe['sporopollenin'])
    sporopollenin.name = 'sporopollenin-gills'
    FUN.remove_ingredient(sporopollenin, 'navens-spore')
    FUN.remove_ingredient(sporopollenin, 'rennea')
    data:extend{sporopollenin}

    local biomass_sporopollenin = table.deepcopy(data.raw.recipe['biomass-sporopollenin'])
    biomass_sporopollenin.name = biomass_sporopollenin.name .. '-nerfed'
    FUN.multiply_ingredient_amount(biomass_sporopollenin, 'sporopollenin', 3)
    biomass_sporopollenin.results = {
        {type = 'item', name = 'fungal-substrate', amount = 2}
    }
    biomass_sporopollenin.icons = nil
    biomass_sporopollenin.icon = nil
    biomass_sporopollenin.icon_size = nil
    biomass_sporopollenin.icon_mipmaps = nil
    data:extend{biomass_sporopollenin}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        'bhoddos-culture-mk01',
        'bhoddos-culture-mk02',
        'bhoddos-culture-mk03',
        'bhoddos-culture-mk04',
    },
    master_tech = { -- tech that is shown in the tech tree
        name = 'bhoddos-upgrade',
        icon = '__pyalienlifegraphics3__/graphics/technology/updates/u-bhoddos.png',
        icon_size = 128,
        order = 'c-a',
        prerequisites = {'bhoddos-mk02', 'phytomining', 'effectivity-module-2'},
        unit = {
            count = 500,
            ingredients = {
                {'automation-science-pack', 1},
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
            name = 'extra-drones',
            icon = '__pyalienlifegraphics3__/graphics/technology/extra-drones.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'bhoddos-1', new = 'bhoddos-1-meltdown', type = 'recipe-replacement'},
                {old = 'bhoddos-2', new = 'bhoddos-2-meltdown', type = 'recipe-replacement'},
                {old = 'bhoddos-3', new = 'bhoddos-3-meltdown', type = 'recipe-replacement'},
                {old = 'bhoddos-4', new = 'bhoddos-4-meltdown', type = 'recipe-replacement'},
            },
        },
        {
            name = 'exoenzymes',
            icon = '__pyalienlifegraphics3__/graphics/technology/exoenzymes.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {type = 'module-effects', consumption = 0.3},
                {old = 'bhoddos-1', new = 'bhoddos-1-exoenzymes', type = 'recipe-replacement'},
                {old = 'bhoddos-2', new = 'bhoddos-2-exoenzymes', type = 'recipe-replacement'},
                {old = 'bhoddos-3', new = 'bhoddos-3-exoenzymes', type = 'recipe-replacement'},
                {old = 'bhoddos-4', new = 'bhoddos-4-exoenzymes', type = 'recipe-replacement'},
            }
        },
        {
            name = 'gills',
            icon = '__pyalienlifegraphics3__/graphics/technology/gills.png',
            icon_size = 128,
            order = 'c-a',
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement'
                {old = 'bhoddos-spore', new = 'bhoddos-spore-upgraded', type = 'recipe-replacement'},
                {old = 'bhoddos-spore-3', new = 'bhoddos-spore-3-upgraded', type = 'recipe-replacement'},
                {type = 'recipe-replacement', old = 'sporopollenin', new = 'sporopollenin-gills'},
                {type = 'recipe-replacement', old = 'biomass-sporopollenin', new = 'biomass-sporopollenin-nerfed'}
            }
        }
    },
    module_category = 'bhoddos'
}