
local tech_upgrades =
    {
        master_tech =
            {
            name = "bhoddos-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-bhoddos.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"bhoddos-mk02"},
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
                    name = "extra-drones", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/extra-drones.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'bhoddos-culture-mk01',
                        'bhoddos-culture-mk02',
                        'bhoddos-culture-mk03',
                        'bhoddos-culture-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.2, --energy usage
                        speed = 0.3, -- machine speed
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'exoenzymes',
                        'gills',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "exoenzymes",
                    icon = "__pyalienlifegraphics3__/graphics/technology/exoenzymes.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'bhoddos-culture-mk01',
                        'bhoddos-culture-mk02',
                        'bhoddos-culture-mk03',
                        'bhoddos-culture-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed = -0.1,
                        productivity = 0.1,
                        pollution = -0.85
                    },
                techs_to_lock =
                    {
                        'extra-drones',
                        'gills',
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
                    name = "gills",
                    icon = "__pyalienlifegraphics3__/graphics/technology/gills.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'bhoddos-culture-mk01',
                        'bhoddos-culture-mk02',
                        'bhoddos-culture-mk03',
                        'bhoddos-culture-mk04',
                    },
                upgrades =
                    {
                        consumption = 0,
                        speed = -0.2,
                        productivity = 0.3,
                        pollution = -0.1
                    },
                techs_to_lock =
                    {
                        'extra-drones',
                        'exoenzymes'
                    }
                },
            }
    }

return(tech_upgrades)