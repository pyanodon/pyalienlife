
local tech_upgrades =
    {
        master_tech =
            {
            name = "biofactory-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-biofactory.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"biotech-mk02"},
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
                    name = "molecular-polyentomology", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/molecular-polyentomology.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'biofactory-mk01',
                        'biofactory-mk02',
                        'biofactory-mk03',
                        'biofactory-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.1, --energy usage
                        speed = 0.3, -- machine speed
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = -0.1 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'compusun',
                        'resonant',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "compusun",
                    icon = "__pyalienlifegraphics3__/graphics/technology/compusun.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'biofactory-mk01',
                        'biofactory-mk02',
                        'biofactory-mk03',
                        'biofactory-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.2,
                        speed = -0.15,
                        productivity = 0.25,
                        pollution = 0.0
                    },
                techs_to_lock =
                    {
                        'molecular-polyentomology',
                        'resonant',
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
                    name = "resonant",
                    icon = "__pyalienlifegraphics3__/graphics/technology/resonant.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'biofactory-mk01',
                        'biofactory-mk02',
                        'biofactory-mk03',
                        'biofactory-mk04',
                    },
                upgrades =
                    {
                        consumption = 0,
                        speed = -0.2,
                        productivity = 0.2,
                        pollution = -0.8
                    },
                techs_to_lock =
                    {
                        'molecular-polyentomology',
                        'compusun'
                    }
                },
            }
    }

return(tech_upgrades)
