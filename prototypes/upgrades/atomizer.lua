-- path 1: electrify the atomizer and speed bonus

-- arqad proplis -> silver
-- animal eyes -> nano-cellulose
-- dingrit fur -> gold solution
-- pineal gland -> psc
-- shell -> salt
-- xeno egg -> acid gas

-- all iron atomizers -> unslimed
-- all phosphoric rock -> phosphine gas
-- all copper ore -> copper stage 4 (solid)
-- all tin -> tin dust
-- all zinc -> zinc grade 3

if data and not yafc_turd_integration then
    RECIPE {
        type = "recipe",
        name = "venom-gland-to-dynemicin",
        category = "atomizer",
        enabled = false,
        energy_required = 90,
        ingredients = {
            {type = "item", name = "venom-gland", amount = 10},
        },
        results = {
            {type = "item", name = "dynemicin", amount = 100},
        },
        icons = py.composite_icon("dynemicin", "venom-gland")
    }

    RECIPE {
        type = "recipe",
        name = "cognition-osteochain-to-kondo-substrate",
        category = "atomizer",
        enabled = false,
        energy_required = 90,
        ingredients = {
            {type = "item", name = "cognition-osteochain", amount = 2},
        },
        results = {
            {type = "item", name = "kondo-substrate", amount = 100},
        },
        icons = py.composite_icon("kondo-substrate", "cognition-osteochain")
    }

    RECIPE {
        type = "recipe",
        name = "dimensional-gastricorg-to-inverse-opal",
        category = "atomizer",
        enabled = false,
        energy_required = 90,
        ingredients = {
            {type = "item", name = "dimensional-gastricorg", amount = 1},
        },
        results = {
            {type = "item", name = "inverse-opal", amount = 100},
        },
        icons = py.composite_icon("inverse-opal", "dimensional-gastricorg")
    }
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "atomizer-mk01",
        "atomizer-mk02",
        "atomizer-mk03",
        "atomizer-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "atomizer-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-atomizer.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"molecular-decohesion-mk04", "biotech-machines-mk04"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1",       1},
                {"logistic-science-pack",   1},
                {"military-science-pack",   1},
                {"py-science-pack-2",       1},
                {"chemical-science-pack",   1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "sc-core",
            icon = "__pyalienlifegraphics3__/graphics/technology/sc-core.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "venom-gland-to-dynemicin", type = "unlock-recipe"}
            },
        },
        {
            name = "sub-atomic",
            icon = "__pyalienlifegraphics3__/graphics/technology/sub-atomic.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "cognition-osteochain-to-kondo-substrate", type = "unlock-recipe"}
            }
        },
        {
            name = "d-core",
            icon = "__pyalienlifegraphics3__/graphics/technology/d-core.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {recipe = "dimensional-gastricorg-to-inverse-opal", type = "unlock-recipe"}
            }
        }
    }
}
