
local tech_upgrades =
    {
        master_tech =
            {
            name = "sponge-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-sponge.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"water-invertebrates-mk02"},
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
                    name = "flagellum", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/flagellum.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'sponge-culture-mk01',
                        'sponge-culture-mk02',
                        'sponge-culture-mk03',
                        'sponge-culture-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.0, --energy usage
                        speed =
                            {
                                percent = 0.25, -- displayed machine speed
                                module_amount = 40, -- actual module bonus
                            },
                        productivity = -0.00, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = -0.00 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'fragmentation',
                        'bacterial',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "fragmentation",
                    icon = "__pyalienlifegraphics3__/graphics/technology/fragmentation.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'sponge-culture-mk01',
                        'sponge-culture-mk02',
                        'sponge-culture-mk03',
                        'sponge-culture-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed = 0.0,
                        productivity = 0.25,
                        pollution = 0.15
                    },
                techs_to_lock =
                    {
                        'flagellum',
                        'bacterial',
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
                    name = "bacterial",
                    icon = "__pyalienlifegraphics3__/graphics/technology/bacterial.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'sponge-culture-mk01',
                        'sponge-culture-mk02',
                        'sponge-culture-mk03',
                        'sponge-culture-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.5,
                        speed = 0.0,
                        productivity = 0.0,
                        pollution = -0.30
                    },
                techs_to_lock =
                    {
                        'flagellum',
                        'fragmentation'
                    }
                },
            }
    }

return(tech_upgrades)
