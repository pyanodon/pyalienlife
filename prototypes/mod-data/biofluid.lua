---@class (partial) pyModData
---@field biofluid BiofluidData

local mod_data = py.mod_data --[[@as pyModData]]

---@namespace PyAlienLife

---@class (exact) BiofluidData
---@field food table<string, uint>
---@field biorobots table<string, BiorobotPrototype>
---@field connectables table<string, Biofluid.type>

---@class BiorobotPrototype
---@field delivery_volume uint
---@field poop_factor number

Biofluid = Biofluid or {} --[[@as Biofluid]]

Biofluid.type = {
    pipe = 1,
    roboport = 2,
    provider = 3,
    requester = 4
}

mod_data.biofluid = {
    food = {
        ["workers-food"] = 20,
        ["workers-food-02"] = 100,
        ["workers-food-03"] = 500
    },
    biorobots = {
        chorkok = {
            delivery_volume = 20000,
            poop_factor = 1.3
        },
        huzu = {
            delivery_volume = 15000,
            poop_factor = 0.8
        },
        gobachov = {
            delivery_volume = 10000,
            poop_factor = 0.6
        }
    },
    connectables = {
        ["vessel"] = Biofluid.type.pipe,
        ["vessel-to-ground"] = Biofluid.type.pipe,
        ["bioport"] = Biofluid.type.roboport,
        ["provider-tank"] = Biofluid.type.provider,
        ["requester-tank"] = Biofluid.type.requester,
    }
}

if helpers.stage == "prototype" then
    py.yafc_integrations.pyalienlife_biofluid = function()
        py.log.debug("Fix guano")

        data.raw.recipe["bioport-hidden-recipe"].results = {}
        data.raw["assembling-machine"]["bioport"].fixed_recipe = nil

        for food_name, food_bonus in pairs(mod_data.biofluid.food) do
            for creature_name, creature_data in pairs(mod_data.biofluid.biorobots) do
                RECIPE {
                    type = "recipe",
                    name = "guano-from-" .. food_name .. "-" .. creature_name,
                    energy_required = food_bonus * 2.38,
                    ingredients = {
                        {type = "item", name = food_name,     amount = 1},
                        {type = "item", name = creature_name, amount = 1}
                    },
                    results = {
                        {type = "item", name = "guano",       amount = food_bonus * creature_data.poop_factor},
                        {type = "item", name = creature_name, amount = 1}
                    },
                    main_product = "guano",
                    categories = {"biofluid"}
                } --[[@as data.RecipePrototype]]
            end
        end
    end

    py.postprocessing.pyalienlife_biofluid = function()
        for biorobot in pairs(mod_data.biofluid.biorobots) do
            local item = ENTITY(biorobot).minable.result or ENTITY(biorobot).minable.results[1].name --[[@as string]]
            RECIPE("bioport-hidden-recipe"):add_ingredient{type = "item", name = item, amount = ITEM(item).stack_size} --[[@as data.ItemIngredientPrototype]]
        end
        for food in pairs(mod_data.biofluid.food) do
            RECIPE("bioport-hidden-recipe"):add_ingredient{type = "item", name = food, amount = ITEM(food).stack_size} --[[@as data.ItemIngredientPrototype]]
        end
    end
end
