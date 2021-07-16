
local tech_upgrades =
    {
        master_tech =
            {
            name = "xeno-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-xeno.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"xeno-mk02"},
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
                    name = "ap", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/ap.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'xenopen-mk01',
                        'xenopen-mk02',
                        'xenopen-mk03',
                        'xenopen-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.0, --energy usage
                        speed =
                            {
                                percent = -0.1, -- displayed machine speed
                                module_amount = -14.4, -- actual module bonus
                            },
                        productivity = 0.5, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.2 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'herm',
                        'hive',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "herm",
                    icon = "__pyalienlifegraphics3__/graphics/technology/herm.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'xenopen-mk01',
                        'xenopen-mk02',
                        'xenopen-mk03',
                        'xenopen-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.15,
                        speed =
                            {
                                percent = 0.45, -- displayed machine speed
                                module_amount = 64.8, -- actual module bonus
                            },
                        productivity = -0.15,
                        pollution = 0.25
                    },
                techs_to_lock =
                    {
                        'ap',
                        'hive',
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
                    name = "hive",
                    icon = "__pyalienlifegraphics3__/graphics/technology/hive.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'xenopen-mk01',
                        'xenopen-mk02',
                        'xenopen-mk03',
                        'xenopen-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.4,
                        speed =
                            {
                                percent = 0.1, -- displayed machine speed
                                module_amount = 14.4, -- actual module bonus
                            },
                        productivity = 0.1,
                        pollution = -1
                    },
                techs_to_lock =
                    {
                        'ap',
                        'herm'
                    }
                },
            }
    }

return(tech_upgrades)
