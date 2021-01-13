
local tech_upgrades =
    {
        master_tech = -- This is the tech that is displayed in the tech tree
            {
                name = "auog-upgrade", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-auog.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                prerequisites = {"auog-mk02"},
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
                name = "sawdust", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/sawdust.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'auog-paddock-mk01',
                    'auog-paddock-mk02',
                    'auog-paddock-mk03',
                    'auog-paddock-mk04',
                },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
            upgrades = -- the effects the tech will have on the building. 1 = 100%
                {
                    consumption = 0.0, --energy usage
                    speed =
                            {
                                percent = 0.15, -- displayed machine speed
                                module_amount = 40.2, -- actual module bonus
                            },
                    productivity = -0.12, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                    pollution = 0.0 -- pollution this machine will produce while running
                },
            techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                {
                    'glowing-mushrooms',
                    'underground-chambers',
                },
            is_upgrade = true,
            },
        example_2 =
            {
            technology =
                {
                name = "glowing-mushrooms",
                icon = "__pyalienlifegraphics3__/graphics/technology/glowing-mushroom.png",
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'auog-paddock-mk01',
                    'auog-paddock-mk02',
                    'auog-paddock-mk03',
                    'auog-paddock-mk04',
                },
            upgrades =
                {
                    consumption = -0.1,
                    speed = 0.0,
                    productivity = -0.1,
                    pollution = -0.3
                },
            techs_to_lock =
                {
                    'sawdust',
                    'underground-chambers',
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
                name = "underground-chambers",
                icon = "__pyalienlifegraphics3__/graphics/technology/underground-chambers.png",
                icon_size = 128,
                order = "c-a",
                },
            entities =
                {
                    'auog-paddock-mk01',
                    'auog-paddock-mk02',
                    'auog-paddock-mk03',
                    'auog-paddock-mk04',
                },
            upgrades =
                {
                    consumption = 0.25,
                    speed = 0,
                    productivity = 0.2,
                    pollution = 0.0
                },
            techs_to_lock =
                {
                    'sawdust',
                    'glowing-mushrooms'
                }
            },
        }
    }

return(tech_upgrades)
