
local tech_upgrades =
    {
        master_tech =
            {
            name = "navens-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-navens.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"navens-mk02"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    -- {'py-science-pack-2', 1},
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
                    name = "cytotoxicity", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/cytotoxicity.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'navens-culture-mk01',
                        'navens-culture-mk02',
                        'navens-culture-mk03',
                        'navens-culture-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.0, --energy usage
                        speed =
                            {
                                percent = 0.3, -- displayed machine speed
                                module_amount = 63, -- actual module bonus
                            },
                        productivity = -0.1, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.5 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'pre-sterilization',
                        'n2-ferti',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "pre-sterilization",
                    icon = "__pyalienlifegraphics3__/graphics/technology/pre-sterilization.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'navens-culture-mk01',
                        'navens-culture-mk02',
                        'navens-culture-mk03',
                        'navens-culture-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.1,
                        speed =
                            {
                                percent = -0.05, -- displayed machine speed
                                module_amount = -10.5, -- actual module bonus
                            },
                        speed = -0.05,
                        productivity = 0.25,
                        pollution = 0.4
                    },
                techs_to_lock =
                    {
                        'cytotoxicity',
                        'n2-ferti',
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
                    name = "n2-ferti",
                    icon = "__pyalienlifegraphics3__/graphics/technology/n2-ferti.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'navens-culture-mk01',
                        'navens-culture-mk02',
                        'navens-culture-mk03',
                        'navens-culture-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.2,
                        speed = 0.0,
                        productivity = 0.05,
                        pollution = -1.0
                    },
                techs_to_lock =
                    {
                        'cytotoxicity',
                        'pre-sterilization'
                    }
                },
            }
    }

return(tech_upgrades)
