
local tech_upgrades =
    {
        master_tech =
            {
            name = "seaweed-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-seaweed.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"botany-mk02"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"py-science-pack", 1},
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
                    name = "improved-pathfinding", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/improved-pathfinding.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'seaweed-crop-mk01',
                        'seaweed-crop-mk02',
                        'seaweed-crop-mk03',
                        'seaweed-crop-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.15, --energy usage
                        speed = 0.15, -- machine speed
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'precise-cutting',
                        'recirculation-pump',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "precise-cutting",
                    icon = "__pyalienlifegraphics3__/graphics/technology/precise-cutting.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'seaweed-crop-mk01',
                        'seaweed-crop-mk02',
                        'seaweed-crop-mk03',
                        'seaweed-crop-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed = -0.1,
                        productivity = 0.05,
                        pollution = 0.0
                    },
                techs_to_lock =
                    {
                        'improved-pathfinding',
                        'recirculation-pump',
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
                    name = "recirculation-pump",
                    icon = "__pyalienlifegraphics3__/graphics/technology/recirculation-pump.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'seaweed-crop-mk01',
                        'seaweed-crop-mk02',
                        'seaweed-crop-mk03',
                        'seaweed-crop-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.05,
                        speed = 0.0,
                        productivity = 0.03,
                        pollution = -0.4
                    },
                techs_to_lock =
                    {
                        'improved-pathfinding',
                        'precise-cutting'
                    }
                },
            }
    }

return(tech_upgrades)