
local tech_upgrades =
    {
        master_tech = -- This is the tech that is displayed in the tech tree
            {
                name = "tuuphra-upgrade", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-tuuphra.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                prerequisites = {"tuuphra-mk02"},
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
                name = "fi", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/fi.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'tuuphra-plantation-mk01',
                    'tuuphra-plantation-mk02',
                    'tuuphra-plantation-mk03',
                    'tuuphra-plantation-mk04',
                },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
            upgrades = -- the effects the tech will have on the building. 1 = 100%
                {
                    consumption = 0.5, --energy usage
                    speed = 0.0, -- machine speed
                    productivity = 0.45, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                    pollution = 0.1 -- pollution this machine will produce while running
                },
            techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                {
                    'fungicide',
                    'tr',
                },
            is_upgrade = true,
            },
        example_2 =
            {
            technology =
                {
                name = "fungicide",
                icon = "__pyalienlifegraphics3__/graphics/technology/fungicide.png",
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'tuuphra-plantation-mk01',
                    'tuuphra-plantation-mk02',
                    'tuuphra-plantation-mk03',
                    'tuuphra-plantation-mk04',
                },
            upgrades =
                {
                    consumption = -0.0,
                    speed =
                            {
                                percent = 0.38, -- displayed machine speed
                                module_amount = 60.8, -- actual module bonus
                            },
                    productivity = -0.0,
                    pollution = 0.5
                },
            techs_to_lock =
                {
                    'fi',
                    'tr',
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
                name = "tr",
                icon = "__pyalienlifegraphics3__/graphics/technology/tr.png",
                icon_size = 128,
                order = "c-a",
                },
            entities =
                {
                    'tuuphra-plantation-mk01',
                    'tuuphra-plantation-mk02',
                    'tuuphra-plantation-mk03',
                    'tuuphra-plantation-mk04',
                },
            upgrades =
                {
                    consumption = -0.5,
                    speed =
                            {
                                percent = -0.1, -- displayed machine speed
                                module_amount = -16, -- actual module bonus
                            },
                    speed = -0.1,
                    productivity = -0.1,
                    pollution = -0.80
                },
            techs_to_lock =
                {
                    'fi',
                    'fungicide'
                }
            },
        }
    }

return(tech_upgrades)
