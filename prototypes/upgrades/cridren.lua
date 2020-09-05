
local tech_upgrades =
    {
        master_tech =
            {
            name = "cridren-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-cridren.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"cridren-mk02"},
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
                    name = "sixth-layer", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/sixth-layer.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'cridren-enclosure-mk01',
                        'cridren-enclosure-mk02',
                        'cridren-enclosure-mk03',
                        'cridren-enclosure-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.3, --energy usage
                        speed = 0.0, -- machine speed
                        productivity = 0.4, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'neural-cranio',
                        'mufflers',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "neural-cranio",
                    icon = "__pyalienlifegraphics3__/graphics/technology/neural-cranio.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'cridren-enclosure-mk01',
                        'cridren-enclosure-mk02',
                        'cridren-enclosure-mk03',
                        'cridren-enclosure-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed = 0.2,
                        productivity = 0.0,
                        pollution = 0.15
                    },
                techs_to_lock =
                    {
                        'sixth-layer',
                        'mufflers',
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
                    name = "mufflers",
                    icon = "__pyalienlifegraphics3__/graphics/technology/mufflers.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'cridren-enclosure-mk01',
                        'cridren-enclosure-mk02',
                        'cridren-enclosure-mk03',
                        'cridren-enclosure-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed = 0.0,
                        productivity = 0.1,
                        pollution = -0.6
                    },
                techs_to_lock =
                    {
                        'sixth-layer',
                        'neural-cranio'
                    }
                },
            }
    }

return(tech_upgrades)