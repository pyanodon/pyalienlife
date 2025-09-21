if data and not yafc_turd_integration then
    RECIPE {
        type = "recipe",
        name = "naphtha-arqad",
        enabled = false,
        category = "biofactory",
        energy_required = 10,
        ingredients = {
            {type = "fluid", name = "high-distillate", amount = 100},
            {type = "fluid", name = "pitch",           amount = 50},
            {type = "fluid", name = "natural-gas",     amount = 5},
            {type = "item",  name = "arqad-maggot",    amount = 10}
        },
        results = {
            {type = "fluid", name = "naphtha",              amount = 650},
            {type = "fluid", name = "condensed-distillate", amount = 50},
            {type = "item",  name = "arqad-maggot",         amount_min = 10, amount_max = 11, ignored_by_productivity = 10, ignored_by_stats = 10}
        },
        main_product = "naphtha"
    }
    RECIPE {
        type = "recipe",
        name = "carbon-black-phytoplankton",
        enabled = false,
        category = "biofactory",
        energy_required = 40,
        ingredients = {
            {type = "item",  name = "biomass",       amount = 1},
            {type = "item",  name = "dried-meat",    amount = 8},
            {type = "fluid", name = "phytoplankton", amount = 40, ignored_by_stats = 40},
            {type = "fluid", name = "water-saline",  amount = 10}
        },
        results = {
            {type = "fluid", name = "phytoplankton", amount = 45, fluidbox_index = 1, ignored_by_stats = 40, ignored_by_productivity = 40},
            {type = "fluid", name = "outlet-gas-04", amount = 80, fluidbox_index = 2},
            {type = "item",  name = "carbon-black",  amount = 20},
            {type = "item",  name = "kerogen",       amount = 10},
        },
        main_product = "carbon-black"
    }
    RECIPE {
        type = "recipe",
        name = "nanofibrils-xyhiphoe",
        enabled = false,
        category = "biofactory",
        energy_required = 90,
        ingredients = {
            {type = "item",  name = "xyhiphoe-cub",  amount = 5},
            {type = "fluid", name = "hot-air",       amount = 50},
            {type = "fluid", name = "chloroethanol", amount = 50},
            {type = "fluid", name = "water",         amount = 100},
        },
        results = {
            {type = "item",  name = "nanofibrils",   amount = 2},
            {type = "item",  name = "dried-biomass", amount = 1},
            {type = "fluid", name = "waste-water",   amount = 100},
        },
        main_product = "nanofibrils"
    }
    RECIPE {
        type = "recipe",
        name = "filtration-media-2-nanofibril-turd",
        category = "crafting",
        enabled = false,
        energy_required = 100,
        ingredients = {
            {type = "item", name = "gravel",        amount = 25},
            {type = "item", name = "active-carbon", amount = 10},
            {type = "item", name = "nanofibrils",   amount = 2},
            {type = "item", name = "cellulose",     amount = 25},
        },
        results = {
            {type = "item", name = "filtration-media", amount = 150},
        },
    }:add_ingredient {type = "item", name = "micro-fiber", amount = 15}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "biofactory-mk01",
        "biofactory-mk02",
        "biofactory-mk03",
        "biofactory-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "biofactory-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-biofactory.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = (mods and mods.pyhightech) and {"ethylene"} or {},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack",   1},
                {"py-science-pack-2",       1},
                {"chemical-science-pack",   1},
                {"py-science-pack-3",       1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "molecular-polyentomology",
            icon = "__pyalienlifegraphics3__/graphics/technology/molecular-polyentomology.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "naphtha-arqad", type = "unlock-recipe"}
            },
        },
        {
            name = "compusun",
            icon = "__pyalienlifegraphics3__/graphics/technology/compusun.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "carbon-black-phytoplankton", type = "unlock-recipe"}
            }
        },
        {
            name = "resonant",
            icon = "__pyalienlifegraphics3__/graphics/technology/resonant.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "nanofibrils-xyhiphoe", type = "unlock-recipe"},
                {old = "filtration-media-2",      new = "filtration-media-2-nanofibril-turd", type = "recipe-replacement"},
            }
        }
    }
}
