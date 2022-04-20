
local tech_upgrades =
    {
        master_tech =
            {
            name = "bioreactor-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-bioreactor.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"biotech-mk02"},
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
                    name = "aerators", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/aerators.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'bio-reactor-mk01',
                        'bio-reactor-mk02',
                        'bio-reactor-mk03',
                        'bio-reactor-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.3, --energy usage
                        speed = 0.0, -- machine speed
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = -0.5 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'baffles',
                        'jacket',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "baffles",
                    icon = "__pyalienlifegraphics3__/graphics/technology/baffles.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'bio-reactor-mk01',
                        'bio-reactor-mk02',
                        'bio-reactor-mk03',
                        'bio-reactor-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed = 0.0,
                        productivity = 0.2,
                        pollution = 0.15
                    },
                techs_to_lock =
                    {
                        'aerators',
                        'jacket',
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
                    name = "jacket",
                    icon = "__pyalienlifegraphics3__/graphics/technology/jacket.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'bio-reactor-mk01',
                        'bio-reactor-mk02',
                        'bio-reactor-mk03',
                        'bio-reactor-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.25,
                        speed = 0.3,
                        productivity = 0.0,
                        pollution = 0.1
                    },
                techs_to_lock =
                    {
                        'aerators',
                        'baffles'
                    }
                },
            }
    }

return(tech_upgrades)
