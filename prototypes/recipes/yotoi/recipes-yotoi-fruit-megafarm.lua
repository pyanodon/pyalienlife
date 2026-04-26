local tile_count = 529

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-super-1",
    category = "yotoi-farm",
    subgroup = "py-alienlife-yotoi-fruit-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "sand",      amount = 500},
        {type = "fluid", name = "water",     amount = 10000},
        {type = "item",  name = "limestone", amount = 150},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = tile_count * 1},
    },
    order = "ya-f-a"
}:add_unlock("mega-farm-yotoi")

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-super-2",
    category = "yotoi-farm",
    subgroup = "py-alienlife-yotoi-fruit-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "sand",           amount = 500},
        {type = "fluid", name = "water",          amount = 10000},
        {type = "fluid", name = "carbon-dioxide", amount = 6000},
        {type = "item",  name = "limestone",      amount = 150},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = tile_count * 2},
    },
    order = "ya-f-b"
}:add_unlock("mega-farm-yotoi")

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-super-3",
    category = "yotoi-farm",
    subgroup = "py-alienlife-yotoi-fruit-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "sand",           amount = 1000},
        {type = "fluid", name = "water",          amount = 10000},
        {type = "fluid", name = "carbon-dioxide", amount = 6000},
        {type = "item",  name = "limestone",      amount = 150},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = tile_count * 3},
    },
    order = "ya-f-c"
}:add_unlock("mega-farm-yotoi")

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-super-4",
    category = "yotoi-farm",
    subgroup = "py-alienlife-yotoi-fruit-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "sand",           amount = 1000},
        {type = "fluid", name = "water",          amount = 10000},
        {type = "fluid", name = "carbon-dioxide", amount = 6000},
        {type = "item",  name = "limestone",      amount = 150},
        {type = "item",  name = "manure",         amount = 150},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = tile_count * 4},
    },
    order = "ya-f-d"
}:add_unlock("mega-farm-yotoi")

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-super-5",
    category = "yotoi-farm",
    subgroup = "py-alienlife-yotoi-fruit-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "sand",           amount = 1000},
        {type = "fluid", name = "water",          amount = 10000},
        {type = "fluid", name = "carbon-dioxide", amount = 6000},
        {type = "item",  name = "limestone",      amount = 150},
        {type = "item",  name = "manure",         amount = 150},
        {type = "item",  name = "ash",            amount = 200},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = tile_count * 5},
    },
    order = "ya-f-e"
}:add_unlock("mega-farm-yotoi")

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-super-6",
    category = "yotoi-farm",
    subgroup = "py-alienlife-yotoi-fruit-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "sand",           amount = 1000},
        {type = "fluid", name = "water",          amount = 10000},
        {type = "fluid", name = "carbon-dioxide", amount = 6000},
        {type = "item",  name = "limestone",      amount = 150},
        {type = "item",  name = "manure",         amount = 150},
        {type = "item",  name = "ash",            amount = 200},
        {type = "item",  name = "lignin",         amount = 200},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = tile_count * 6},
    },
    order = "ya-f-f"
}:add_unlock("mega-farm-yotoi")

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-super-7",
    category = "yotoi-farm",
    subgroup = "py-alienlife-yotoi-fruit-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "sand",           amount = 1000},
        {type = "fluid", name = "water",          amount = 10000},
        {type = "fluid", name = "carbon-dioxide", amount = 6000},
        {type = "item",  name = "limestone",      amount = 150},
        {type = "item",  name = "fertilizer",     amount = 100},
        {type = "item",  name = "ash",            amount = 200},
        {type = "item",  name = "lignin",         amount = 200},
        {type = "item",  name = "biomass",        amount = 300},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = tile_count * 7},
    },
    order = "ya-f-g"
}:add_unlock("mega-farm-yotoi"):add_ingredient {type = "item", name = "urea", amount = 300}

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-super-8",
    category = "yotoi-farm",
    subgroup = "py-alienlife-yotoi-fruit-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "sand",           amount = 1000},
        {type = "fluid", name = "water",          amount = 10000},
        {type = "fluid", name = "carbon-dioxide", amount = 6000},
        {type = "item",  name = "limestone",      amount = 150},
        {type = "item",  name = "fertilizer",     amount = 100},
        {type = "item",  name = "ash",            amount = 200},
        {type = "item",  name = "lignin",         amount = 200},
        {type = "item",  name = "biomass",        amount = 300},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = tile_count * 8},
    },
    order = "ya-f-h"
}:add_unlock("mega-farm-yotoi")

RECIPE {
    type = "recipe",
    name = "yotoi-fruit-super-10",
    category = "yotoi-farm",
    subgroup = "py-alienlife-yotoi-fruit-smartfarm",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item",  name = "sand",           amount = 1000},
        {type = "fluid", name = "water",          amount = 10000},
        {type = "fluid", name = "carbon-dioxide", amount = 6000},
        {type = "item",  name = "limestone",      amount = 150},
        {type = "item",  name = "manure",         amount = 150},
        {type = "item",  name = "lignin",         amount = 200},
        {type = "item",  name = "biomass",        amount = 300},
        {type = "item",  name = "gh",             amount = 3},
    },
    results = {
        {type = "item", name = "yotoi-fruit", amount = tile_count * 10},
    },
    order = "ya-f-j"
}:add_unlock("mega-farm-yotoi"):add_ingredient {type = "item", name = "urea", amount = 300}:add_ingredient {type = "item", name = "blood-meal", amount = 120}
