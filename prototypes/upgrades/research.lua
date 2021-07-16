
local tech_upgrades =
    {
        master_tech =
            {
            name = "research-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-research.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"biotech-mk02"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {'py-science-pack-2', 1},
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
                    name = "ms", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/ms.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'research-center-mk01',
                        'research-center-mk02',
                        'research-center-mk03',
                        'research-center-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.5, --energy usage
                        speed = 0.2, -- machine speed
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.3 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'mci',
                        'spg',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "mci",
                    icon = "__pyalienlifegraphics3__/graphics/technology/mci.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'research-center-mk01',
                        'research-center-mk02',
                        'research-center-mk03',
                        'research-center-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.25,
                        speed = -0.2,
                        productivity = 0.35,
                        pollution = 0.1
                    },
                techs_to_lock =
                    {
                        'ms',
                        'spg',
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
                    name = "spg",
                    icon = "__pyalienlifegraphics3__/graphics/technology/spg.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'research-center-mk01',
                        'research-center-mk02',
                        'research-center-mk03',
                        'research-center-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.1,
                        speed = 0.0,
                        productivity = 0.05,
                        pollution = -0.6
                    },
                techs_to_lock =
                    {
                        'ms',
                        'mci'
                    }
                },
            }
    }

return(tech_upgrades)
