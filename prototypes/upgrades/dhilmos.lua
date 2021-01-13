
local tech_upgrades =
    {
        master_tech =
            {
            name = "dhilmos-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-dhilmos.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"dhilmos-mk02"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"py-science-pack", 1},
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
                    name = "cover", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/cover.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'dhilmos-pool-mk01',
                        'dhilmos-pool-mk02',
                        'dhilmos-pool-mk03',
                        'dhilmos-pool-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.0, --energy usage
                        speed =
                            {
                                percent = -0.3, -- displayed machine speed
                                module_amount = -45, -- actual module bonus
                            },
                        productivity = 0.3, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'skimmer',
                        'double-intake',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "skimmer",
                    icon = "__pyalienlifegraphics3__/graphics/technology/skimmer.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'dhilmos-pool-mk01',
                        'dhilmos-pool-mk02',
                        'dhilmos-pool-mk03',
                        'dhilmos-pool-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.1,
                        speed =
                            {
                                percent = 0.3, -- displayed machine speed
                                module_amount = 45, -- actual module bonus
                            },
                        productivity = 0.0,
                        pollution = 0.25
                    },
                techs_to_lock =
                    {
                        'cover',
                        'double-intake',
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
                    name = "double-intake",
                    icon = "__pyalienlifegraphics3__/graphics/technology/double-intake.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'dhilmos-pool-mk01',
                        'dhilmos-pool-mk02',
                        'dhilmos-pool-mk03',
                        'dhilmos-pool-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.2,
                        speed = 0.0,
                        productivity = 0,
                        pollution = -0.65
                    },
                techs_to_lock =
                    {
                        'cover',
                        'skimmer'
                    }
                },
            }
    }

return(tech_upgrades)
