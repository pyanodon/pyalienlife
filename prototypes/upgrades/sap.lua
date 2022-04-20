
local tech_upgrades =
    {
        master_tech =
            {
            name = "sap-upgrade", -- this is the tech name. duh
            icon = "__pyalienlifegraphics3__/graphics/technology/updates/u-sap.png",
            icon_size = 128,
            order = "c-a",
            prerequisites = {"botany-mk02"},
            unit = {
                count = 500,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    -- {'py-science-pack-3', 1},
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
                    name = "inoculator", -- this is the tech name. duh
                    icon = "__pyalienlifegraphics3__/graphics/technology/inoculator.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'sap-extractor-mk01',
                        'sap-extractor-mk02',
                        'sap-extractor-mk03',
                        'sap-extractor-mk04',
                    },-- the entities that should be effected by this tech upgrade. can be a single entity or a table of entities
                upgrades = -- the effects the tech will have on the building. 1 = 100%
                    {
                        consumption = 0.0, --energy usage
                        speed =
                            {
                                percent = 0.1, -- displayed machine speed
                                module_amount = 16, -- actual module bonus
                            },
                        productivity = 0.0, -- productivity. and yes i know you`ll never use this but I`ll make sure it works anyway
                        pollution = 0.2 -- pollution this machine will produce while running
                    },
                techs_to_lock = -- techs that should be locked and hidden if this tech is researched
                    {
                        'patch',
                        'bark',
                    }
                },
            example_2 =
                {
                technology =
                    {
                    name = "patch",
                    icon = "__pyalienlifegraphics3__/graphics/technology/patch.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                    entities =
                    {
                        'sap-extractor-mk01',
                        'sap-extractor-mk02',
                        'sap-extractor-mk03',
                        'sap-extractor-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.1,
                        speed = 0.0,
                        productivity = 0.05,
                        pollution = -0.05
                    },
                techs_to_lock =
                    {
                        'inoculator',
                        'bark',
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
                    name = "bark",
                    icon = "__pyalienlifegraphics3__/graphics/technology/bark.png",
                    icon_size = 128,
                    order = "c-a",
                    },
                entities =
                    {
                        'sap-extractor-mk01',
                        'sap-extractor-mk02',
                        'sap-extractor-mk03',
                        'sap-extractor-mk04',
                    },
                upgrades =
                    {
                        consumption = 0.0,
                        speed =
                            {
                                percent = -0.1, -- displayed machine speed
                                module_amount = 16, -- actual module bonus
                            },
                        productivity = 0.0,
                        pollution = -0.3
                    },
                techs_to_lock =
                    {
                        'inoculator',
                        'patch'
                    }
                },
            }
    }

return(tech_upgrades)
