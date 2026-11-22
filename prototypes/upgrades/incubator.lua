if data and not yafc_turd_integration then
    local manure = RECIPE("manure-bacteria"):copy()
    manure.name = "manure-bacteria-fish"
    manure:add_ingredient {name = "fish-hydrolysate", type = "fluid", amount = 5}
    manure:multiply_result_amount("manure-bacteria", 1.5)

    local darkness = RECIPE("zogna-bacteria"):copy()
    darkness:remove_ingredient("small-lamp")
    darkness.name = "zogna-bacteria-darkness"
    darkness.energy_required = 8

    local icd = RECIPE("bio-sample"):copy()
    icd.name = "bio-sample-icd"
    icd:add_ingredient {name = "pressured-air", type = "fluid", amount = 50}
    icd:add_ingredient {name = "pressured-water", type = "fluid", amount = 50}
    icd.results = {{name = "bio-sample", amount_max = 2, type = "item", amount_min = 1}}

    data:extend {darkness, manure, icd}
end

return {
    affected_entities = { -- the entities that should be effected by this tech upgrade
        "incubator-mk01",
        "incubator-mk02",
        "incubator-mk03",
        "incubator-mk04",
    },
    master_tech = { -- tech that is shown in the tech tree
        name = "incubator-upgrade",
        icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-incubator.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {"microbiology-mk02", "fertilizer-mk02"},
        unit = {
            count = 500,
            ingredients = {
                {"automation-science-pack", 1},
                {"py-science-pack-1",       1},
                {"logistic-science-pack",   1},
            },
            time = 45
        }
    },
    sub_techs = {
        {
            name = "gs",
            icon = "__pyalienlifegraphics3__/graphics/technology/gs.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "manure-bacteria", new = "manure-bacteria-fish", type = "recipe-replacement"}
            },
        },
        {
            name = "zero",
            icon = "__pyalienlifegraphics3__/graphics/technology/zero.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "zogna-bacteria", new = "zogna-bacteria-darkness", type = "recipe-replacement"}
            }
        },
        {
            name = "icd",
            icon = "__pyalienlifegraphics3__/graphics/technology/icd.png",
            icon_size = 128,
            order = "c-a",
            effects = { -- the effects the tech will have on the building. valid types: 'module-effects', 'unlock-recipe', 'recipe-replacement', 'machine-replacement'
                {old = "bio-sample", new = "bio-sample-icd", type = "recipe-replacement"}
            }
        }
    }
}
