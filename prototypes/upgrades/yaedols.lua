
local tech_upgrades =
    {
        master_tech =
            {
            name = "yaedols-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-yaedols.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"yaedols-mk02"},
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
                    name = "sub-s", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/sub-s.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'yaedols-culture-mk01',
                        'yaedols-culture-mk02',
                        'yaedols-culture-mk03',
                        'yaedols-culture-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.3, --energy usage
                        speed = 0.0, -- machine speed
                        productivity = 0.35, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.35 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'duct',
                        'humidity-control',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "duct",
                    icon = "__pyalienlifegraphics3__/graphics/technology/duct.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'yaedols-culture-mk01',
                        'yaedols-culture-mk02',
                        'yaedols-culture-mk03',
                        'yaedols-culture-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.25,
                        speed =
                            {
                                percent = 0.3, -- displayed machine speed
                                module_amount = 52.5, -- actual module bonus
                            },
                        productivity = 0.0,
                        pollution = 0.2
                    },
                techs_to_lock =
                    {
                        'sub-s',
                        'humidity-control',
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
                    name = "humidity-control",
                    icon = "__pyalienlifegraphics3__/graphics/technology/humidity-control.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'yaedols-culture-mk01',
                        'yaedols-culture-mk02',
                        'yaedols-culture-mk03',
                        'yaedols-culture-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.1,
                        speed =
                            {
                                percent = 0.1, -- displayed machine speed
                                module_amount = 17.5, -- actual module bonus
                            },
                        productivity = 0.0,
                        pollution = -0.90
                    },
                techs_to_lock =
                    {
                        'sub-s',
                        'duct'
                    }
                },
            }
    }

return(tech_upgrades)
