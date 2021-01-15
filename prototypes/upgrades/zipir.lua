
local tech_upgrades =
    {
        master_tech =
            {
            name = "zipir-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-zipir.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"zipir-mk02"},
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
                    name = "suicide", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/suicide.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'zipir-reef-mk01',
                        'zipir-reef-mk02',
                        'zipir-reef-mk03',
                        'zipir-reef-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.0, --energy usage
                        speed =
                            {
                                percent = 0.5, -- displayed machine speed
                                module_amount = 80, -- actual module bonus
                            },
                        productivity = -0.1, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'sr',
                        'hatchery',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "sr",
                    icon = "__pyalienlifegraphics3__/graphics/technology/sr.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'zipir-reef-mk01',
                        'zipir-reef-mk02',
                        'zipir-reef-mk03',
                        'zipir-reef-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed =
                            {
                                percent = 0.05, -- displayed machine speed
                                module_amount = 8, -- actual module bonus
                            },
                        productivity = 0.45,
                        pollution = 0.0
                    },
                techs_to_lock =
                    {
                        'suicide',
                        'hatchery',
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
                    name = "hatchery",
                    icon = "__pyalienlifegraphics3__/graphics/technology/hatchery.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'zipir-reef-mk01',
                        'zipir-reef-mk02',
                        'zipir-reef-mk03',
                        'zipir-reef-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.42,
                        speed = 0.0,
                        productivity = 0.1,
                        pollution = -1
                    },
                techs_to_lock =
                    {
                        'suicide',
                        'sr'
                    }
                },
            }
    }

return(tech_upgrades)
