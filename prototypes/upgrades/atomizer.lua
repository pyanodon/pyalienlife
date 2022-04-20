
local tech_upgrades =
    {
        master_tech =
            {
            name = "atomizer-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-atomizer.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"molecular-decohesion-mk02"},
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
                    name = "sc-core", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/sc-core.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'atomizer-mk01',
                        'atomizer-mk02',
                        'atomizer-mk03',
                        'atomizer-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.5, --energy usage
                        speed = 0.3, -- machine speed
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.5 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'sub-atomic',
                        'd-core',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "sub-atomic",
                    icon = "__pyalienlifegraphics3__/graphics/technology/sub-atomic.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'atomizer-mk01',
                        'atomizer-mk02',
                        'atomizer-mk03',
                        'atomizer-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.3,
                        speed = 0.0,
                        productivity = 0.5,
                        pollution = 0.8
                    },
                techs_to_lock =
                    {
                        'sc-core',
                        'd-core',
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
                    name = "d-core",
                    icon = "__pyalienlifegraphics3__/graphics/technology/d-core.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'atomizer-mk01',
                        'atomizer-mk02',
                        'atomizer-mk03',
                        'atomizer-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.5,
                        speed = 0.0,
                        productivity = 0.0,
                        pollution = -1.0
                    },
                techs_to_lock =
                    {
                        'sc-core',
                        'sub-atomic'
                    }
                },
            }
    }

return(tech_upgrades)
