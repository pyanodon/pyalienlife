
local tech_upgrades =
    {
        master_tech =
            {
            name = "mukmoux-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-mukmoux.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"microbiology-mk02"},
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
                    name = "zero-cross", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/zero-cross.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'mukmoux-pasture-mk01',
                        'mukmoux-pasture-mk02',
                        'mukmoux-pasture-mk03',
                        'mukmoux-pasture-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.1, --energy usage
                        speed =
                            {
                                percent = -0.14, -- displayed machine speed
                                module_amount = -30.63, -- actual module bonus
                            },
                        productivity = 0.2, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.11 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'bip',
                        'think-collar',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "bip",
                    icon = "__pyalienlifegraphics3__/graphics/technology/bip.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'mukmoux-pasture-mk01',
                        'mukmoux-pasture-mk02',
                        'mukmoux-pasture-mk03',
                        'mukmoux-pasture-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed =
                            {
                                percent = 0.22, -- displayed machine speed
                                module_amount = 48.12, -- actual module bonus
                            },
                        productivity = -0.05,
                        pollution = 0.05
                    },
                techs_to_lock =
                    {
                        'zero-cross',
                        'think-collar',
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
                    name = "think-collar",
                    icon = "__pyalienlifegraphics3__/graphics/technology/think-collar.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'mukmoux-pasture-mk01',
                        'mukmoux-pasture-mk02',
                        'mukmoux-pasture-mk03',
                        'mukmoux-pasture-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.2,
                        speed = 0.0,
                        productivity = 0.05,
                        pollution = -0.75
                    },
                techs_to_lock =
                    {
                        'zero-cross',
                        'bip'
                    }
                },
            }
    }

return(tech_upgrades)
