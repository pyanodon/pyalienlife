
local tech_upgrades =
    {
        master_tech =
            {
            name = "ulric-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-ulric.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"ulric-mk02"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
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
                    name = "dummy-ulric", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/dummy-ulric.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'ulric-corral-mk01',
                        'ulric-corral-mk02',
                        'ulric-corral-mk03',
                        'ulric-corral-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.05, --energy usage
                        speed = -0.1, -- machine speed
                        productivity = 0.12, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'heated-pads',
                        'scraping-bots',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "heated-pads",
                    icon = "__pyalienlifegraphics3__/graphics/technology/heating-pad.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'ulric-corral-mk01',
                        'ulric-corral-mk02',
                        'ulric-corral-mk03',
                        'ulric-corral-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.05,
                        speed = 0.1,
                        productivity = 0.0,
                        pollution = 0.15
                    },
                techs_to_lock =
                    {
                        'dummy-ulric',
                        'scraping-bots',
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
                    name = "scraping-bots",
                    icon = "__pyalienlifegraphics3__/graphics/technology/scraping-bots.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'ulric-corral-mk01',
                        'ulric-corral-mk02',
                        'ulric-corral-mk03',
                        'ulric-corral-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed = 0.0,
                        productivity = 0.0,
                        pollution = -0.3
                    },
                techs_to_lock =
                    {
                        'heated-pads',
                        'dummy-ulric'
                    }
                },
            }
    }

return(tech_upgrades)