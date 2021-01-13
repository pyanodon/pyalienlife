
local tech_upgrades =
    {
        master_tech = -- This is the tech that is displayed in the tech tree
            {
                name = "cottongut-upgrade", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-cottongut.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                prerequisites = {"cottongut-mk02"},
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
                name = "igm", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/igm.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'prandium-lab-mk01',
                    'prandium-lab-mk02',
                    'prandium-lab-mk03',
                    'prandium-lab-mk04',
                },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
            upgrades = -- the effects the tech will have on the building. 1 = 100%
                {
                    consumption = 0.0, --energy usage
                    speed =
                            {
                                percent = 0.3, -- displayed machine speed
                                module_amount = 48, -- actual module bonus
                            },
                    productivity = -0.1, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                    pollution = 0.15 -- pollution this machine will produce while running
                },
            techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                {
                    'ts',
                    'ud',
                },
            is_upgrade = true,
            },
        example_2 =
            {
            technology =
                {
                name = "ts",
                icon = "__pyalienlifegraphics3__/graphics/technology/ts.png",
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'prandium-lab-mk01',
                    'prandium-lab-mk02',
                    'prandium-lab-mk03',
                    'prandium-lab-mk04',
                },
            upgrades =
                {
                    consumption = 0.2,
                    speed =
                            {
                                percent = -0.05, -- displayed machine speed
                                module_amount = 8, -- actual module bonus
                            },
                    productivity = 0.23,
                    pollution = 0.25
                },
            techs_to_lock =
                {
                    'igm',
                    'ud',
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
                name = "ud",
                icon = "__pyalienlifegraphics3__/graphics/technology/ud.png",
                icon_size = 128,
                order = "c-a",
                },
            entities =
                {
                    'prandium-lab-mk01',
                    'prandium-lab-mk02',
                    'prandium-lab-mk03',
                    'prandium-lab-mk04',
                },
            upgrades =
                {
                    consumption = 0.2,
                    speed = 0.0,
                    productivity = 0.12,
                    pollution = -0.90
                },
            techs_to_lock =
                {
                    'igm',
                    'ts'
                }
            },
        }
    }

return(tech_upgrades)
