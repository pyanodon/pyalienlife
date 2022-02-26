
local tech_upgrades =
    {
        master_tech =
            {
            name = "fwf-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-fwf.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"wood-processing-2"},
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
                    name = "dry-storage", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/dry-storage.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'fwf-mk01',
                        'fwf-mk02',
                        'fwf-mk03',
                        'fwf-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.1, --energy usage
                        speed =
                            {
                                percent = -0.25, -- displayed machine speed
                                module_amount = 40, -- actual module bonus
                            },
                        productivity = 0.3, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'selective-heads',
                        'self-generation',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "selective-heads",
                    icon = "__pyalienlifegraphics3__/graphics/technology/selective-heads.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'fwf-mk01',
                        'fwf-mk02',
                        'fwf-mk03',
                        'fwf-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed =
                            {
                                percent = 0.3, -- displayed machine speed
                                module_amount = 48, -- actual module bonus
                            },
                        productivity = -0.15,
                        pollution = -0.1
                    },
                techs_to_lock =
                    {
                        'dry-storage',
                        'self-generation',
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
                    name = "self-generation",
                    icon = "__pyalienlifegraphics3__/graphics/technology/self-generation.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'fwf-mk01',
                        'fwf-mk02',
                        'fwf-mk03',
                        'fwf-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.35,
                        speed = 0.0,
                        productivity = 0,
                        pollution = -0.70
                    },
                techs_to_lock =
                    {
                        'dry-storage',
                        'selective-heads'
                    }
                },
            }
    }

return(tech_upgrades)
