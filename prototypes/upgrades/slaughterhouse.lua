
--tech upgrade test example file

local tech_upgrades =
    {
        example_1 = -- can be whatever just used to identify this table
            {
            technology = -- no touchy
                {
                name = "laser-cutting", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/laser-cutting.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                prerequisites = {"rendering"},
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
                entities =
                {
                    'slaughterhouse-mk01',
                    'slaughterhouse-mk02',
                    'slaughterhouse-mk03',
                    'slaughterhouse-mk04',
                },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
            upgrades = -- the effects the tech will have on the building. 1 = 100%
                {
                    consumption = 1.8, --energy usage
                    speed = 1.2, -- machine speed
                    productivity = 0.8, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                    pollution = 1.3 -- pollution this machine will produce while running
                },
            techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                {
                    'lard-machine',
                    'mercy-killing',
                }
            },
        example_2 =
            {
            technology =
                {
                name = "mercy-killing",
                icon = "__pyalienlifegraphics3__/graphics/technology/mercy-killing.png",
                icon_size = 128,
                order = "c-a",
                prerequisites = {"rendering"},
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
                entities =
                {
                    'slaughterhouse-mk01',
                    'slaughterhouse-mk02',
                    'slaughterhouse-mk03',
                    'slaughterhouse-mk04',
                },
            upgrades =
                {
                    consumption = 1.2,
                    speed = 0.85,
                    productivity = 1.2,
                    pollution = 1.0
                },
            techs_to_lock =
                {
                    'lard-machine',
                    'laser-cutting',
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
                name = "lard-machine",
                icon = "__pyalienlifegraphics3__/graphics/technology/lard-machine.png",
                icon_size = 128,
                order = "c-a",
                prerequisites = {"vrauks-mk02"},
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
            entities =
                {
                    'slaughterhouse-mk01',
                    'slaughterhouse-mk02',
                    'slaughterhouse-mk03',
                    'slaughterhouse-mk04',
                },
            upgrades =
                {
                    consumption = 1,
                    speed = 0.8,
                    productivity = 1,
                    pollution = 0.5
                },
            techs_to_lock =
                {
                    'laser-cutting',
                    'mercy-killing'
                }
            },
    }

return(tech_upgrades)