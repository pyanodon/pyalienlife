
local tech_upgrades =
    {
        master_tech =
            {
            name = "simik-digestion-mk06", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/simik-digestion-mk06.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"simik-digestion-mk05","simik-mk04"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"military-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {'production-science-pack', 1},
                    {'utility-science-pack', 1},
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
                    name = "simik-silver", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/simik-silver.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'simik-den-mk01',
                        'simik-den-mk02',
                        'simik-den-mk03',
                        'simik-den-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                is_upgrade = true,
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.0, --energy usage
                        speed = 0.0, -- machine speed
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'simik-gold',
                        'simik-uranium',
                    },
                recipes_to_unlock =
                    {
                        'simik-silver'
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "simik-gold",
                    icon = "__pyalienlifegraphics3__/graphics/technology/simik-gold.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'simik-den-mk01',
                        'simik-den-mk02',
                        'simik-den-mk03',
                        'simik-den-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed = 0.0,
                        productivity = 0.0,
                        pollution = 0.0
                    },
                techs_to_lock =
                    {
                        'simik-silver',
                        'simik-uranium',
                    },
                is_upgrade = true, -- tell this its an upgrade of other techs
                recipes_to_unlock =
                {
                    'simik-gold'
                }
                },
            example_3 =
                {
                technology =
                    {
                    name = "simik-uranium",
                    icon = "__pyalienlifegraphics3__/graphics/technology/simik-uranium.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'simik-den-mk01',
                        'simik-den-mk02',
                        'simik-den-mk03',
                        'simik-den-mk04',
                    },
                upgrades =
                    {
                        consumption = 0,
                        speed = -0.0,
                        productivity = 0.0,
                        pollution = -0.0
                    },
                techs_to_lock =
                    {
                        'simik-silver',
                        'simik-gold'
                    },
                    is_upgrade = true, -- tell this its an upgrade of other techs
                    recipes_to_unlock =
                    {
                        'simik-uranium'
                    }
                },
            }
    }

return(tech_upgrades)
