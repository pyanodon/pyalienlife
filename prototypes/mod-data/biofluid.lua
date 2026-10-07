
-- TODO: biofluid mod-data

if helpers.stage == "prototype" then
    py.yafc_integrations.pyalienlife_biofluid = function()
        py.log.debug("Fix guano")

        data.raw.recipe["bioport-hidden-recipe"].results = {}
        data.raw["assembling-machine"]["bioport"].fixed_recipe = nil

        Biofluid = {}
        require "__pyalienlife__/scripts/biofluid/biofluid-prototypes"
        for food_name, food_bonus in pairs(Biofluid.favorite_foods) do
            for creature_name, poop_amount in pairs(Biofluid.taco_bell) do
                RECIPE {
                    type = "recipe",
                    name = "guano-from-" .. food_name .. "-" .. creature_name,
                    energy_required = food_bonus * 2.38,
                    ingredients = {
                        {type = "item", name = food_name,     amount = 1},
                        {type = "item", name = creature_name, amount = 1}
                    },
                    results = {
                        {type = "item", name = "guano",       amount = food_bonus * poop_amount},
                        {type = "item", name = creature_name, amount = 1}
                    },
                    main_product = "guano",
                    categories = {"biofluid"}
                }
            end
        end
    end
end
