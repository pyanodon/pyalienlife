local tile_count = 529

RECIPE {
    type = "recipe",
    name = "arum-super-1",
    category = "arum-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone-wool", amount = 100},
        {type = "fluid", name = "coal-gas",   amount = 1000},
    },
    results = {
        {type = "item", name = "cadaveric-arum", amount = tile_count * 1},
    },
}:add_unlock("mega-farm-cadaveric-arum")

RECIPE {
    type = "recipe",
    name = "arum-super-2",
    category = "arum-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone-wool", amount = 100},
        {type = "fluid", name = "coal-gas",   amount = 1000},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "item",  name = "sand",       amount = 150},
    },
    results = {
        {type = "item", name = "cadaveric-arum", amount = tile_count * 1.5},
    },
}:add_unlock("mega-farm-cadaveric-arum")

RECIPE {
    type = "recipe",
    name = "arum-super-3",
    category = "arum-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone-wool", amount = 100},
        {type = "fluid", name = "coal-gas",   amount = 1000},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "item",  name = "sand",       amount = 150},
    },
    results = {
        {type = "item", name = "cadaveric-arum", amount = tile_count * 3},
    },
}:add_unlock("mega-farm-cadaveric-arum")

RECIPE {
    type = "recipe",
    name = "arum-super-4",
    category = "arum-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone-wool", amount = 100},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "fluid", name = "coal-gas",   amount = 1000},
        {type = "item",  name = "sand",       amount = 150},
        {type = "item",  name = "manure",     amount = 150},

    },
    results = {
        {type = "item", name = "cadaveric-arum", amount = tile_count * 4},
    },
}:add_unlock("mega-farm-cadaveric-arum")

RECIPE {
    type = "recipe",
    name = "arum-super-5",
    category = "arum-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone-wool", amount = 100},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "fluid", name = "coal-gas",   amount = 1000},
        {type = "item",  name = "sand",       amount = 150},
        {type = "item",  name = "manure",     amount = 150},
        {type = "item",  name = "ash",        amount = 200},

    },
    results = {
        {type = "item", name = "cadaveric-arum", amount = tile_count * 5},
    },
}:add_unlock("mega-farm-cadaveric-arum")

RECIPE {
    type = "recipe",
    name = "arum-super-6",
    category = "arum-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone-wool", amount = 100},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "fluid", name = "coal-gas",   amount = 1000},
        {type = "item",  name = "sand",       amount = 150},
        {type = "item",  name = "manure",     amount = 150},
        {type = "item",  name = "ash",        amount = 200},
        {type = "item",  name = "lignin",     amount = 200},
    },
    results = {
        {type = "item", name = "cadaveric-arum", amount = tile_count * 6},
    },
}:add_unlock("mega-farm-cadaveric-arum")

RECIPE {
    type = "recipe",
    name = "arum-super-7",
    category = "arum-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone-wool", amount = 100},
        {type = "fluid", name = "water",      amount = 3000},
        {type = "fluid", name = "coal-gas",   amount = 1000},
        {type = "item",  name = "sand",       amount = 150},
        {type = "item",  name = "fertilizer", amount = 100},
        {type = "item",  name = "ash",        amount = 200},
        {type = "item",  name = "lignin",     amount = 200},
    },
    results = {
        {type = "item", name = "cadaveric-arum", amount = tile_count * 7},
    },
}:add_unlock("mega-farm-cadaveric-arum")

RECIPE {
    type = "recipe",
    name = "arum-super-8",
    category = "arum-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "stone-wool", amount = 100},
        {type = "fluid", name = "acidgas",    amount = 1000},
        {type = "fluid", name = "coal-gas",   amount = 1000},
        {type = "item",  name = "sand",       amount = 150},
        {type = "item",  name = "coarse",     amount = 100},
        {type = "item",  name = "manure",     amount = 300},
        {type = "item",  name = "fertilizer", amount = 100},
    },
    results = {
        {type = "item", name = "cadaveric-arum", amount = tile_count * 8},
    },
}:add_unlock("mega-farm-cadaveric-arum"):replace_ingredient("manure", "urea")

RECIPE {
    type = "recipe",
    name = "arum-super-9",
    category = "arum-farm",
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "item",  name = "lignin",     amount = 200},
        {type = "fluid", name = "acidgas",    amount = 1000},
        {type = "fluid", name = "coal-gas",   amount = 1000},
        {type = "item",  name = "sand",       amount = 150},
        {type = "item",  name = "coarse",     amount = 100},
        {type = "item",  name = "manure",     amount = 300},
        {type = "item",  name = "blood-meal", amount = 100},
        {type = "item",  name = "fertilizer", amount = 100},
    },
    results = {
        {type = "item", name = "cadaveric-arum", amount = tile_count * 9},
    },
}:add_unlock("mega-farm-cadaveric-arum"):replace_ingredient("manure", "urea")

RECIPE {
    type = "recipe",
    name = "arum-super-10",
    category = "arum-farm",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item",  name = "lignin",     amount = 200},
        {type = "fluid", name = "acidgas",    amount = 1000},
        {type = "fluid", name = "coal-gas",   amount = 1000},
        {type = "item",  name = "sand",       amount = 150},
        {type = "item",  name = "manure",     amount = 300},
        {type = "item",  name = "blood-meal", amount = 100},
        {type = "item",  name = "fertilizer", amount = 100},
        {type = "item",  name = "gh",         amount = 3},
    },
    results = {
        {type = "item", name = "cadaveric-arum", amount = tile_count * 10},
    },
}:add_unlock("mega-farm-cadaveric-arum"):replace_ingredient("manure", "urea")
