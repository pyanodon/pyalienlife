
local tech_upgrades =
    {
        master_tech =
            {
            name = "korlex-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-korlex.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"korlex-mk02"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {'py-science-pack-2', 1},
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
                    name = "multi-tit", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/multi-tit.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'ez-ranch-mk01',
                        'ez-ranch-mk02',
                        'ez-ranch-mk03',
                        'ez-ranch-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.25, --energy usage
                        speed =
                            {
                                percent = 0.3, -- displayed machine speed
                                module_amount = 68.32, -- actual module bonus
                            },
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.11 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'high-pressure',
                        'nx-heat-pump',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "high-pressure",
                    icon = "__pyalienlifegraphics3__/graphics/technology/high-pressure.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'ez-ranch-mk01',
                        'ez-ranch-mk02',
                        'ez-ranch-mk03',
                        'ez-ranch-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed =
                            {
                                percent = -0.1, -- displayed machine speed
                                module_amount = -22.78, -- actual module bonus
                            },
                        productivity = 0.3,
                        pollution = 0.1
                    },
                techs_to_lock =
                    {
                        'multi-tit',
                        'nx-heat-pump',
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
                    name = "nx-heat-pump",
                    icon = "__pyalienlifegraphics3__/graphics/technology/nx-heat-pump.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'ez-ranch-mk01',
                        'ez-ranch-mk02',
                        'ez-ranch-mk03',
                        'ez-ranch-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.25,
                        speed = 0.0,
                        productivity = 0.00,
                        pollution = -0.70
                    },
                techs_to_lock =
                    {
                        'multi-tit',
                        'high-pressure'
                    }
                },
            }
    }

return(tech_upgrades)
