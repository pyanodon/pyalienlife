
local tech_upgrades =
    {
        master_tech =
            {
            name = "ralesia-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-ralesia.png",
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
                    name = "improved-burst", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/improved-burst.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'ralesia-plantation-mk01',
                        'ralesia-plantation-mk02',
                        'ralesia-plantation-mk03',
                        'ralesia-plantation-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.0, --energy usage
                        speed = 0.3, -- machine speed
                        productivity = -0.10, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = -0.05 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'sun-concentration',
                        'h2-recycle',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "sun-concentration",
                    icon = "__pyalienlifegraphics3__/graphics/technology/sun-concentration.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'ralesia-plantation-mk01',
                        'ralesia-plantation-mk02',
                        'ralesia-plantation-mk03',
                        'ralesia-plantation-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed = 0.0,
                        productivity = 0.25,
                        pollution = 0.2
                    },
                techs_to_lock =
                    {
                        'improved-burst',
                        'h2-recycle',
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
                    name = "h2-recycle",
                    icon = "__pyalienlifegraphics3__/graphics/technology/h2-recycle.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'ralesia-plantation-mk01',
                        'ralesia-plantation-mk02',
                        'ralesia-plantation-mk03',
                        'ralesia-plantation-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.25,
                        speed = 0.0,
                        productivity = 0.0,
                        pollution = -0.80
                    },
                techs_to_lock =
                    {
                        'improved-burst',
                        'sun-concentration'
                    }
                },
            }
    }

return(tech_upgrades)