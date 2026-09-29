---@diagnostic disable: missing-fields
---@diagnostic disable-next-line: assign-type-mismatch
---@type pyModData
local mod_data = data.raw["mod-data"].pyanodons.data

---@class DigosaurPrototype
---@field proxy data.EntityID mining target
---@field mining_bonus number

---@class DigSitePrototype
---@field mining_range number the radius of the mining area
---@field mining_range_offsets {[defines.direction]: MapPosition} mining area offset
---@field spawn_point {[defines.direction]: MapPosition} spawning offset for digosaurs

---@class (partial) pyModData
---@field digosaurus DigosaursData

---@class DigosaursData
---@field creatures {[data.EntityID]: DigosaurPrototype}
---@field foods {[data.ItemID]: number}
---@field resource_categories {[data.ResourceCategoryID]: true}
---@field dig_sites {[data.EntityID]: DigSitePrototype}

mod_data.digosaurus = {
  creatures = {},
  foods = {},
  resource_categories = {},
  dig_sites = {}
}

mod_data.digosaurus.creatures = {
    ["digosaurus"] = {
        proxy = "digosaurus-mineable-proxy",
        mining_bonus = 1
    },
    ["digosaurus-turd"] = {
        proxy = "digosaurus-mineable-proxy",
        mining_bonus = 1
    },
    ["thikat"] = {
        proxy = "thikats-mineable-proxy",
        mining_bonus = 2
    },
    ["thikat-turd"] = {
        proxy = "thikats-mineable-proxy",
        mining_bonus = 2
    },
    ["work-o-dile"] = {
        proxy = "work-o-dile-mineable-proxy",
        mining_bonus = 3
    },
    ["work-o-dile-turd"] = {
        proxy = "work-o-dile-mineable-proxy",
        mining_bonus = 3
    },
}

mod_data.digosaurus.foods = {
    ["dried-meat"] = 1,
    ["guts"] = 1,
    ["meat"] = 2,
    ["workers-food"] = 8,
    ["workers-food-02"] = 16,
    ["workers-food-03"] = 32,
}

mod_data.digosaurus.resource_categories = {
    ["ore-nexelit"] = true
}

mod_data.digosaurus.dig_sites = {
    ["dino-dig-site"] = {
        mining_range = 12.5,
        mining_range_offsets = {
            [defines.direction.north] = {x = 0, y = -16},
            [defines.direction.south] = {x = 0, y = 16},
            [defines.direction.east] = {x = 16, y = 0},
            [defines.direction.west] = {x = -16, y = 0}
        },
        spawn_point = {
            [defines.direction.north] = {x = 0, y = -2.5},
            [defines.direction.south] = {x = 0, y = 2.5},
            [defines.direction.east] = {x = 2.5, y = 0},
            [defines.direction.west] = {x = -2.5, y = 0}
        }
    }
}

if helpers.stage == "prototype" then
    py.yafc_integrations.pyalienlife_digosaurus = function()
        py.log.debug("Fix dig-site")

        data.raw.recipe["digosaurus-hidden-recipe"].results = {}
        data.raw["assembling-machine"]["dino-dig-site"].fixed_recipe = nil

        local dig_creatures = {
            -- {creature, amount, time_taken_to_mine, attack_cooldown_ticks}
            {"digosaurus",  1, 15, 30},
            {"thikat",      2, 4,  49 * 2},
            {"work-o-dile", 3, 8,  49 * 2}
        }

        for food_name, food_bonus in pairs(data.raw["mod-data"].pyanodons.data.digosaurus.foods) do
            for _, y in ipairs(dig_creatures) do
                -- The creature is looped in the recipe to make it only available after the creature is available
                RECIPE {
                    type = "recipe",
                    name = "nexelit-from-" .. food_name .. "-" .. y[1],
                    energy_required = y[3] * y[4] / 60,
                    ingredients = {
                        {type = "item", name = food_name, amount = 4},
                        {type = "item", name = y[1],      amount = 4}
                    },
                    results = {
                        {type = "item", name = "nexelit-ore", amount = food_bonus * y[2] * 4},
                        {type = "item", name = y[1],          amount = 4}
                    },
                    main_product = "nexelit-ore",
                    categories = {"dino-dig-site"}
                }
            end
        end
    end
end
