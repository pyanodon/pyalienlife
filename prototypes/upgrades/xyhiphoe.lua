
local tech_upgrades =
    {
        master_tech =
            {
            name = "xyhiphoe-upgrade",
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-xyhiphoe.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"water-invertebrates-mk02"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    -- {'py-science-pack-3', 1},
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
                    name = "temp-c",
                    icon = "__pyalienlifegraphics3__/graphics/technology/temp-c.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'xyhiphoe-pool-mk01',
                        'xyhiphoe-pool-mk02',
                        'xyhiphoe-pool-mk03',
                        'xyhiphoe-pool-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.3, --energy usage
                        speed =
                            {
                                percent = 0.4, -- displayed machine speed
                                module_amount = 64, -- actual module bonus
                            },
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.3 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'rst',
                        'reuse-ev',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "rst",
                    icon = "__pyalienlifegraphics3__/graphics/technology/rst.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'xyhiphoe-pool-mk01',
                        'xyhiphoe-pool-mk02',
                        'xyhiphoe-pool-mk03',
                        'xyhiphoe-pool-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed = 0.0,
                        productivity = 0.35,
                        pollution = 0.1
                    },
                techs_to_lock =
                    {
                        'temp-c',
                        'reuse-ev',
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
                    name = "reuse-ev",
                    icon = "__pyalienlifegraphics3__/graphics/technology/reuse-ev.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'xyhiphoe-pool-mk01',
                        'xyhiphoe-pool-mk02',
                        'xyhiphoe-pool-mk03',
                        'xyhiphoe-pool-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.5,
                        speed = -0.0,
                        productivity = 0.0,
                        pollution = -0.95
                    },
                techs_to_lock =
                    {
                        'temp-c',
                        'rst'
                    }
                },
            }
    }

return(tech_upgrades)
