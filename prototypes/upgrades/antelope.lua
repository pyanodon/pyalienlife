
local tech_upgrades =
    {
        master_tech =
            {
            name = "antelope-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-antelope.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"schrodinger-antelope"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {'py-science-pack-2', 1},
                },
                time = 45
                }
            },
        is_ht = true,
        sub_techs =
            {
            example_1 = -- can be whatever just used to identify this table
                {
                technology = -- no touchy
                    {
                    name = "pentadimensional", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/pentadimensional.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'antelope-enclosure-mk01',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.8, --energy usage
                        speed = 0.0, -- machine speed
                        productivity = 0.5, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.0 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'existential-hazard',
                        'higgs-field',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "existential-hazard",
                    icon = "__pyalienlifegraphics3__/graphics/technology/existential-hazard.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'antelope-enclosure-mk01',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed = 0.4,
                        productivity = 0.0,
                        pollution = 0.8
                    },
                techs_to_lock =
                    {
                        'pentadimensional',
                        'higgs-field',
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
                    name = "higgs-field",
                    icon = "__pyalienlifegraphics3__/graphics/technology/higgs-field.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'antelope-enclosure-mk01',
                    },
                upgrades =
                    {
                        consumption = 0.5,
                        speed = 0.0,
                        productivity = 0.0,
                        pollution = -1.0
                    },
                techs_to_lock =
                    {
                        'pentadimensional',
                        'existential-hazard'
                    }
                },
            }
    }

return(tech_upgrades)
