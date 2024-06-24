local MODULE_SLOTS = 12
local FULL_CRAFTING_SPEED = 1 -- crafting speed when full of mk01 modules

ITEM('ralesia-plantation-mk01'):subgroup_order('py-alienlife-farm-buildings-mk01', 'e')
ITEM('ralesia-plantation-mk02'):subgroup_order('py-alienlife-farm-buildings-mk02', 'e')
ITEM('ralesia-plantation-mk03'):subgroup_order('py-alienlife-farm-buildings-mk03', 'e')
ITEM('ralesia-plantation-mk04'):subgroup_order('py-alienlife-farm-buildings-mk04', 'e')

RECIPE {
    type = 'recipe',
    name = 'ralesia-plantation-mk01',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {'soil',               300},
        {'pipe',               15},
        {'electronic-circuit', 25},
        {'stone',              100},
        {'iron-plate',         30},
        {'duralumin',          10},
        {'steam-engine',       1},
        {'treated-wood',       50},
        {'small-lamp',         20}
    },
    results = {
        {'ralesia-plantation-mk01', 1}
    }
}:add_unlock('ralesia')

RECIPE {
    type = 'recipe',
    name = 'ralesia-plantation-mk02',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {'ralesia-plantation-mk01', 1},
        {'plastic-bar',             50},
        {'engine-unit',             2},
        {'pump',                    4},
        {'advanced-circuit',        15},
        {'latex',                   50},
        {'neuroprocessor',          15},
    },
    results = {
        {'ralesia-plantation-mk02', 1}
    }
}:add_unlock('botany-mk02')

RECIPE {
    type = 'recipe',
    name = 'ralesia-plantation-mk03',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {'ralesia-plantation-mk02', 1},
        {'molybdenum-plate',        40},
        {'electric-engine-unit',    10},
        {'processing-unit',         15},
        {'neuromorphic-chip',       10},
    },
    results = {
        {'ralesia-plantation-mk03', 1}
    }
}:add_unlock('botany-mk03')

RECIPE {
    type = 'recipe',
    name = 'ralesia-plantation-mk04',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {'ralesia-plantation-mk03', 1},
        {'blanket',                 5},
        {'silver-foam',             15},
        {'metallic-glass',          30},
        {'control-unit',            15},
        {'low-density-structure',   20},
    },
    results = {
        {'ralesia-plantation-mk04', 1}
    }
}:add_unlock('botany-mk04')

data.raw['assembling-machine']['ralesia-plantation-mk01'].crafting_speed = py.farm_speed(MODULE_SLOTS * 1, FULL_CRAFTING_SPEED)
data.raw['assembling-machine']['ralesia-plantation-mk01'].module_specification = {module_slots = MODULE_SLOTS * 1}

data.raw['assembling-machine']['ralesia-plantation-mk02'].crafting_speed = py.farm_speed_derived(MODULE_SLOTS * 2, 'ralesia-plantation-mk01')
data.raw['assembling-machine']['ralesia-plantation-mk02'].module_specification = {module_slots = MODULE_SLOTS * 2}

data.raw['assembling-machine']['ralesia-plantation-mk03'].crafting_speed = py.farm_speed_derived(MODULE_SLOTS * 3, 'ralesia-plantation-mk02')
data.raw['assembling-machine']['ralesia-plantation-mk03'].module_specification = {module_slots = MODULE_SLOTS * 3}

data.raw['assembling-machine']['ralesia-plantation-mk04'].crafting_speed = py.farm_speed_derived(MODULE_SLOTS * 4, 'ralesia-plantation-mk03')
data.raw['assembling-machine']['ralesia-plantation-mk04'].module_specification = {module_slots = MODULE_SLOTS * 4}