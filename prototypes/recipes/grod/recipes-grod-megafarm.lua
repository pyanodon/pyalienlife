local tile_count = 529

RECIPE {
    type = "recipe",
    name = "grod-super-1",
    category = "grod-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item", name = "limestone", amount = 150},
    },
    results = {
        {type = "item", name = "grod", amount = tile_count * 1},
    },
    order = "grod-a"
}:add_unlock("mega-farm-grod"):add_ingredient {type = "item", name = "urea", amount = 300}

RECIPE {
    type = "recipe",
    name = "grod-super-2",
    category = "grod-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "water",     amount = 10000},
        {type = "item",  name = "limestone", amount = 150},
    },
    results = {
        {type = "item", name = "grod", amount = tile_count * 2},
    },
    order = "grod-b"
}:add_unlock("mega-farm-grod"):add_ingredient {type = "item", name = "urea", amount = 300}

RECIPE {
    type = "recipe",
    name = "grod-super-3",
    category = "grod-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",      amount = 1000},
        {type = "fluid", name = "water",     amount = 10000},
        {type = "item",  name = "limestone", amount = 150},
    },
    results = {
        {type = "item", name = "grod", amount = tile_count * 3},
    },
    order = "grod-c"
}:add_unlock("mega-farm-grod"):add_ingredient {type = "item", name = "urea", amount = 300}

RECIPE {
    type = "recipe",
    name = "grod-super-4",
    category = "grod-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",      amount = 1000},
        {type = "fluid", name = "water",     amount = 10000},
        {type = "item",  name = "limestone", amount = 150},
        {type = "item",  name = "manure",    amount = 150},
    },
    results = {
        {type = "item", name = "grod", amount = tile_count * 4},
    },
    order = "grod-d"
}:add_unlock("mega-farm-grod")

RECIPE {
    type = "recipe",
    name = "grod-super-5",
    category = "grod-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",      amount = 1000},
        {type = "fluid", name = "water",     amount = 10000},
        {type = "item",  name = "limestone", amount = 150},
        {type = "item",  name = "manure",    amount = 150},
        {type = "item",  name = "ash",       amount = 200},
    },
    results = {
        {type = "item", name = "grod", amount = tile_count * 5},
    },
    order = "grod-e"
}:add_unlock("mega-farm-grod")

RECIPE {
    type = "recipe",
    name = "grod-super-6",
    category = "grod-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",      amount = 1000},
        {type = "fluid", name = "water",     amount = 10000},
        {type = "item",  name = "limestone", amount = 150},
        {type = "item",  name = "manure",    amount = 150},
        {type = "item",  name = "ash",       amount = 200},
        {type = "item",  name = "lignin",    amount = 200},
    },
    results = {
        {type = "item", name = "grod", amount = tile_count * 6},
    },
    order = "grod-f"
}:add_unlock("mega-farm-grod")

RECIPE {
    type = "recipe",
    name = "grod-super-7",
    category = "grod-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",      amount = 1000},
        {type = "fluid", name = "water",     amount = 10000},
        {type = "item",  name = "limestone", amount = 150},
        {type = "item",  name = "manure",    amount = 150},
        {type = "item",  name = "ash",       amount = 200},
        {type = "item",  name = "lignin",    amount = 200},
        {type = "item",  name = "biomass",   amount = 300},
    },
    results = {
        {type = "item", name = "grod", amount = tile_count * 7},
    },
    order = "grod-g"
}:add_unlock("mega-farm-grod")

RECIPE {
    type = "recipe",
    name = "grod-super-8",
    category = "grod-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "soil",         amount = 1000},
        {type = "fluid", name = "water",        amount = 10000},
        {type = "fluid", name = "slacked-lime", amount = 1000},
        {type = "item",  name = "limestone",    amount = 150},
        {type = "item",  name = "manure",       amount = 150},
        {type = "item",  name = "ash",          amount = 200},
        {type = "item",  name = "lignin",       amount = 200},
        {type = "item",  name = "biomass",      amount = 300},
    },
    results = {
        {type = "item", name = "grod", amount = tile_count * 8},
    },
    order = "grod-h"
}:add_unlock("mega-farm-grod")

RECIPE {
    type = "recipe",
    name = "grod-super-10",
    category = "grod-farm",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item",  name = "soil",         amount = 1000},
        {type = "fluid", name = "water",        amount = 10000},
        {type = "fluid", name = "slacked-lime", amount = 1000},
        {type = "item",  name = "limestone",    amount = 150},
        {type = "item",  name = "ash",          amount = 200},
        {type = "item",  name = "fertilizer",   amount = 150},
        {type = "item",  name = "coarse",       amount = 100},
        {type = "item",  name = "gh",           amount = 3},
    },
    results = {
        {type = "item", name = "grod", amount = tile_count * 10},
    },
    order = "grod-j"
}:add_unlock("mega-farm-grod"):add_ingredient {type = "item", name = "urea", amount = 300}
