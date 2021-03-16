
local tech_upgrades =
    {
        master_tech = -- This is the tech that is displayed in the tech tree
            {
                name = "fawogae-upgrade", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-fawogae.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                prerequisites = {"mycology-mk02"},
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
                name = "lichen", -- this is the tech name. duh
                icon = "__pyalienlifegraphics3__/graphics/technology/lichen.png", -- do i really need to spell it out for you
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'fawogae-plantation-mk01',
                    'fawogae-plantation-mk02',
                    'fawogae-plantation-mk03',
                    'fawogae-plantation-mk04',
                },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
            upgrades = -- the effects the tech will have on the building. 1 = 100%
                {
                    consumption = -0.1, --energy usage
                    speed =
                            {
                                percent = 0.1, -- displayed machine speed
                                module_amount = 17.16, -- actual module bonus
                            },
                    productivity = 0.3, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                    pollution = 0.0 -- pollution this machine will produce while running
                },
            techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                {
                    'acidosis',
                    'dry',
                },
            is_upgrade = true,
            },
        example_2 =
            {
            technology =
                {
                name = "acidosis",
                icon = "__pyalienlifegraphics3__/graphics/technology/acidosis.png",
                icon_size = 128,
                order = "c-a",
                },
                entities =
                {
                    'fawogae-plantation-mk01',
                    'fawogae-plantation-mk02',
                    'fawogae-plantation-mk03',
                    'fawogae-plantation-mk04',
                },
            upgrades =
                {
                    consumption = 0.0,
                    speed =
                            {
                                percent = 0.3, -- displayed machine speed
                                module_amount = 51.48, -- actual module bonus
                            },
                    productivity = 0.0,
                    pollution = 0.3
                },
            techs_to_lock =
                {
                    'lichen',
                    'dry',
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
                name = "dry",
                icon = "__pyalienlifegraphics3__/graphics/technology/dry.png",
                icon_size = 128,
                order = "c-a",
                },
            entities =
                {
                    'fawogae-plantation-mk01',
                    'fawogae-plantation-mk02',
                    'fawogae-plantation-mk03',
                    'fawogae-plantation-mk04',
                },
            upgrades =
                {
                    consumption = -0.3,
                    speed = 0,
                    productivity = 0.0,
                    pollution = -0.6
                },
            techs_to_lock =
                {
                    'lichen',
                    'acidosis'
                }
            },
        }
    }

return(tech_upgrades)
