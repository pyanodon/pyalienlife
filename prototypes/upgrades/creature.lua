
local tech_upgrades =
    {
        master_tech =
            {
            name = "creature-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-creature.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"biotech-mk02"},
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
                    name = "hsn", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/hsn.png",
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
                        'enn',
                        'dwx',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "enn",
                    icon = "__pyalienlifegraphics3__/graphics/technology/enn.png",
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
                        'hsn',
                        'dwx',
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
                    name = "dwx",
                    icon = "__pyalienlifegraphics3__/graphics/technology/dwx.png",
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
                        'hsn',
                        'enn'
                    }
                },
            }
    }

return(tech_upgrades)