
local tech_upgrades =
    {
        master_tech =
            {
            name = "vonix-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-vonix.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"vonix"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {'chemical-science-pack', 1},
                    {"py-science-pack", 1},
                    {'production-science-pack', 1},
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
                    name = "evoa", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/evoa.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'vonix-den-mk01',
                        'vonix-den-mk02',
                        'vonix-den-mk03',
                        'vonix-den-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.1, --energy usage
                        speed = -0.1, -- machine speed
                        productivity = 0.3, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.15 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'dermal',
                        'uge',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "uge",
                    icon = "__pyalienlifegraphics3__/graphics/technology/uge.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'vonix-den-mk01',
                        'vonix-den-mk02',
                        'vonix-den-mk03',
                        'vonix-den-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed = 0.28,
                        productivity = 0.0,
                        pollution = 0.3
                    },
                techs_to_lock =
                    {
                        'dermal',
                        'evoa',
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
                    name = "dermal",
                    icon = "__pyalienlifegraphics3__/graphics/technology/dermal.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'vonix-den-mk01',
                        'vonix-den-mk02',
                        'vonix-den-mk03',
                        'vonix-den-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.5,
                        speed = 0.1,
                        productivity = 0,
                        pollution = -0.5
                    },
                techs_to_lock =
                    {
                        'evoa',
                        'uge'
                    }
                },
            }
    }

return(tech_upgrades)