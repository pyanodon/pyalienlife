if data and not yafc_turd_integration then
    for i, recipe in pairs {
        RECIPE("kicalk-1"):copy(),
        RECIPE("kicalk-2"):copy(),
        RECIPE("kicalk-3"):copy(),
        RECIPE("kicalk-4"):copy(),
        RECIPE("kicalk-5"):copy(),
    } do
        recipe.name = recipe.name .. "-dry"
        local amount = recipe.results[1].amount
        recipe:remove_result("kicalk")
        recipe:add_result{type = "item", name = "kicalk-dry", amount = math.floor(amount / 2)}
        recipe:add_result{type = "item", name = "kicalk",     amount = math.ceil(amount * 0.35)}
        recipe.main_product = "kicalk-dry"
        recipe.energy_required = math.ceil(recipe.energy_required * 0.8)
        data:extend {recipe}
    end

    data:extend {{
        type = "recipe",
        name = "heating-system-cheap",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 20,
        results = {
            {type = "item", name = "heating-system", amount = 1},
        },
        ingredients = {
            {type = "item",  name = "tinned-cable",       amount = 1},
            {type = "item",  name = "heatsink",           amount = 2},
            {type = "fluid", name = "vacuum",             amount = 100},
            {type = "fluid", name = "water",              amount = 100},
            {type = "item",  name = "electronic-circuit", amount = 1},
        },
    }}

    data:extend {{
        type = "recipe",
        name = "kicalk-dry-bedding",
        category = "wpu",
        enabled = false,
        energy_required = 3.5,
        ingredients = {
            {type = "item", name = "kicalk-dry",  amount = 1},
            {type = "item", name = "dried-grods", amount = 1},
        },
        results = {
            {type = "item", name = "bedding", amount = 1},
        },
    }}

    for i, recipe in pairs {
        RECIPE("kicalk-plantation-mk01"):copy(),
        RECIPE("kicalk-plantation-mk02"):copy(),
        RECIPE("kicalk-plantation-mk03"):copy(),
        RECIPE("kicalk-plantation-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-with-mesh"
        recipe:add_ingredient {name = "heating-system", amount = i, type = "item"}
        data:extend {recipe}
    end

    for i, recipe in pairs {
        RECIPE("kicalk-1"):copy(),
        RECIPE("kicalk-2"):copy(),
        RECIPE("kicalk-3"):copy(),
        RECIPE("kicalk-4"):copy(),
        RECIPE("kicalk-5"):copy(),
    } do
        recipe.name = recipe.name .. "-saline"
        recipe:add_result {type = "item", name = "kicalk-seeds", amount = i * 4}
        recipe:remove_ingredient("water")
        recipe:add_ingredient {type = "fluid", amount = 200, name = "water-saline", fluidbox_index = 1}
        recipe.main_product = "kicalk"
        recipe.energy_required = math.ceil(recipe.energy_required * 0.8)
        data:extend {recipe}
    end

    local other_species = {
        {
            {{"guar-seeds", 1}, {"guar", 2}},
        },
        {
            {{"ralesia-seeds", 1}, {"ralesia", 2}},
            {{"rennea-seeds", 1},  {"rennea", 1}},
        },
        {
            {{"tuuphra-seeds", 2}, {"tuuphra", 4}},
            {{"grod-seeds", 2},    {"grod", 3}},
        },
        {
            {{"yotoi-seeds", 1},          {"yotoi", 4}},
            {{"cadaveric-arum-seeds", 3}, {"cadaveric-arum", 2}},
        },
        {
            {{"cridren-seeds", 3}, {"cridren", 3}},
        }
    }

    for i, recipe in pairs {
        RECIPE("kicalk-1"):copy(),
        RECIPE("kicalk-2"):copy(),
        RECIPE("kicalk-3"):copy(),
        RECIPE("kicalk-4"):copy(),
        RECIPE("kicalk-5"):copy(),
    } do
        recipe.name = recipe.name .. "-rotation"
        recipe.main_product = "kicalk"
        for _, other in pairs(other_species[i]) do
            recipe:add_ingredient(other[1])
            recipe:add_result(other[2])
            recipe.main_product = other[2].name
        end
        if i == 5 then
            recipe:add_ingredient {"ulric-cub", 1}
        end
        recipe:multiply_result_amount("kicalk", 1.35)
        data:extend {recipe}
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "kicalk-plantation-mk01",
        "kicalk-plantation-mk02",
        "kicalk-plantation-mk03",
        "kicalk-plantation-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "kicalk-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-kicalk.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"kicalk-mk03"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"chemical-science-pack",   1},
                {"py-science-pack-3",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "wire-netting",
            icon = "__pyalienlifegraphics3__/graphics/technology/wire-netting.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "biomass-kicalk-dry",   type = "unlock-recipe"},
                {recipe = "kicalk-dry-bedding",   type = "unlock-recipe"},
                {recipe = "heatsink",             type = "unlock-recipe",                   also_unlocked_by_techs = true},
                {recipe = "heating-system-cheap", type = "unlock-recipe"},
                {old = "kicalk-plantation-mk01",  new = "kicalk-plantation-mk01-with-mesh", type = "recipe-replacement"},
                {old = "kicalk-plantation-mk02",  new = "kicalk-plantation-mk02-with-mesh", type = "recipe-replacement"},
                {old = "kicalk-plantation-mk03",  new = "kicalk-plantation-mk03-with-mesh", type = "recipe-replacement"},
                {old = "kicalk-plantation-mk04",  new = "kicalk-plantation-mk04-with-mesh", type = "recipe-replacement"},
                {old = "kicalk-1",                new = "kicalk-1-dry",                     type = "recipe-replacement"},
                {old = "kicalk-2",                new = "kicalk-2-dry",                     type = "recipe-replacement"},
                {old = "kicalk-3",                new = "kicalk-3-dry",                     type = "recipe-replacement"},
                {old = "kicalk-4",                new = "kicalk-4-dry",                     type = "recipe-replacement"},
                {old = "kicalk-5",                new = "kicalk-5-dry",                     type = "recipe-replacement"},
            },
        },
        {
            name = "extra-water",
            icon = "__pyalienlifegraphics3__/graphics/technology/extra-water.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "kicalk-1", new = "kicalk-1-saline", type = "recipe-replacement"},
                {old = "kicalk-2", new = "kicalk-2-saline", type = "recipe-replacement"},
                {old = "kicalk-3", new = "kicalk-3-saline", type = "recipe-replacement"},
                {old = "kicalk-4", new = "kicalk-4-saline", type = "recipe-replacement"},
                {old = "kicalk-5", new = "kicalk-5-saline", type = "recipe-replacement"},
            }
        },
        {
            name = "crop-rotation",
            icon = "__pyalienlifegraphics3__/graphics/technology/crop-rotation.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "kicalk-1", new = "kicalk-1-rotation", type = "recipe-replacement"},
                {old = "kicalk-2", new = "kicalk-2-rotation", type = "recipe-replacement"},
                {old = "kicalk-3", new = "kicalk-3-rotation", type = "recipe-replacement"},
                {old = "kicalk-4", new = "kicalk-4-rotation", type = "recipe-replacement"},
                {old = "kicalk-5", new = "kicalk-5-rotation", type = "recipe-replacement"},
            }
        }
    },
    module_category = "kicalk"
}
