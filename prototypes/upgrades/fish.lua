
local tech_upgrades =
    {
        master_tech =
            {
            name = "fish-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-fish.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"water-animals-mk02"},
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
                    name = "a-select", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/a-select.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'fish-farm-mk01',
                        'fish-farm-mk02',
                        'fish-farm-mk03',
                        'fish-farm-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = -0.1, --energy usage
                        speed = 0.4, -- machine speed
                        productivity = 0.15, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'temp-control',
                        'dosing-pump',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "temp-control",
                    icon = "__pyalienlifegraphics3__/graphics/technology/temp-control.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'fish-farm-mk01',
                        'fish-farm-mk02',
                        'fish-farm-mk03',
                        'fish-farm-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.35,
                        speed = 0.1,
                        productivity = 0.3,
                        pollution = 0.3
                    },
                techs_to_lock =
                    {
                        'a-select',
                        'dosing-pump',
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
                    name = "dosing-pump",
                    icon = "__pyalienlifegraphics3__/graphics/technology/dosing-pump.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'fish-farm-mk01',
                        'fish-farm-mk02',
                        'fish-farm-mk03',
                        'fish-farm-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.1,
                        speed = 0.0,
                        productivity = 0.1,
                        pollution = -0.70
                    },
                techs_to_lock =
                    {
                        'a-select',
                        'temp-control'
                    }
                },
            }
    }

return(tech_upgrades)