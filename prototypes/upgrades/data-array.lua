
local tech_upgrades =
    {
        master_tech =
            {
            name = "data-array-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-data-array.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"xenobiology"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
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
                    name = "booster", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/booster.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'data-array',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = -0.3, --energy usage
                        speed = 0.25, -- machine speed
                        productivity = -0.1, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.25 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'dbwt',
                        'solar-p',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "dbwt",
                    icon = "__pyalienlifegraphics3__/graphics/technology/dbwt.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'data-array',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed = -0.1,
                        productivity = 0.4,
                        pollution = 0.05
                    },
                techs_to_lock =
                    {
                        'booster',
                        'solar-p',
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
                    name = "solar-p",
                    icon = "__pyalienlifegraphics3__/graphics/technology/solar-p.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'data-array',
                    },
                upgrades =
                    {
                        consumption = -0.2,
                        speed = 0.0,
                        productivity = 0,
                        pollution = -0.85
                    },
                techs_to_lock =
                    {
                        'booster',
                        'dbwt'
                    }
                },
            }
    }

return(tech_upgrades)