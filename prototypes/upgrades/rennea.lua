
local tech_upgrades =
    {
        master_tech =
            {
            name = "rennea-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-rennea.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"water-animals-mk02"},
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
                    name = "deadheading", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/deadheading.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'rennea-plantation-mk01',
                        'rennea-plantation-mk02',
                        'rennea-plantation-mk03',
                        'rennea-plantation-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.0, --energy usage
                        speed =
                            {
                                percent = 0.5, -- displayed machine speed
                                module_amount = 75, -- actual module bonus
                            },
                        productivity = -0.10, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = -0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'alltime',
                        'aphid-cleaning',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "alltime",
                    icon = "__pyalienlifegraphics3__/graphics/technology/alltime.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'rennea-plantation-mk01',
                        'rennea-plantation-mk02',
                        'rennea-plantation-mk03',
                        'rennea-plantation-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed = 0.0,
                        productivity = 0.25,
                        pollution = 0.25
                    },
                techs_to_lock =
                    {
                        'deadheading',
                        'aphid-cleaning',
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
                    name = "aphid-cleaning",
                    icon = "__pyalienlifegraphics3__/graphics/technology/aphid-cleaning.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'rennea-plantation-mk01',
                        'rennea-plantation-mk02',
                        'rennea-plantation-mk03',
                        'rennea-plantation-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.05,
                        speed =
                            {
                                percent = -0.15, -- displayed machine speed
                                module_amount = -22.5, -- actual module bonus
                            },
                        productivity = 0.3,
                        pollution = 0.00
                    },
                techs_to_lock =
                    {
                        'deadheading',
                        'alltime'
                    }
                },
            }
    }

return(tech_upgrades)
