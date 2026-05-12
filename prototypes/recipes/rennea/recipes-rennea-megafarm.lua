local tile_count = 529

RECIPE {
    type = "recipe",
    name = "rennea-super-1",
    category = "rennea-farm",
    subgroup = "py-alienlife-rennea-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",    amount = 1000},
        {type = "fluid", name = "water",   amount = 3000},
        {type = "item",  name = "biomass", amount = 150},
        {type = "item",  name = "coarse",  amount = 100},
    },
    results = {
        {type = "item", name = "rennea", amount = tile_count * 1},
    },
    order = "ren-a-a"
}:add_unlock("mega-farm-rennea")

RECIPE {
    type = "recipe",
    name = "rennea-super-2",
    category = "rennea-farm",
    subgroup = "py-alienlife-rennea-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",    amount = 1000},
        {type = "fluid", name = "water",   amount = 3000},
        {type = "item",  name = "biomass", amount = 150},
        {type = "item",  name = "ash",     amount = 200},
        {type = "item",  name = "coarse",  amount = 100},
    },
    results = {
        {type = "item", name = "rennea", amount = tile_count * 2},
    },
    order = "ren-a-b"
}:add_unlock("mega-farm-rennea")

RECIPE {
    type = "recipe",
    name = "rennea-super-3",
    category = "rennea-farm",
    subgroup = "py-alienlife-rennea-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",    amount = 1000},
        {type = "fluid", name = "water",   amount = 3000},
        {type = "item",  name = "biomass", amount = 150},
        {type = "item",  name = "ash",     amount = 200},
        {type = "item",  name = "manure",  amount = 150},
        {type = "item",  name = "coarse",  amount = 100},
    },
    results = {
        {type = "item", name = "rennea", amount = tile_count * 3},
    },
    order = "ren-a-c"
}:add_unlock("mega-farm-rennea")

RECIPE {
    type = "recipe",
    name = "rennea-super-4",
    category = "rennea-farm",
    subgroup = "py-alienlife-rennea-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",      amount = 1000},
        {type = "fluid", name = "water",     amount = 3000},
        {type = "item",  name = "limestone", amount = 150},
        {type = "item",  name = "ash",       amount = 200},
        {type = "item",  name = "manure",    amount = 150},
        {type = "item",  name = "coarse",    amount = 100},
    },
    results = {
        {type = "item", name = "rennea", amount = tile_count * 4},
    },
    order = "ren-a-d"
}:add_unlock("mega-farm-rennea")

RECIPE {
    type = "recipe",
    name = "rennea-super-5",
    category = "rennea-farm",
    subgroup = "py-alienlife-rennea-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",      amount = 1000},
        {type = "fluid", name = "water",     amount = 3000},
        {type = "item",  name = "limestone", amount = 150},
        {type = "item",  name = "ash",       amount = 200},
        {type = "item",  name = "manure",    amount = 150},
        {type = "item",  name = "coarse",    amount = 100},
        {type = "item",  name = "fawogae",   amount = 300},
    },
    results = {
        {type = "item", name = "rennea", amount = tile_count * 5},
    },
    order = "ren-a-e"
}:add_unlock("mega-farm-rennea")

RECIPE {
    type = "recipe",
    name = "rennea-super-6",
    category = "rennea-farm",
    subgroup = "py-alienlife-rennea-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",      amount = 1000},
        {type = "fluid", name = "water",     amount = 3000},
        {type = "item",  name = "limestone", amount = 150},
        {type = "item",  name = "ash",       amount = 200},
        {type = "item",  name = "manure",    amount = 150},
        {type = "item",  name = "coarse",    amount = 100},
        {type = "item",  name = "lignin",    amount = 200},
    },
    results = {
        {type = "item", name = "rennea", amount = tile_count * 6},
    },
    order = "ren-a-f"
}:add_unlock("mega-farm-rennea")

RECIPE {
    type = "recipe",
    name = "rennea-super-7",
    category = "rennea-farm",
    subgroup = "py-alienlife-rennea-smartfarm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",       amount = 1000},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "item",  name = "biomass",    amount = 150},
        {type = "item",  name = "coarse",     amount = 100},
        {type = "item",  name = "fertilizer", amount = 100},
    },
    results = {
        {type = "item", name = "rennea", amount = tile_count * 7},
    },
    order = "ren-a-g"
}:add_unlock("mega-farm-rennea")

RECIPE {
    type = "recipe",
    name = "rennea-super-10",
    category = "rennea-farm",
    subgroup = "py-alienlife-rennea-smartfarm",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item",  name = "soil",       amount = 1000},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "item",  name = "limestone",  amount = 150},
        {type = "item",  name = "ash",        amount = 200},
        {type = "item",  name = "fertilizer", amount = 150},
        {type = "item",  name = "coarse",     amount = 100},
        {type = "item",  name = "gh",         amount = 3},
    },
    results = {
        {type = "item", name = "rennea", amount = tile_count * 10},
    },
    order = "ren-a-j"
}:add_unlock("mega-farm-rennea")
