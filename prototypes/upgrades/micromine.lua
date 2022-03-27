
local tech_upgrades =
    {
        master_tech =
            {
            name = "micromine-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-micromine.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"microbiology-mk02"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    -- {'py-science-pack-2', 1},
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
                    name = "adv", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/adv.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'micro-mine-mk01',
                        'micro-mine-mk02',
                        'micro-mine-mk03',
                        'micro-mine-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.08, --energy usage
                        speed = 0.25, -- machine speed
                        productivity = -0.05, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.1 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        '4D',
                        'dna-damage',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "4D",
                    icon = "__pyalienlifegraphics3__/graphics/technology/4D.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'micro-mine-mk01',
                        'micro-mine-mk02',
                        'micro-mine-mk03',
                        'micro-mine-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed = -0.1,
                        productivity = 0.3,
                        pollution = 0.15
                    },
                techs_to_lock =
                    {
                        'adv',
                        'dna-damage',
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
                    name = "dna-damage",
                    icon = "__pyalienlifegraphics3__/graphics/technology/dna-damage.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'micro-mine-mk01',
                        'micro-mine-mk02',
                        'micro-mine-mk03',
                        'micro-mine-mk04',
                    },
                upgrades =
                    {
                        consumption = -0.2,
                        speed = -0.05,
                        productivity = 0.0,
                        pollution = -0.75
                    },
                techs_to_lock =
                    {
                        'adv',
                        '4D'
                    }
                },
            }
    }

return(tech_upgrades)
