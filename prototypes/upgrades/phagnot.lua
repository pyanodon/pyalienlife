
local tech_upgrades =
    {
        master_tech = -- This is the tech that is displayed in the tech tree
            {
                name = "phagnot-upgrade",
                icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-phagnot.png",
                icon_size = 128,
                order = "c-a",
                prerequisites = {"phagnot-mk02"},
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
                name = "leader",
                icon = "__pyalienlifegraphics3__/graphics/technology/leader.png",
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'phagnot-corral-mk01',
                    'phagnot-corral-mk02',
                    'phagnot-corral-mk03',
                    'phagnot-corral-mk04',
                },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
            upgrades = -- the effects the tech will have on the building. 1 = 100%
                {
                    consumption = 0.0, --energy usage
                    speed = 0.0, -- machine speed
                    productivity = 0.25, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                    pollution = 0.10 -- pollution this machine will produce while running
                },
            techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                {
                    'socialization',
                    'hr',
                },
            is_upgrade = true,
            },
        example_2 =
            {
            technology =
                {
                name = "socialization",
                icon = "__pyalienlifegraphics3__/graphics/technology/socialization.png",
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'phagnot-corral-mk01',
                    'phagnot-corral-mk02',
                    'phagnot-corral-mk03',
                    'phagnot-corral-mk04',
                },
            upgrades =
                {
                    consumption = 0.15,
                    speed =
                            {
                                percent = 0.3, -- displayed machine speed
                                module_amount = 48, -- actual module bonus
                            },
                    productivity = 0.0,
                    pollution = 0.3
                },
            techs_to_lock =
                {
                    'leader',
                    'hr',
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
                name = "hr",
                icon = "__pyalienlifegraphics3__/graphics/technology/hr.png",
                icon_size = 128,
                order = "c-a",
                },
            entities =
                {
                    'phagnot-corral-mk01',
                    'phagnot-corral-mk02',
                    'phagnot-corral-mk03',
                    'phagnot-corral-mk04',
                },
            upgrades =
                {
                    consumption = -0.2,
                    speed = 0.0,
                    productivity = 0.0,
                    pollution = -0.90
                },
            techs_to_lock =
                {
                    'leader',
                    'socialization'
                }
            },
        }
    }

return(tech_upgrades)
