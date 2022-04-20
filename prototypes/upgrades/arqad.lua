
local tech_upgrades =
    {
        master_tech =
            {
            name = "arqad-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-arqad.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"arqad-mk02"},
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
                    name = "air-conditioner", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/air-con.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'arqad-hive-mk01',
                        'arqad-hive-mk02',
                        'arqad-hive-mk03',
                        'arqad-hive-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.5, --energy usage
                        speed =
                        {
                            percent = 0.0, -- displayed machine speed
                            module_amount = 0, -- actual module bonus
                        },
                        productivity = 0.2, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'cags',
                        'drone',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "cags",
                    icon = "__pyalienlifegraphics3__/graphics/technology/cags.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'arqad-hive-mk01',
                        'arqad-hive-mk02',
                        'arqad-hive-mk03',
                        'arqad-hive-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.2,
                        speed =
                        {
                            percent = 0.0, -- displayed machine speed
                            module_amount = 0, -- actual module bonus
                        },
                        productivity = 0.0,
                        pollution = -0.1
                    },
                techs_to_lock =
                    {
                        'air-conditioner',
                        'drone',
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
                    name = "drone",
                    icon = "__pyalienlifegraphics3__/graphics/technology/drone.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'arqad-hive-mk01',
                        'arqad-hive-mk02',
                        'arqad-hive-mk03',
                        'arqad-hive-mk04',
                    },
                upgrades =
                    {
                        consumption = 0,
                        speed =
                            {
                                percent = 0.12,
                                module_amount = 18.9
                            },
                        productivity = -0.05,
                        pollution = -0.0
                    },
                techs_to_lock =
                    {
                        'air-conditioner',
                        'cags'
                    }
                },
            }
    }

return(tech_upgrades)
