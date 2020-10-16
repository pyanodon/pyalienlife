
local tech_upgrades =
    {
        master_tech =
            {
            name = "moss-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-moss.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"microbiology-mk02"},
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
                    name = "spores", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/spores.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'moss-farm-mk01',
                        'moss-farm-mk02',
                        'moss-farm-mk03',
                        'moss-farm-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                is_upgrade = true,
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.0, --energy usage
                        speed = 0.0, -- machine speed
                        productivity = 0.5, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'hd-moss',
                        'inbuilt-moss',
                    },
                recipes_to_unlock =
                    {
                        'chlorinated water'
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "hd-moss",
                    icon = "__pyalienlifegraphics3__/graphics/technology/hd-moss.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'moss-farm-mk01',
                        'moss-farm-mk02',
                        'moss-farm-mk03',
                        'moss-farm-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.1,
                        speed = 0.25,
                        productivity = 0.0,
                        pollution = 0.15
                    },
                techs_to_lock =
                    {
                        'spores',
                        'inbuilt-moss',
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
                    name = "inbuilt-moss",
                    icon = "__pyalienlifegraphics3__/graphics/technology/inbuilt-moss.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'moss-farm-mk01',
                        'moss-farm-mk02',
                        'moss-farm-mk03',
                        'moss-farm-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.15,
                        speed = 0.0,
                        productivity = -0.1,
                        pollution = -1.1
                    },
                techs_to_lock =
                    {
                        'spores',
                        'hd-moss'
                    }
                },
            }
    }

return(tech_upgrades)
