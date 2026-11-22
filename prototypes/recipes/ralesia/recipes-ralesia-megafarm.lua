local tile_count = 529

RECIPE {
    type = "recipe",
    name = "ralesia-super-1",
    category = "ralesia-farm",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "soil",     amount = 1000},
        {type = "fluid", name = "water",    amount = 3000},
        {type = "fluid", name = "hydrogen", amount = 2000},
        {type = "item",  name = "stone",    amount = 100},
    },
    results = {
        {type = "item", name = "ralesia", amount = tile_count * 2},
    },
}:add_unlock("mega-farm-ralesia")

RECIPE {
    type = "recipe",
    name = "ralesia-super-2",
    category = "ralesia-farm",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "soil",     amount = 1000},
        {type = "item",  name = "biomass",  amount = 100},
        {type = "fluid", name = "water",    amount = 3000},
        {type = "fluid", name = "hydrogen", amount = 2000},
    },
    results = {
        {type = "item", name = "ralesia", amount = tile_count * 3},
    },
}:add_unlock("mega-farm-ralesia")

RECIPE {
    type = "recipe",
    name = "ralesia-super-3",
    category = "ralesia-farm",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "soil",     amount = 1000},
        {type = "item",  name = "ash",      amount = 300},
        {type = "fluid", name = "water",    amount = 3000},
        {type = "fluid", name = "hydrogen", amount = 2000},
    },
    results = {
        {type = "item", name = "ralesia", amount = tile_count * 4},
    },
}:add_unlock("mega-farm-ralesia")

RECIPE {
    type = "recipe",
    name = "ralesia-super-4",
    category = "ralesia-farm",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "soil",     amount = 1000},
        {type = "item",  name = "ash",      amount = 150},
        {type = "item",  name = "manure",   amount = 150},
        {type = "fluid", name = "water",    amount = 3000},
        {type = "fluid", name = "hydrogen", amount = 2000},
    },
    results = {
        {type = "item", name = "ralesia", amount = tile_count * 5},
    },
}:add_unlock("mega-farm-ralesia")

RECIPE {
    type = "recipe",
    name = "ralesia-super-5",
    category = "ralesia-farm",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "soil",   amount = 1000},
        {type = "item",  name = "ash",    amount = 150},
        {type = "item",  name = "manure", amount = 150},
        {type = "fluid", name = "water",  amount = 3000},
        {type = "fluid", name = "syngas", amount = 1500},
    },
    results = {
        {type = "item", name = "ralesia", amount = tile_count * 6},
    },
}:add_unlock("mega-farm-ralesia")

RECIPE {
    type = "recipe",
    name = "ralesia-super-6",
    category = "ralesia-farm",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "soil",   amount = 1000},
        {type = "item",  name = "ash",    amount = 150},
        {type = "item",  name = "manure", amount = 150},
        {type = "fluid", name = "water",  amount = 3000},
        {type = "fluid", name = "syngas", amount = 1500},
        {type = "item",  name = "lignin", amount = 300},
    },
    results = {
        {type = "item", name = "ralesia", amount = tile_count * 7},
    },
}:add_unlock("mega-farm-ralesia")

RECIPE {
    type = "recipe",
    name = "ralesia-super-7",
    category = "ralesia-farm",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "soil",       amount = 1000},
        {type = "item",  name = "fertilizer", amount = 100},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "fluid", name = "syngas",     amount = 1500},
    },
    results = {
        {type = "item", name = "ralesia", amount = tile_count * 8},
    },
}:add_unlock("mega-farm-ralesia")

RECIPE {
    type = "recipe",
    name = "ralesia-super-10",
    category = "ralesia-farm",
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "item",  name = "soil",       amount = 1000},
        {type = "item",  name = "ash",        amount = 150},
        {type = "item",  name = "manure",     amount = 150},
        {type = "item",  name = "fertilizer", amount = 100},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "fluid", name = "syngas",     amount = 1500},
        {type = "item",  name = "gh",         amount = 3},
    },
    results = {
        {type = "item", name = "ralesia", amount = tile_count * 11},
    },
}:add_unlock("mega-farm-ralesia")
