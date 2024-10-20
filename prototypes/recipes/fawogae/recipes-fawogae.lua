--------------------------FAWOGAE-----------------------

--SPORES---

RECIPE {
    type = "recipe",
    name = "fawogae-spore",
    category = "spore",
    enabled = false,
    energy_required = 8,
    ingredients = {
    },
    results = {
        {type = "item", name = "fawogae-spore", amount = 1},
    },
}:add_unlock("fawogae-mk01")

RECIPE {
    type = "recipe",
    name = "fawogae-spore-2",
    category = "spore",
    enabled = false,
    energy_required = 7,
    ingredients = {
    },
    results = {
        {type = "item", name = "fawogae-spore", amount = 1},
    },
}:add_unlock("microfilters")

RECIPE {
    type = "recipe",
    name = "fawogae-spore-3",
    category = "spore",
    enabled = false,
    energy_required = 6,
    ingredients = {
    },
    results = {
        {type = "item", name = "fawogae-spore", amount = 1},
    },
}:add_unlock("microfilters-mk02")

---IMPROVED SPORES---

RECIPE {
    type = "recipe",
    name = "fawogae-spore-mk02",
    category = "spore",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "fawogae-mk02", amount = 1},
    },
    results = {
        {type = "item", name = "fawogae-spore-mk02", amount = 5},
    },
}:add_unlock("fawogae-mk02")

RECIPE {
    type = "recipe",
    name = "fawogae-spore-mk03",
    category = "spore",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "fawogae-mk03", amount = 1},
    },
    results = {
        {type = "item", name = "fawogae-spore-mk03", amount = 5},
    },
}:add_unlock("fawogae-mk03")

RECIPE {
    type = "recipe",
    name = "fawogae-spore-mk04",
    category = "spore",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "fawogae-mk04", amount = 1},
    },
    results = {
        {type = "item", name = "fawogae-spore-mk04", amount = 5},
    },
}:add_unlock("fawogae-mk04")


----first----
RECIPE {
    type = "recipe",
    name = "fawogae-sample",
    category = "nursery",
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "item",  name = "ground-sample01",     amount = 2},
        {type = "item",  name = "fawogae-spore",       amount = 10},
        {type = "item",  name = "wood",                amount = 50},
        {type = "item",  name = "fawogae-codex",       amount = 1},
        {type = "item",  name = "earth-shroom-sample", amount = 1},
        {type = "fluid", name = "steam",               amount = 1000},
    },
    results = {
        {type = "item", name = "fawogae", amount = 2},
    },
}:add_unlock("fawogae-mk01")

RECIPE {
    type = "recipe",
    name = "fawogae-codex",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "glass",              amount = 2},
        {type = "item", name = "small-lamp",         amount = 5},
        {type = "item", name = "electronic-circuit", amount = 50},
        {type = "item", name = "tinned-cable",       amount = 20},
    },
    results = {
        {type = "item", name = "fawogae-codex", amount = 1},
    },
}:add_unlock("fawogae-mk01")

RECIPE {
    type = "recipe",
    name = "earth-shroom-sample",
    category = "data-array",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item", name = "wooden-chest",            amount = 1},
        {type = "item", name = "automation-science-pack", amount = 100},
        {type = "item", name = "fawogae-codex",           amount = 1},
    },
    results = {
        {type = "item", name = "earth-shroom-sample", amount = 1},
    },
}:add_unlock("fawogae-mk01")

--[[
RECIPE {
    type = 'recipe',
    name = 'replicator-ralesia',
    category = 'advanced-crafting',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'ralesia-codex', amount = 1},
        {type = 'item', name = 'ralesia-seeds', amount = 100},
        {type = 'item', name = 'titanium-plate', amount = 100},
        {type = 'item', name = 'metallic-glass', amount = 2},
        {type = 'item', name = 'biofilm', amount = 20},
        {type = 'item', name = 'plastic-bar', amount = 100},
        {type = 'item', name = 'blanket-chassi', amount = 1},
    },
    results = {
        {type = 'item', name = 'replicator-ralesia', amount = 1},
    },
}:add_unlock("mega-farm-ralesia"):add_ingredient({type = "item", name = "nems", amount = 10}):add_ingredient({type = "item", name = "carbon-nanotube", amount = 10})
]] --
