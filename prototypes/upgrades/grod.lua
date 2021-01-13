
local tech_upgrades =
    {
        master_tech =
            {
            name = "grod-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-grod.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"grod-mk02"},
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
                    name = "hi-sprinkler", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/hi-sprinkler.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'grods-swamp-mk01',
                        'grods-swamp-mk02',
                        'grods-swamp-mk03',
                        'grods-swamp-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.5, --energy usage
                        speed =
                            {
                                percent = 0.25, -- displayed machine speed
                                module_amount = 39.90, -- actual module bonus
                            },
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.4 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'ground-irrigation',
                        'carbide-c',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "ground-irrigation",
                    icon = "__pyalienlifegraphics3__/graphics/technology/ground-irrigation.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'grods-swamp-mk01',
                        'grods-swamp-mk02',
                        'grods-swamp-mk03',
                        'grods-swamp-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed = 0.0,
                        productivity = 0.2,
                        pollution = 0.4
                    },
                techs_to_lock =
                    {
                        'hi-sprinkler',
                        'carbide-c',
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
                    name = "carbide-c",
                    icon = "__pyalienlifegraphics3__/graphics/technology/carbide-c.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'grods-swamp-mk01',
                        'grods-swamp-mk02',
                        'grods-swamp-mk03',
                        'grods-swamp-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.4,
                        speed = 0.0,
                        productivity = 0,
                        pollution = -0.70
                    },
                techs_to_lock =
                    {
                        'hi-sprinkler',
                        'ground-irrigation'
                    }
                },
            }
    }

return(tech_upgrades)
