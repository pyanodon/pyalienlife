--[[
                                                         .
                                              .         ;
                 .              .              ;%     ;;
                   ,           ,                :;%  %;
                    :         ;                   :;%;'     .,
           ,.        %;     %;            ;        %;'    ,;
             ;       ;%;  %%;        ,     %;    ;%;    ,%'
              %;       %;%;      ,  ;       %;  ;%;   ,%;'
               ;%;      %;        ;%;        % ;%;  ,%;'
                `%;.     ;%;     %;'         `;%%;.%;'
                 `:;%.    ;%%. %@;        %; ;@%;%'
                    `:%;.  :;bd%;          %;@%;'
                      `@%:.  :;%.         ;@@%;'
                        `@%.  `;@%.      ;@@%;
                          `@%%. `@%%    ;@@%;
                            ;@%. :@%%  %@@%;
                              %@bd%%%bd%%:;
                                #@%%%%%:;;
                                %@@%%%::;
                                %@@@%(o);  . '
                                %@@@o%;:(.,'
                            `.. %@@@o%::;
                               `)@@@o%::;
                                %@@(o)::;
                               .%@@@@%::;
                               ;%@@@@%::;.
                              ;%@@@@%%:;;;.
                          ...;%@@@@@%%:;;;;,..    Gilo97
]]

local is_pyse = (data and mods["pystellarexpedition"]) or (script and script.active_mods["pystellarexpedition"])

if not is_pyse then
    if data and not yafc_turd_integration then
        local fiber = RECIPE("fiber-01"):copy()
        fiber.name = "fiber-dry-storage"
        fiber.energy_required = fiber.energy_required * 3
        fiber:multiply_result_amount("raw-fiber", 2)
        fiber:add_result {"biomass", 1}
        fiber.main_product = "raw-fiber"
        data:extend {fiber}

        local fiber = RECIPE("fiber"):copy()
        fiber.name = "fiber-dry-storage-2"
        fiber:add_result_amount("fiber", 1)
        fiber.energy_required = 6
        data:extend {fiber}

        local wood_fast = RECIPE("log-wood"):copy()
        wood_fast.name = "log-wood-fast"
        wood_fast:add_result_amount("wood", 1)
        wood_fast.energy_required = 1
        wood_fast.enabled = false
        data:extend {wood_fast}

        local machine_recipe = RECIPE("fwf-mk01"):copy()
        machine_recipe.name = machine_recipe.name .. "-with-furnace"
        machine_recipe:add_ingredient {name = "stone-furnace", amount = 1, type = "item"}
        data:extend {machine_recipe}

        for _, recipe in pairs {
            RECIPE("log3"):copy(),
            RECIPE("log6"):copy(),
        } do
            recipe.name = recipe.name .. "-cheap"
            recipe:multiply_ingredient_amount("ash", 1 / 3)
            data:extend {recipe}
        end
    end

    return {
        affected_entities = { -- the entities that should be effected by this tech upgrade
            "fwf-mk01",
            "fwf-mk02",
            "fwf-mk03",
            "fwf-mk04",
        },
        master_tech = { -- tech that is shown in the tech tree
            name = "fast-wood-forestry-upgrade",
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-fwf.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"wood-processing"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                },
                time = 45
            }
        },
        sub_techs = {
            {
                name = "dry-storage",
                icon = "__pyalienlifegraphics3__/graphics/technology/dry-storage.png",
                icon_size = 128,
                order = "c-a",
                effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                    {old = "fiber-01", new = "fiber-dry-storage",   type = "recipe-replacement"},
                    {old = "fiber",    new = "fiber-dry-storage-2", type = "recipe-replacement"}
                },
            },
            {
                name = "selective-heads",
                icon = "__pyalienlifegraphics3__/graphics/technology/selective-heads.png",
                icon_size = 128,
                order = "c-a",
                effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                    {old = "log-wood", new = "log-wood-fast", type = "recipe-replacement"}
                }
            },
            {
                name = "self-generation",
                icon = "__pyalienlifegraphics3__/graphics/technology/self-generation.png",
                icon_size = 128,
                order = "c-a",
                effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                    {consumption = -0.30, speed = 0.08,                  type = "module-effects"},
                    {old = "fwf-mk01",    new = "fwf-mk01-with-furnace", type = "recipe-replacement"},
                    {old = "log3",        new = "log3-cheap",            type = "recipe-replacement"},
                    {old = "log6",        new = "log6-cheap",            type = "recipe-replacement"}
                }
            }
        },
        module_category = "tree"
    }
end

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

    for i = 1, 4 do
        local MODULE_SLOTS = 3 * i
        local FULL_CRAFTING_SPEED = 1

        ITEM {
            type = "module",
            name = "py-sawblade-module-mk0" .. i,
            subgroup = "py-alienlife-tree",
            order = "u[sawblade]-a[mk0" .. i .. "]",
            stack_size = 10,
            effect = {pollution = 1, speed = i, productivity = 20},
            limitation_message_key = "sawblade",
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
    phenolic_board_with_laquer:add_result_amount("phenolicboard", 1)

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
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "fwf-mk01",
        "fwf-mk02",
        "fwf-mk03",
        "fwf-mk04",
        "wpu",
        "wpu-mk02",
        "wpu-mk03",
        "wpu-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "fast-wood-forestry-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-fwf.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"wood-processing"},
        unit = {
            count = 500,
            ingredients = {
                {type = "item", name = "automation-science-pack", amount = 1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "dry-storage",
            icon = "__pyalienlifegraphics3__/graphics/technology/dry-storage.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
            },
        },
        {
            name = "selective-heads",
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
            name = "self-generation",
            icon = "__pyalienlifegraphics3__/graphics/technology/self-generation.png",
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
    module_category = "tree"
}
