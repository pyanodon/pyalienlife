
local tech_upgrades =
    {
        master_tech =
            {
            name = "kicalk-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-kicalk.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"kicalk-mk02"},
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
        is_ht = true,
        sub_techs =
            {
            example_1 = -- can be whatever just used to identify this table
                {
                technology = -- no touchy
                    {
                    name = "wire-netting", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/wire-netting.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'kicalk-plantation-mk01',
                        'kicalk-plantation-mk02',
                        'kicalk-plantation-mk03',
                        'kicalk-plantation-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.1, --energy usage
                        speed =
                            {
                                percent = -0.1, -- displayed machine speed
                                module_amount = -15, -- actual module bonus
                            },
                        productivity = 0.3, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'extra-water',
                        'crop-rotation',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "extra-water",
                    icon = "__pyalienlifegraphics3__/graphics/technology/extra-water.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'kicalk-plantation-mk01',
                        'kicalk-plantation-mk02',
                        'kicalk-plantation-mk03',
                        'kicalk-plantation-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed =
                            {
                                percent = 0.3, -- displayed machine speed
                                module_amount = 45, -- actual module bonus
                            },
                        productivity = 0.0,
                        pollution = 0.15
                    },
                techs_to_lock =
                    {
                        'wire-netting',
                        'crop-rotation',
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
                    name = "crop-rotation",
                    icon = "__pyalienlifegraphics3__/graphics/technology/crop-rotation.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'kicalk-plantation-mk01',
                        'kicalk-plantation-mk02',
                        'kicalk-plantation-mk03',
                        'kicalk-plantation-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.2,
                        speed =
                            {
                                percent = -0.1, -- displayed machine speed
                                module_amount = -15, -- actual module bonus
                            },
                        productivity = 0.0,
                        pollution = -0.98
                    },
                techs_to_lock =
                    {
                        'wire-netting',
                        'extra-water'
                    }
                },
            }
    }

return(tech_upgrades)
