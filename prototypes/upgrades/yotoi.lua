
local tech_upgrades =
    {
        master_tech =
            {
            name = "yotoi-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-yotoi.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"yotoi-mk02"},
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
                    name = "cryopreservation", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/cryopreservation.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'yotoi-aloe-orchard-mk01',
                        'yotoi-aloe-orchard-mk02',
                        'yotoi-aloe-orchard-mk03',
                        'yotoi-aloe-orchard-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.35, --energy usage
                        speed =
                            {
                                percent = 0.5, -- displayed machine speed
                                module_amount = 79.2, -- actual module bonus
                            },
                        productivity = -0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.1 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'harvest',
                        'nutrinet',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "harvest",
                    icon = "__pyalienlifegraphics3__/graphics/technology/harvest.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'yotoi-aloe-orchard-mk01',
                        'yotoi-aloe-orchard-mk02',
                        'yotoi-aloe-orchard-mk03',
                        'yotoi-aloe-orchard-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed = 0.0,
                        productivity = 0.40,
                        pollution = 0.15
                    },
                techs_to_lock =
                    {
                        'cryopreservation',
                        'nutrinet',
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
                    name = "nutrinet",
                    icon = "__pyalienlifegraphics3__/graphics/technology/nutrinet.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'yotoi-aloe-orchard-mk01',
                        'yotoi-aloe-orchard-mk02',
                        'yotoi-aloe-orchard-mk03',
                        'yotoi-aloe-orchard-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.3,
                        speed = 0.0,
                        productivity = 0.0,
                        pollution = -1
                    },
                techs_to_lock =
                    {
                        'cryopreservation',
                        'harvest'
                    }
                },
            }
    }

return(tech_upgrades)
