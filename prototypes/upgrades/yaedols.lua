if data and not yafc_turd_integration then
    for _, recipe in pairs {
        RECIPE("yaedols-spores"):copy(),
        RECIPE("yaedols-spores-2"):copy(),
        RECIPE("yaedols-spores-3"):copy(),
        RECIPE("yaedols-spore-mk02"):copy(),
        RECIPE("yaedols-spore-mk03"):copy(),
        RECIPE("yaedols-spore-mk04"):copy(),
    } do
        recipe.name = recipe.name .. "-coke-oven-gas"
        recipe:add_ingredient {minimum_temperature = 100, name = "coke-oven-gas", type = "fluid", amount = 1}
        data:extend {recipe}
    end

    for _, recipe in pairs {
        RECIPE("yaedols-1"):copy(),
        RECIPE("yaedols-2"):copy(),
        RECIPE("yaedols-3"):copy(),
        RECIPE("yaedols-4"):copy(),
    } do
        recipe.name = recipe.name .. "-hot-air"
        recipe:add_ingredient {name = "hot-air", amount = 60, type = "fluid", fluidbox_index = 2}
        recipe:add_result {name = "cold-air", amount = 60, type = "fluid"}
        recipe.main_product = "cold-air"
        recipe.energy_required = math.ceil(recipe.energy_required * 0.9)

        local _, amount_removed = recipe:remove_ingredient("nitrogen")
        local nitrogen_barrels = math.ceil(amount_removed / 50)
        if nitrogen_barrels > 0 then
            recipe:add_ingredient {name = "nitrogen-barrel", amount = nitrogen_barrels, type = "item"}
            local _, amount_removed = recipe:remove_result("barrel")
            nitrogen_barrels = nitrogen_barrels + amount_removed
            recipe:add_result {"barrel", nitrogen_barrels}
        end

        data:extend {recipe}
    end

    local spore = RECIPE("yaedols-spores"):copy()
    spore.energy_required = 2
    spore.results = {
        {type = "item",  probability = 0.9,    name = "yaedols-spores", amount = 4},
        {type = "fluid", name = "waste-water", amount = 5}
    }
    spore.main_product = "yaedols-spores"
    spore.name = "yaedols-spore-4"
    data:extend {spore}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "yaedols-culture-mk01",
        "yaedols-culture-mk02",
        "yaedols-culture-mk03",
        "yaedols-culture-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "yaedols-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-yaedols.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"yaedols-mk02"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"py-science-pack-2",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "sub-s",
            icon = "__pyalienlifegraphics3__/graphics/technology/sub-s.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {speed = 0.1,                productivity = 0.2,                       type = "module-effects"},
                {old = "yaedols-spores",     new = "yaedols-spores-coke-oven-gas",     type = "recipe-replacement"},
                {old = "yaedols-spores-2",   new = "yaedols-spores-2-coke-oven-gas",   type = "recipe-replacement"},
                {old = "yaedols-spores-3",   new = "yaedols-spores-3-coke-oven-gas",   type = "recipe-replacement"},
                {old = "yaedols-spore-mk02", new = "yaedols-spore-mk02-coke-oven-gas", type = "recipe-replacement"},
                {old = "yaedols-spore-mk03", new = "yaedols-spore-mk03-coke-oven-gas", type = "recipe-replacement"},
                {old = "yaedols-spore-mk04", new = "yaedols-spore-mk04-coke-oven-gas", type = "recipe-replacement"},
            },
        },
        {
            name = "duct",
            icon = "__pyalienlifegraphics3__/graphics/technology/duct.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "yaedols-1", new = "yaedols-1-hot-air", type = "recipe-replacement"},
                {old = "yaedols-2", new = "yaedols-2-hot-air", type = "recipe-replacement"},
                {old = "yaedols-3", new = "yaedols-3-hot-air", type = "recipe-replacement"},
                {old = "yaedols-4", new = "yaedols-4-hot-air", type = "recipe-replacement"},
            }
        },
        {
            name = "humidity-control",
            icon = "__pyalienlifegraphics3__/graphics/technology/humidity-control.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "yaedols-spore-4", type = "unlock-recipe"}
            }
        }
    },
    module_category = "yaedols"
}
