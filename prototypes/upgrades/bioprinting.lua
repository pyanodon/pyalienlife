
local tech_upgrades =
    {
        master_tech =
            {
            name = "bioprinting-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-bioprinting.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"organ-printing-mk02"},
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
                    name = "high-viability", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/high-viability.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'bio-printer-mk01',
                        'bio-printer-mk02',
                        'bio-printer-mk03',
                        'bio-printer-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                is_upgrade = true,
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.05, --energy usage
                        speed = 0.0, -- machine speed
                        productivity = 0.25, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.1 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'biomimetics',
                        'covalent',
                    },
                recipes_to_unlock =
                    {

                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "biomimetics",
                    icon = "__pyalienlifegraphics3__/graphics/technology/biomimetics.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'bio-printer-mk01',
                        'bio-printer-mk02',
                        'bio-printer-mk03',
                        'bio-printer-mk04',
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
                        'high-viability',
                        'covalent',
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
                    name = "covalent",
                    icon = "__pyalienlifegraphics3__/graphics/technology/covalent.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'bio-printer-mk01',
                        'bio-printer-mk02',
                        'bio-printer-mk03',
                        'bio-printer-mk04',
                    },
                upgrades =
                    {
                        consumption = 0,
                        speed = -0.1,
                        productivity = 0.1,
                        pollution = -0.65
                    },
                techs_to_lock =
                    {
                        'high-viability',
                        'biomimetics'
                    }
                },
            }
    }

return(tech_upgrades)
