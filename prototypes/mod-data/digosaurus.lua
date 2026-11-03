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
