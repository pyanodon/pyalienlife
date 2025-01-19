if data and not yafc_turd_integration then
    local sawblade_ingredients = {
        {
            {type = "item",  name = "steel-plate",    amount = 5},
            {type = "item",  name = "small-parts-01", amount = 5},
            {type = "fluid", name = "water",          amount = 200},
        },
        {
            {type = "item",  name = "py-sawblade-module-mk01", amount = 5},
            {type = "item",  name = "stainless-steel",         amount = 5},
            {type = "item",  name = "small-parts-02",          amount = 5},
            {type = "item",  name = "borax",                   amount = 15},
            {type = "item",  name = "diamond",                 amount = 15},
            {type = "item",  name = "sand-casting",            amount = 1},
            {type = "fluid", name = "lubricant",               amount = 200},
            {type = "fluid", name = "water",                   amount = 200},
        },
        {
            {type = "item",  name = "py-sawblade-module-mk02", amount = 5},
            {type = "item",  name = "super-steel",             amount = 5},
            {type = "item",  name = "small-parts-03",          amount = 5},
            {type = "item",  name = "cerium-oxide",            amount = 10},
            {type = "item",  name = "polishing-wheel",         amount = 10},
            {type = "item",  name = "borax",                   amount = 15},
            {type = "item",  name = "diamond",                 amount = 15},
            {type = "item",  name = "sand-casting",            amount = 1},
            {type = "fluid", name = "lubricant",               amount = 200},
            {type = "fluid", name = "etching",                 amount = 200},
        },
        {
            {type = "item",  name = "py-sawblade-module-mk03", amount = 5},
            {type = "item",  name = "super-alloy",             amount = 5},
            {type = "item",  name = "nylon-parts",             amount = 5},
            {type = "item",  name = "cerium-oxide",            amount = 10},
            {type = "item",  name = "polishing-wheel",         amount = 10},
            {type = "item",  name = "silver-nitrate",          amount = 1},
            {type = "item",  name = "borax",                   amount = 15},
            {type = "item",  name = "diamond",                 amount = 15},
            {type = "item",  name = "sand-casting",            amount = 1},
            {type = "item",  name = "harmonic-absorber",       amount = 1},
            {type = "item",  name = "hardener",                amount = 1},
            {type = "fluid", name = "etching",                 amount = 200},
            {type = "fluid", name = "molten-super-steel-p2",   amount = 200},
        },
    }

    data:extend {{
        type = "module-category",
        name = "sawblade",
    }}

    for i = 1, 4 do
        local MODULE_SLOTS = 3 * i
        local FULL_CRAFTING_SPEED = 1

        ITEM {
            type = "module",
            name = "py-sawblade-module-mk0" .. i,
            subgroup = "py-alienlife-tree",
            order = "u[sawblade]-a[mk0" .. i .. "]",
            stack_size = 10,
            effect = {speed = i, productivity = (1 + i) * 0.025},
            category = "sawblade",
            tier = i,
            icon_size = 64,
            icons = {
                {icon = "__pyalienlifegraphics__/graphics/icons/sawblade.png"},
                {icon = "__pyalienlifegraphics__/graphics/icons/over-mk0" .. i .. ".png"},
            },
        }

        local recipe = RECIPE {
            type = "recipe",
            name = "py-sawblade-module-mk0" .. i,
            enabled = false,
            ingredients = {},
            energy_required = 10,
            main_product = "py-sawblade-module-mk0" .. i,
            results = {
                {"py-sawblade-module-mk0" .. i, 1},
                {type = "item",                 name = "iron-oxide", amount = 5},
            },
            category = "crafting-with-fluid",
        }

        for _, ingredient in pairs(sawblade_ingredients[i]) do
            recipe:add_ingredient(ingredient)
        end

        local name = "wpu" .. ((i == 1) and "" or ("-mk0" .. i))
        data.raw["assembling-machine"][name].allowed_effects = {"consumption", "speed", "productivity"}
        local entity = table.deepcopy(data.raw["assembling-machine"][name])
        entity.name = "turd-" .. name
        entity.localised_name = {"entity-name." .. name}
        entity.placeable_by = {item = name, count = 1}
        entity.localised_description = entity.localised_description or {"entity-description." .. name}
        entity.subgroup = data.raw.item[name].subgroup
        entity.order = data.raw.item[name].order
        entity.allowed_module_categories = {"sawblade"}
        if i ~= 4 then entity.next_upgrade = "turd-wpu-mk0" .. (i + 1) end
        table.insert(entity.flags, "not-in-made-in")
        entity.module_slots = MODULE_SLOTS
        entity.allowed_effects = {"speed", "productivity", "pollution"}
        entity.crafting_speed = i == 1 and py.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED) or py.farm_speed_derived(MODULE_SLOTS, "turd-wpu")
        data:extend {entity}
    end

    ITEM {
        name = "lacquer-resin",
        type = "item",
        icon = "__pyalienlifegraphics3__/graphics/icons/mip/lacquer-resin-1.png",
        icon_size = 64,
        pictures = {
            {size = 64, filename = "__pyalienlifegraphics3__/graphics/icons/mip/lacquer-resin-1.png", scale = 0.33},
            {size = 64, filename = "__pyalienlifegraphics3__/graphics/icons/mip/lacquer-resin-2.png", scale = 0.33},
            {size = 64, filename = "__pyalienlifegraphics3__/graphics/icons/mip/lacquer-resin-3.png", scale = 0.33},
            {size = 64, filename = "__pyalienlifegraphics3__/graphics/icons/mip/lacquer-resin-4.png", scale = 0.33},
            {size = 64, filename = "__pyalienlifegraphics3__/graphics/icons/mip/lacquer-resin-5.png", scale = 0.33},
            {size = 64, filename = "__pyalienlifegraphics3__/graphics/icons/mip/lacquer-resin-6.png", scale = 0.33},
        },
        flags = {},
        subgroup = "py-alienlife-tree",
        order = "y[lacquer-resin]",
        stack_size = 50
    }

    RECIPE {
        type = "recipe",
        name = "lacquer-resin",
        category = "wpu",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "wood", amount = 4},
        },
        results = {
            {type = "item", name = "lacquer-resin", amount = 20},
        },
        main_product = "lacquer-resin",
    }

    RECIPE {
        type = "recipe",
        name = "lacquer-resin-to-formica",
        category = "pulp",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "item", name = "lacquer-resin", amount = 20},
            {type = "item", name = "treated-wood",  amount = 2},
        },
        results = {
            {type = "item", name = "formica", amount = 2},
        },
    }

    local phenolic_board_with_laquer = RECIPE(data.raw.recipe["phenolicboard"]):copy("phenolicboard-with-laquer")
    phenolic_board_with_laquer:add_ingredient {type = "item", name = "lacquer-resin", amount = 20}
    phenolic_board_with_laquer:multiply_result_amount("phenolicboard", 2)

    RECIPE {
        type = "recipe",
        name = "high-distillate-to-anthracene-oil",
        category = "tar",
        enabled = false,
        localised_name = {"recipe-name.high-distillate-to-anthracene-oil"},
        energy_required = 10,
        ingredients = {
            {type = "fluid", name = "high-distillate", amount = 125},
            {type = "fluid", name = "hydrogen",        amount = 50},
        },
        results = {
            {type = "fluid", name = "anthracene-oil",  amount = 75},
            {type = "fluid", name = "naphthalene-oil", amount = 26},
            {type = "fluid", name = "light-oil",       amount = 24},
            {type = "fluid", name = "aromatics",       amount = 12},
        },
        subgroup = "py-fluids",
        main_product = "anthracene-oil",
        crafting_machine_tint = {
            primary = defines.color.floralwhite,
            secondary = defines.color.goldenrod,
            tertiary = defines.color.gold,
            quaternary = defines.color.darkturquoise,
        },
    }

    for _, seedling_recipe in pairs {
        table.deepcopy(data.raw.recipe["wood-seedling"]),
        table.deepcopy(data.raw.recipe["wood-seedling-mk02"]),
        table.deepcopy(data.raw.recipe["wood-seedling-mk03"]),
        table.deepcopy(data.raw.recipe["wood-seedling-mk04"]),
    } do
        seedling_recipe.name = seedling_recipe.name .. "-turd"
        seedling_recipe:remove_ingredient("moss")
        seedling_recipe:remove_ingredient("chelator")
        seedling_recipe:add_ingredient {type = "fluid", name = "anthracene-oil", amount = 35}
        data:extend {seedling_recipe}
    end

    RECIPE {
        name = "biosynthetic-nylon",
        type = "recipe",
        category = "wpu",
        enabled = false,
        energy_required = 30,
        ingredients = {
            {type = "item", name = "lignin",       amount = 5},
            {type = "item", name = "treated-wood", amount = 5},
            {type = "item", name = "cellulose",    amount = 5},
            {type = "item", name = "redhot-coke",  amount = 1},
        },
        results = {
            {type = "item", name = "nylon", amount = 30},
        },
        allow_productivity = true
    }

    for _, recipe in pairs(data.raw.recipe) do
        if not recipe.allow_productivity and recipe.category == "wpu" then
            recipe.allow_productivity = true
            recipe.allowed_module_categories = {"speed", "efficiency", "quality", "sawblade"}
        end
    end
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "wpu",
        "wpu-mk02",
        "wpu-mk03",
        "wpu-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "wood-processing-unit-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-wpu.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"integrated-circuits-1"},
        unit = {
            count = 7000,
            ingredients = {
                {type = "item", name = "automation-science-pack", amount = 1},
                {type = "item", name = "py-science-pack-1",       amount = 1},
                {type = "item", name = "logistic-science-pack",   amount = 1},
                {type = "item", name = "py-science-pack-2",       amount = 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "biosynthetic-nylon",
            icon = "__pyalienlifegraphics3__/graphics/technology/biosynthetic-nylon.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = "unlock-recipe", recipe = "biosynthetic-nylon"},
            },
        },
        {
            name = "sawblades",
            icon = "__pyalienlifegraphics3__/graphics/technology/selective-heads.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = "unlock-recipe",       recipe = "py-sawblade-module-mk01"},
                {type = "unlock-recipe",       recipe = "py-sawblade-module-mk02"},
                {type = "unlock-recipe",       recipe = "py-sawblade-module-mk03"},
                {type = "unlock-recipe",       recipe = "py-sawblade-module-mk04"},
                {type = "machine-replacement", old = "wpu",                       new = "turd-wpu"},
                {type = "machine-replacement", old = "wpu-mk02",                  new = "turd-wpu-mk02"},
                {type = "machine-replacement", old = "wpu-mk03",                  new = "turd-wpu-mk03"},
                {type = "machine-replacement", old = "wpu-mk04",                  new = "turd-wpu-mk04"},
            },
        },
        {
            name = "carbonefarious",
            icon = "__pyalienlifegraphics3__/graphics/technology/carbonefarious.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {type = "recipe-replacement", old = "wood-seedling",                       new = "wood-seedling-turd"},
                {type = "recipe-replacement", old = "wood-seedling-mk02",                  new = "wood-seedling-mk02-turd"},
                {type = "recipe-replacement", old = "wood-seedling-mk03",                  new = "wood-seedling-mk03-turd"},
                {type = "recipe-replacement", old = "wood-seedling-mk04",                  new = "wood-seedling-mk04-turd"},
                {type = "unlock-recipe",      recipe = "lacquer-resin"},
                {type = "unlock-recipe",      recipe = "lacquer-resin-to-formica"},
                {type = "unlock-recipe",      recipe = "phenolicboard-with-laquer"},
                {type = "unlock-recipe",      recipe = "high-distillate-to-anthracene-oil"},
            },
        }
    },
    module_category = "sawblade"
}
