local MODULE_SLOTS = 12
local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

ITEM("ralesia-plantation-mk01"):subgroup_order("py-alienlife-farm-buildings-mk01", "e")
ITEM("ralesia-plantation-mk02"):subgroup_order("py-alienlife-farm-buildings-mk02", "e")
ITEM("ralesia-plantation-mk03"):subgroup_order("py-alienlife-farm-buildings-mk03", "e")
ITEM("ralesia-plantation-mk04"):subgroup_order("py-alienlife-farm-buildings-mk04", "e")

RECIPE {
    type = "recipe",
    name = "ralesia-plantation-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "soil",               amount = 300},
        {type = "item", name = "pipe",               amount = 15},
        {type = "item", name = "electronic-circuit", amount = 25},
        {type = "item", name = "stone",              amount = 100},
        {type = "item", name = "iron-plate",         amount = 30},
        {type = "item", name = "duralumin",          amount = 10},
        {type = "item", name = "steam-engine",       amount = 1},
        {type = "item", name = "treated-wood",       amount = 50},
        {type = "item", name = "small-lamp",         amount = 20}
    },
    results = {
        {type = "item", name = "ralesia-plantation-mk01", amount = 1}
    }
}

RECIPE {
    type = "recipe",
    name = "ralesia-plantation-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"ralesia-plantation-mk01", 1},
        {"plastic-bar",             50},
        {"engine-unit",             2},
        {"pump",                    4},
        {"advanced-circuit",        15},
        {"latex",                   50},
        {"neuroprocessor",          15},
    },
    results = {
        {"ralesia-plantation-mk02", 1}
    }
}:add_unlock("botany-mk02")

RECIPE {
    type = "recipe",
    name = "ralesia-plantation-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"ralesia-plantation-mk02", 1},
        {"molybdenum-plate",        40},
        {"electric-engine-unit",    10},
        {"processing-unit",         15},
        {"neuromorphic-chip",       10},
    },
    results = {
        {"ralesia-plantation-mk03", 1}
    }
}:add_unlock("botany-mk03")

RECIPE {
    type = "recipe",
    name = "ralesia-plantation-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"ralesia-plantation-mk03", 1},
        {"blanket",                 5},
        {"silver-foam",             15},
        {"metallic-glass",          30},
        {"control-unit",            15},
        {"low-density-structure",   20},
    },
    results = {
        {"ralesia-plantation-mk04", 1}
    }
}:add_unlock("botany-mk04")

data.raw["assembling-machine"]["ralesia-plantation-mk01"].crafting_speed = py.farm_speed(MODULE_SLOTS * 1, FULL_CRAFTING_SPEED)
data.raw["assembling-machine"]["ralesia-plantation-mk01"].module_slots = MODULE_SLOTS * 1

data.raw["assembling-machine"]["ralesia-plantation-mk02"].crafting_speed = py.farm_speed_derived(MODULE_SLOTS * 2, "ralesia-plantation-mk01")
data.raw["assembling-machine"]["ralesia-plantation-mk02"].module_slots = MODULE_SLOTS * 2

data.raw["assembling-machine"]["ralesia-plantation-mk03"].crafting_speed = py.farm_speed_derived(MODULE_SLOTS * 3, "ralesia-plantation-mk02")
data.raw["assembling-machine"]["ralesia-plantation-mk03"].module_slots = MODULE_SLOTS * 3

data.raw["assembling-machine"]["ralesia-plantation-mk04"].crafting_speed = py.farm_speed_derived(MODULE_SLOTS * 4, "ralesia-plantation-mk03")
data.raw["assembling-machine"]["ralesia-plantation-mk04"].module_slots = MODULE_SLOTS * 4
