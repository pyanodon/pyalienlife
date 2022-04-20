
local tech_upgrades =
    {
        master_tech =
            {
            name = "compost-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-compost.png",
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
                    name = "constant", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/constant.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'compost-plant-mk01',
                        'compost-plant-mk02',
                        'compost-plant-mk03',
                        'compost-plant-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.2, --energy usage
                        speed = 0.25, -- machine speed
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'humus',
                        'worm-hotel',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "humus",
                    icon = "__pyalienlifegraphics3__/graphics/technology/humus.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'compost-plant-mk01',
                        'compost-plant-mk02',
                        'compost-plant-mk03',
                        'compost-plant-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.2,
                        speed = 0.0,
                        productivity = 0.1,
                        pollution = 0.5
                    },
                techs_to_lock =
                    {
                        'constant',
                        'worm-hotel',
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
                    name = "worm-hotel",
                    icon = "__pyalienlifegraphics3__/graphics/technology/worm-hotel.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'compost-plant-mk01',
                        'compost-plant-mk02',
                        'compost-plant-mk03',
                        'compost-plant-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.3,
                        speed = 0.0,
                        productivity = 0.1,
                        pollution = -0.95
                    },
                techs_to_lock =
                    {
                        'constant',
                        'humus'
                    }
                },
            }
    }

return(tech_upgrades)
