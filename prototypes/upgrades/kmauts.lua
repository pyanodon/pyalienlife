
local tech_upgrades =
    {
        master_tech =
            {
            name = "kmauts-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-kmauts.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"kmauts-mk02"},
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
                    name = "sex-ratio", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/sex-ratio.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'kmauts-enclosure-mk01',
                        'kmauts-enclosure-mk02',
                        'kmauts-enclosure-mk03',
                        'kmauts-enclosure-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.0, --energy usage
                        speed =
                            {
                                percent = 0.3, -- displayed machine speed
                                module_amount = 48, -- actual module bonus
                            },
                        productivity = -0.1, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.15 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'eye-out',
                        'moult-recycle',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "eye-out",
                    icon = "__pyalienlifegraphics3__/graphics/technology/eye-out.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'kmauts-enclosure-mk01',
                        'kmauts-enclosure-mk02',
                        'kmauts-enclosure-mk03',
                        'kmauts-enclosure-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.15,
                        speed =
                            {
                                percent = -0.1, -- displayed machine speed
                                module_amount = -16, -- actual module bonus
                            },
                        productivity = 0.4,
                        pollution = 0.15
                    },
                techs_to_lock =
                    {
                        'sex-ratio',
                        'moult-recycle',
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
                    name = "moult-recycle",
                    icon = "__pyalienlifegraphics3__/graphics/technology/moult-recycle.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'kmauts-enclosure-mk01',
                        'kmauts-enclosure-mk02',
                        'kmauts-enclosure-mk03',
                        'kmauts-enclosure-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.0,
                        speed = -0.0,
                        productivity = 0.0,
                        pollution = -1
                    },
                techs_to_lock =
                    {
                        'sex-ratio',
                        'eye-out'
                    }
                },
            }
    }

return(tech_upgrades)
