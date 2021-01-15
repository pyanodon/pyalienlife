
local tech_upgrades =
    {
        master_tech = -- This is the tech that is displayed in the tech tree
            {
                name = "scrondrix-upgrade", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-scrondrix.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                prerequisites = {"scrondrix-mk02"},
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
                name = "boronb", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/boronb.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'scrondrix-pen-mk01',
                    'scrondrix-pen-mk02',
                    'scrondrix-pen-mk03',
                    'scrondrix-pen-mk04',
                },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
            upgrades = -- the effects the tech will have on the building. 1 = 100%
                {
                    consumption = 0.1, --energy usage
                    speed =
                            {
                                percent = 0.4, -- displayed machine speed
                                module_amount = 63.36, -- actual module bonus
                            },
                    productivity = -0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                    pollution = 0.25 -- pollution this machine will produce while running
                },
            techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                {
                    'hspa',
                    'neuron',
                },
            is_upgrade = true,
            },
        example_2 =
            {
            technology =
                {
                name = "hspa",
                icon = "__pyalienlifegraphics3__/graphics/technology/hspa.png",
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'scrondrix-pen-mk01',
                    'scrondrix-pen-mk02',
                    'scrondrix-pen-mk03',
                    'scrondrix-pen-mk04',
                },
            upgrades =
                {
                    consumption = -0.2,
                    speed = 0.0,
                    productivity = -0.0,
                    pollution = -0.9
                },
            techs_to_lock =
                {
                    'boronb',
                    'neuron',
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
                name = "neuron",
                icon = "__pyalienlifegraphics3__/graphics/technology/neuron.png",
                icon_size = 128,
                order = "c-a",
                },
            entities =
                {
                    'scrondrix-pen-mk01',
                    'scrondrix-pen-mk02',
                    'scrondrix-pen-mk03',
                    'scrondrix-pen-mk04',
                },
            upgrades =
                {
                    consumption = 0.1,
                    speed = 0,
                    productivity = 0.4,
                    pollution = 0.15
                },
            techs_to_lock =
                {
                    'boronb',
                    'hspa'
                }
            },
        }
    }

return(tech_upgrades)
