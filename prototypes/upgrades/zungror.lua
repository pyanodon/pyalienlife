
local tech_upgrades =
    {
        master_tech = -- This is the tech that is displayed in the tech tree
            {
                name = "zungror-upgrade", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-zungror.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                prerequisites = {"zungror-mk02"},
                unit = {
                    count = 500,
                    ingredients = {
                        {"automation-science-pack", 1},
                        {"logistic-science-pack", 1},
                        {"py-science-pack-2", 1},
                        {"production-science-pack", 1},
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
                name = "geooxidation", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/geooxidation.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'zungror-lair-mk01',
                    'zungror-lair-mk02',
                    'zungror-lair-mk03',
                    'zungror-lair-mk04',
                },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
            upgrades = -- the effects the tech will have on the building. 1 = 100%
                {
                    consumption = 0.0, --energy usage
                    speed = 0.25,
                    productivity = -0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                    pollution = 0.4 -- pollution this machine will produce while running
                },
            techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                {
                    'genooscillation',
                    'oviduct-bombardment',
                },
            is_upgrade = true,
            },
        example_2 =
            {
            technology =
                {
                name = "genooscillation",
                icon = "__pyalienlifegraphics3__/graphics/technology/genooscillation.png",
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'zungror-lair-mk01',
                    'zungror-lair-mk02',
                    'zungror-lair-mk03',
                    'zungror-lair-mk04',
                },
            upgrades =
                {
                    consumption = 0.0,
                    speed = -0.2,
                    productivity = 0.35,
                    pollution = 0.45
                },
            techs_to_lock =
                {
                    'geooxidation',
                    'oviduct-bombardment',
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
                name = "oviduct-bombardment",
                icon = "__pyalienlifegraphics3__/graphics/technology/oviduct-bombardment.png",
                icon_size = 128,
                order = "c-a",
                },
            entities =
                {
                    'zungror-lair-mk01',
                    'zungror-lair-mk02',
                    'zungror-lair-mk03',
                    'zungror-lair-mk04',
                },
            upgrades =
                {
                    consumption = 0.3,
                    speed = -0.5,
                    productivity = 0.5,
                    pollution = -0.0
                },
            techs_to_lock =
                {
                    'geooxidation',
                    'genooscillation'
                }
            },
        }
    }

return(tech_upgrades)
