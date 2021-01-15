
local tech_upgrades =
    {
        master_tech = -- This is the tech that is displayed in the tech tree
            {
                name = "phadai-upgrade", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-phadai.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                prerequisites = {"phadai-mk02"},
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
                name = "ethanol-boost", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/ethanol-boost.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'phadai-enclosure-mk01',
                    'phadai-enclosure-mk02',
                    'phadai-enclosure-mk03',
                    'phadai-enclosure-mk04',
                },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
            upgrades = -- the effects the tech will have on the building. 1 = 100%
                {
                    consumption = 0.0, --energy usage
                    speed = 0.0, -- machine speed
                    productivity = 0.25, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                    pollution = 0.12 -- pollution this machine will produce while running
                },
            techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                {
                    'piezoelectric-floor',
                    'dubstep-track',
                },
            is_upgrade = true,
            },
        example_2 =
            {
            technology =
                {
                name = "piezoelectric-floor",
                icon = "__pyalienlifegraphics3__/graphics/technology/piezoelectric-floor.png",
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'phadai-enclosure-mk01',
                    'phadai-enclosure-mk02',
                    'phadai-enclosure-mk03',
                    'phadai-enclosure-mk04',
                },
            upgrades =
                {
                    consumption = -0.8,
                    speed = 0.0,
                    productivity = 0.0,
                    pollution = -0.98
                },
            techs_to_lock =
                {
                    'ethanol-boost',
                    'dubstep-track',
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
                name = "dubstep-track",
                icon = "__pyalienlifegraphics3__/graphics/technology/dubstep-track.png",
                icon_size = 128,
                order = "c-a",
                },
            entities =
                {
                    'phadai-enclosure-mk01',
                    'phadai-enclosure-mk02',
                    'phadai-enclosure-mk03',
                    'phadai-enclosure-mk04',
                },
            upgrades =
                {
                    consumption = 0.0,
                    speed =
                            {
                                percent = 0.3, -- displayed machine speed
                                module_amount = 68.25, -- actual module bonus
                            },
                    productivity = 0.0,
                    pollution = 0.0
                },
            techs_to_lock =
                {
                    'ethanol-boost',
                    'piezoelectric-floor'
                }
            },
        }
    }

return(tech_upgrades)
