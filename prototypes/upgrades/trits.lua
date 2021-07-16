
local tech_upgrades =
    {
        master_tech =
            {
            name = "trits-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-trits.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"trits-mk02"},
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
                    name = "mgo", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/mgo.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'trits-reef-mk01',
                        'trits-reef-mk02',
                        'trits-reef-mk03',
                        'trits-reef-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.1, --energy usage
                        speed = 0.0, -- machine speed
                        productivity = 0.3, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.1 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'dc',
                        'nexelit-axis',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "dc",
                    icon = "__pyalienlifegraphics3__/graphics/technology/dc.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'trits-reef-mk01',
                        'trits-reef-mk02',
                        'trits-reef-mk03',
                        'trits-reef-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed =
                            {
                                percent = 0.3, -- displayed machine speed
                                module_amount = 66, -- actual module bonus
                            },
                        productivity = -0.1,
                        pollution = 0.0
                    },
                techs_to_lock =
                    {
                        'mgo',
                        'nexelit-axis',
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
                    name = "nexelit-axis",
                    icon = "__pyalienlifegraphics3__/graphics/technology/nexelit-axis.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'trits-reef-mk01',
                        'trits-reef-mk02',
                        'trits-reef-mk03',
                        'trits-reef-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed =
                            {
                                percent = -0.12, -- displayed machine speed
                                module_amount = -26.4, -- actual module bonus
                            },
                        productivity = 0.03,
                        pollution = -0.70
                    },
                techs_to_lock =
                    {
                        'mgo',
                        'dc'
                    }
                },
            }
    }

return(tech_upgrades)
