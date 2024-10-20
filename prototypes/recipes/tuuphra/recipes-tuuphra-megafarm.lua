local tile_count = 529

RECIPE {
    type = "recipe",
    name = "tuuphra-super-1",
    category = "tuuphra-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",    amount = 1000},
        {type = "fluid", name = "water",   amount = 3000},
        {type = "item",  name = "biomass", amount = 150},
    },
    results = {
        {type = "item", name = "tuuphra", amount = tile_count * 1},
    },
}:add_unlock("mega-farm-tuuphra")

RECIPE {
    type = "recipe",
    name = "tuuphra-super-2",
    category = "tuuphra-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",    amount = 1000},
        {type = "fluid", name = "water",   amount = 3000},
        {type = "item",  name = "biomass", amount = 150},
        {type = "item",  name = "coarse",  amount = 100},
    },
    results = {
        {type = "item", name = "tuuphra", amount = tile_count * 2},
    },
}:add_unlock("mega-farm-tuuphra")

RECIPE {
    type = "recipe",
    name = "tuuphra-super-3",
    category = "tuuphra-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",    amount = 1000},
        {type = "fluid", name = "water",   amount = 3000},
        {type = "item",  name = "biomass", amount = 150},
        {type = "item",  name = "manure",  amount = 150},
        {type = "item",  name = "coarse",  amount = 100},
    },
    results = {
        {type = "item", name = "tuuphra", amount = tile_count * 3},
    },
}:add_unlock("mega-farm-tuuphra")

RECIPE {
    type = "recipe",
    name = "tuuphra-super-4",
    category = "tuuphra-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",     amount = 1000},
        {type = "fluid", name = "water",    amount = 3000},
        {type = "fluid", name = "nitrogen", amount = 1500},
        {type = "item",  name = "manure",   amount = 150},
        {type = "item",  name = "biomass",  amount = 150},
        {type = "item",  name = "coarse",   amount = 100},
    },
    results = {
        {type = "item", name = "tuuphra", amount = tile_count * 4},
    },
}:add_unlock("mega-farm-tuuphra")

RECIPE {
    type = "recipe",
    name = "tuuphra-super-5",
    category = "tuuphra-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",     amount = 1000},
        {type = "fluid", name = "water",    amount = 3000},
        {type = "fluid", name = "nitrogen", amount = 1500},
        {type = "item",  name = "ash",      amount = 200},
        {type = "item",  name = "manure",   amount = 150},
        {type = "item",  name = "coarse",   amount = 100},
    },
    results = {
        {type = "item", name = "tuuphra", amount = tile_count * 5},
    },
}:add_unlock("mega-farm-tuuphra")

RECIPE {
    type = "recipe",
    name = "tuuphra-super-6",
    category = "tuuphra-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",     amount = 1000},
        {type = "fluid", name = "water",    amount = 3000},
        {type = "fluid", name = "nitrogen", amount = 1500},
        {type = "item",  name = "ash",      amount = 200},
        {type = "item",  name = "manure",   amount = 150},
        {type = "item",  name = "coarse",   amount = 100},
        {type = "item",  name = "lignin",   amount = 200},
    },
    results = {
        {type = "item", name = "tuuphra", amount = tile_count * 6},
    },
}:add_unlock("mega-farm-tuuphra")

RECIPE {
    type = "recipe",
    name = "tuuphra-super-7",
    category = "tuuphra-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",       amount = 1000},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "fluid", name = "nitrogen",   amount = 1500},
        {type = "item",  name = "biomass",    amount = 150},
        {type = "item",  name = "coarse",     amount = 100},
        {type = "item",  name = "fertilizer", amount = 100},
    },
    results = {
        {type = "item", name = "tuuphra", amount = tile_count * 7},
    },
}:add_unlock("mega-farm-tuuphra")

RECIPE {
    type = "recipe",
    name = "tuuphra-super-10",
    category = "tuuphra-farm",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item",  name = "soil",       amount = 1000},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "fluid", name = "nitrogen",   amount = 1500},
        {type = "item",  name = "ash",        amount = 200},
        {type = "item",  name = "fertilizer", amount = 150},
        {type = "item",  name = "coarse",     amount = 100},
        {type = "item",  name = "gh",         amount = 3},
    },
    results = {
        {type = "item", name = "tuuphra", amount = tile_count * 10},
    },
}:add_unlock("mega-farm-tuuphra")
