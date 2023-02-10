
local tech_upgrades =
    {
        master_tech =
            {
            name = "creature-upgrade",
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-creature.png",
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
                    name = "respiratory",
                    icon = "__pyalienlifegraphics3__/graphics/technology/respiratory.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'creature-chamber-mk01',
                        'creature-chamber-mk02',
                        'creature-chamber-mk03',
                        'creature-chamber-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.1, --energy usage
                        speed = 0.3, -- machine speed
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.15 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'neural-fusion',
                        'cc',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "neural-fusion",
                    icon = "__pyalienlifegraphics3__/graphics/technology/neural-fusion.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'creature-chamber-mk01',
                        'creature-chamber-mk02',
                        'creature-chamber-mk03',
                        'creature-chamber-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.1,
                        speed = -0.15,
                        productivity = 0.4,
                        pollution = 0.25
                    },
                techs_to_lock =
                    {
                        'respiratory',
                        'cc',
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
                    name = "cc",
                    icon = "__pyalienlifegraphics3__/graphics/technology/cc.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'creature-chamber-mk01',
                        'creature-chamber-mk02',
                        'creature-chamber-mk03',
                        'creature-chamber-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.4,
                        speed = -0.1,
                        productivity = 0,
                        pollution = -0.3
                    },
                techs_to_lock =
                    {
                        'respiratory',
                        'neural-fusion'
                    }
                },
            }
    }

return(tech_upgrades)
