
local tech_upgrades =
    {
        master_tech = -- This is the tech that is displayed in the tech tree
            {
                name = "moondrop-upgrade", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-moondrop.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                prerequisites = {"moondrop-mk02"},
                unit = {
                    count = 500,
                    ingredients = {
                        {"automation-science-pack", 1},
                        {"logistic-science-pack", 1},
                        {"chemical-science-pack", 1},
                    },
                    time = 45
                    }
            },
        sub_techs =
            {
            example_1 = -- can be whatever just used to identify this table
            {
            technology = -- no touchy
                {
                name = "cu", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/cu.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'moondrop-greenhouse-mk01',
                    'moondrop-greenhouse-mk02',
                    'moondrop-greenhouse-mk03',
                    'moondrop-greenhouse-mk04',
                },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
            upgrades = -- the effects the tech will have on the building. 1 = 100%
                {
                    consumption = 0.0, --energy usage
                    speed = 0.5, -- machine speed
                    productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                    pollution = 0.2 -- pollution this machine will produce while running
                },
            techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                {
                    'moon',
                    'carbon-capture',
                },
            is_upgrade = true,
            },
        example_2 =
            {
            technology =
                {
                name = "moon",
                icon = "__pyalienlifegraphics3__/graphics/technology/moon.png",
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'moondrop-greenhouse-mk01',
                    'moondrop-greenhouse-mk02',
                    'moondrop-greenhouse-mk03',
                    'moondrop-greenhouse-mk04',
                },
            upgrades =
                {
                    consumption = 0.2,
                    speed = 0.0,
                    productivity = 0.25,
                    pollution = 0.0
                },
            techs_to_lock =
                {
                    'cu',
                    'carbon-capture',
                },
            is_upgrade = false, -- tell this its an upgrade of other techs
            prerequisites = -- table of all techs that are replaced by this one.
                {
                    --'example-1'
                }
            },
        example_3 =
            {
            technology =
                {
                name = "carbon-capture",
                icon = "__pyalienlifegraphics3__/graphics/technology/carbon-capture.png",
                icon_size = 128,
                order = "c-a",
                },
            entities =
                {
                    'moondrop-greenhouse-mk01',
                    'moondrop-greenhouse-mk02',
                    'moondrop-greenhouse-mk03',
                    'moondrop-greenhouse-mk04',
                },
            upgrades =
                {
                    consumption = 0.05,
                    speed = 0,
                    productivity = 0.15,
                    pollution = -1.0
                },
            techs_to_lock =
                {
                    'cu',
                    'moon'
                }
            },
        }
    }

return(tech_upgrades)