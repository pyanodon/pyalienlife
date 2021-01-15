
local tech_upgrades =
    {
        master_tech = -- This is the tech that is displayed in the tech tree
            {
                name = 'vrauks-upgrade',
                icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-vrauk.png",
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
        sub_techs =
            {
            example_1 = -- can be whatever just used to identify this table
                {
                technology = -- no touchy
                    {
                    name = "parthenogenesis", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/parthenogenesis.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities = {'vrauks-paddock-mk01', 'vrauks-paddock-mk02','vrauks-paddock-mk03','vrauks-paddock-mk04'},-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.5, --energy usage
                        speed =
                            {
                                percent = 0.2, -- displayed machine speed
                                module_amount = 31.32, -- actual module bonus
                            },
                        productivity = -0.2, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.2 -- pollution this machine will produce while running
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
                    },
                entities = {'vrauks-paddock-mk01', 'vrauks-paddock-mk02','vrauks-paddock-mk03','vrauks-paddock-mk04'},
                upgrades =
                    {
                        consumption = -0.3,
                        speed =
                            {
                                percent = -0.2, -- displayed machine speed
                                module_amount = -31.32, -- actual module bonus
                            },
                        productivity = -0.1,
                        pollution = 0.0
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
                        consumption = 0.1,
                        speed =
                            {
                                percent = -0.2, -- displayed machine speed
                                module_amount = -31.32, -- actual module bonus
                            },
                        speed = -0.2,
                        productivity = 0.0,
                        pollution = -0.5
                    },
                techs_to_lock =
                    {
                        'natural-cycle',
                        'parthenogenesis'
                    }
                },
        }
    }

return(tech_upgrades)
