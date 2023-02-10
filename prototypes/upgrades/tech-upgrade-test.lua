
--tech upgrade test example file

local tech_upgrades =
    {
        example_1 = -- can be whatever just used to identify this table
            {
            technology = -- no touchy
                {
                name = "parthenogenesis",
                icon = "__pyalienlifegraphics3__/graphics/technology/parthenogenesis.png",
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
            entities = {'vrauks-paddock-mk01', 'vrauks-paddock-mk02','vrauks-paddock-mk03','vrauks-paddock-mk04'},-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
            upgrades = -- the effects the tech will have on the building. 1 = 100%
                {
                    consumption = 1.5, --energy usage
                    speed = 1.2, -- machine speed
                    productivity = 0.8, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                    pollution = 1.2 -- pollution this machine will produce while running
                },
            techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                {
                    'reuse-water',
                    'natural-cycle',
                }
            },
        example_2 =
            {
            technology =
                {
                name = "natural-cycle",
                icon = "__pyalienlifegraphics3__/graphics/technology/natural-cycle.png",
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
            entities = {'vrauks-paddock-mk01', 'vrauks-paddock-mk02','vrauks-paddock-mk03','vrauks-paddock-mk04'},
            upgrades =
                {
                    consumption = 0.7,
                    speed = 0.8,
                    productivity = 0.9,
                    pollution = 1.0
                },
            techs_to_lock =
                {
                    'parthenogenesis',
                    'reuse-water',
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
                name = "reuse-water",
                icon = "__pyalienlifegraphics3__/graphics/technology/reuse-water.png",
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
                    'vrauks-paddock-mk01',
                    'vrauks-paddock-mk02',
                    'vrauks-paddock-mk03',
                    'vrauks-paddock-mk04',
                },
            upgrades =
                {
                    consumption = 1.1,
                    speed = 0.8,
                    productivity = 0.8,
                    pollution = 0.5
                },
            techs_to_lock =
                {
                    'natural-cycle',
                    'parthenogenesis'
                }
            },
        example_4 =
            {
            technology =
                {
                name = "test-4",
                icon = "__pyalienlifegraphics__/graphics/technology/adv-rendering.png",
                icon_size = 128,
                order = "c-a",
                prerequisites = {"biotech-mk02","rendering"},
                unit = {
                    count = 160,
                    ingredients = {
                        {"automation-science-pack", 1},
                        {"logistic-science-pack", 1},
                    },
                    time = 45
                    }
                },
            entities = {'automated-factory-mk03'},
            upgrades =
                {
                    consumption = 10,
                    speed = 10,
                    productivity = 10,
                    pollution = 10
                },
            techs_to_lock =
                {
                    'test-1'
                }
            }
    }

return(tech_upgrades)