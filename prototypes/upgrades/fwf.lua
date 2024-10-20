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

if data and not yafc_turd_integration then
    local fiber = RECIPE("fiber-01"):copy()
    fiber.name = "fiber-dry-storage"
    fiber.energy_required = fiber.energy_required * 10
    fiber:multiply_result_amount("raw-fiber", 4)
    fiber:add_result {"biomass", 1}
    fiber.main_product = "raw-fiber"
    data:extend {fiber}

    local fiber = RECIPE("fiber"):copy()
    fiber.name = "fiber-dry-storage-2"
    fiber:multiply_result_amount("fiber", 2)
    fiber.energy_required = fiber.energy_required * 2
    data:extend {fiber}

    local wood_fast = RECIPE("log-wood"):copy()
    wood_fast.name = "log-wood-fast"
    wood_fast:multiply_result_amount("wood", 2)
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
                {consumption = -0.50, productivity = 0.5, speed = 0.5,                  type = "module-effects"},
                {old = "fwf-mk01",    new = "fwf-mk01-with-furnace", type = "recipe-replacement"},
                {old = "log3",        new = "log3-cheap",            type = "recipe-replacement"},
                {old = "log6",        new = "log6-cheap",            type = "recipe-replacement"}
            }
        }
    },
    module_category = "tree"
}