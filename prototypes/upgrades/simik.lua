
local tech_upgrades =
    {
        master_tech = -- This is the tech that is displayed in the tech tree
            {
                name = "simik-upgrade",
                icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-simik.png",
                icon_size = 128,
                order = "c-a",
                prerequisites = {"simik-mk02"},
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
                name = "unstable",
                icon = "__pyalienlifegraphics3__/graphics/technology/unstable.png",
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'simik-den-mk01',
                    'simik-den-mk02',
                    'simik-den-mk03',
                    'simik-den-mk04',
                },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
            upgrades = -- the effects the tech will have on the building. 1 = 100%
                {
                    consumption = 0.0, --energy usage
                    speed =
                            {
                                percent = 0.4, -- displayed machine speed
                                module_amount = 64, -- actual module bonus
                            },
                    productivity = -0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                    pollution = 0.0 -- pollution this machine will produce while running
                },
            techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                {
                    'arcanium',
                    'etelnav',
                },
            is_upgrade = true,
            },
        example_2 =
            {
            technology =
                {
                name = "arcanium",
                icon = "__pyalienlifegraphics3__/graphics/technology/arcanium.png",
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'simik-den-mk01',
                    'simik-den-mk02',
                    'simik-den-mk03',
                    'simik-den-mk04',
                },
            upgrades =
                {
                    consumption = 0.35,
                    speed = 0.0,
                    productivity = 0.5,
                    pollution = 0.45
                },
            techs_to_lock =
                {
                    'unstable',
                    'etelnav',
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
                name = "etelnav",
                icon = "__pyalienlifegraphics3__/graphics/technology/etelnav.png",
                icon_size = 128,
                order = "c-a",
                },
            entities =
                {
                    'simik-den-mk01',
                    'simik-den-mk02',
                    'simik-den-mk03',
                    'simik-den-mk04',
                },
            upgrades =
                {
                    consumption = -0.3,
                    speed = 0,
                    productivity = 0.0,
                    pollution = -0.75
                },
            techs_to_lock =
                {
                    'unstable',
                    'arcanium'
                }
            },
        }
    }

return(tech_upgrades)
