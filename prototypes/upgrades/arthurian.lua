
local tech_upgrades =
    {
        master_tech =
            {
            name = "arthurian-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-arthurian.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"arthurian-mk02"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {'py-science-pack-2', 1},
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
                    name = "abacus", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/abacus.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'arthurian-pen-mk01',
                        'arthurian-pen-mk02',
                        'arthurian-pen-mk03',
                        'arthurian-pen-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                is_upgrade = true,
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.0, --energy usage
                        speed =
                        {
                            percent = 0.0, -- displayed machine speed
                            module_amount = 0, -- actual module bonus
                        },
                        productivity = 0.15, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'heated-stone',
                        'cannibalism',
                    },
                recipes_to_unlock =
                    {
                        'abacus'
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "heated-stone",
                    icon = "__pyalienlifegraphics3__/graphics/technology/heated-stone.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'arthurian-pen-mk01',
                        'arthurian-pen-mk02',
                        'arthurian-pen-mk03',
                        'arthurian-pen-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.1,
                        speed =
                        {
                            percent = 0.1, -- displayed machine speed
                            module_amount = 16, -- actual module bonus
                        },
                        productivity = 0.0,
                        pollution = 0.05
                    },
                techs_to_lock =
                    {
                        'abacus',
                        'cannibalism',
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
                    name = "cannibalism",
                    icon = "__pyalienlifegraphics3__/graphics/technology/cannibalism.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'arthurian-pen-mk01',
                        'arthurian-pen-mk02',
                        'arthurian-pen-mk03',
                        'arthurian-pen-mk04',
                    },
                upgrades =
                    {
                        consumption = 0,
                        speed =
                        {
                            percent = -0.1, -- displayed machine speed
                            module_amount = -16, -- actual module bonus
                        },
                        productivity = 0.05,
                        pollution = -0.4
                    },
                techs_to_lock =
                    {
                        'abacus',
                        'heated-stone'
                    }
                },
            }
    }

return(tech_upgrades)
