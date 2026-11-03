--------------------------XENO-----------------------


----first----
RECIPE {
    type = "recipe",
    name = "xeno",
    categories = {"creature-chamber"},
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item",  name = "alien-sample-02",        amount = 2},
        {type = "item",  name = "bio-sample",             amount = 20},
        {type = "item",  name = "earth-generic-sample",   amount = 5},
        {type = "item",  name = "strorix-unknown-sample", amount = 2},
        {type = "item",  name = "cdna",                   amount = 3},
        {type = "item",  name = "xeno-codex",             amount = 1},
        {type = "fluid", name = "artificial-blood",       amount = 1000},
        {type = "fluid", name = "sulfuric-acid",          amount = 150},
        {type = "fluid", name = "fetal-serum",            amount = 100},
    },
    results = {
        {type = "item", name = "xeno", amount = 1},
    },
    icons = py.composite_icon("xeno", "xeno-codex")
}:add_unlock("xeno")

RECIPE {
    type = "recipe",
    name = "xeno-codex",
    categories = {"crafting"},
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "glass",              amount = 5},
        {type = "item", name = "small-lamp",         amount = 5},
        {type = "item", name = "electronic-circuit", amount = 50},
    },
    results = {
        {type = "item", name = "xeno-codex", amount = 1},
    },
}:add_unlock("xeno")


----food----

---maturing---
--[[
RECIPE {
    type = 'recipe',
    name = 'xeno-mature-01',
    categories = {'creature-chamber'},
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'xeno-egg', amount = 10},
        {type = 'item', name = 'caged-mukmoux', amount = 10},   --man it was painfull t put here a fair price
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-xeno', amount = 10},
    },
    main_product = "caged-xeno",
    subgroup = 'py-alienlife-xeno',
    order = 'a',
}:add_unlock("xeno")

RECIPE {
    type = 'recipe',
    name = 'xeno-mature-02',
    categories = {'creature-chamber'},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = 'item', name = 'xeno-egg', amount = 10},
        {type = 'item', name = 'resveratrol', amount = 3},
        {type = 'item', name = 'caged-mukmoux', amount = 15},
        {type = 'item', name = 'gh', amount = 2},
        {type = 'item', name = 'cage', amount = 20},
        {type = 'fluid', name = 'fetal-serum', amount = 50},
    },
    results = {
        {type = 'item', name = 'caged-xeno', amount = 20},
    },
    main_product = "caged-xeno",
    subgroup = 'py-alienlife-xeno',
    order = 'a',
}:add_unlock("growth-hormone")
]] --
----adverse products----




----PROCESSING----



---caged---
RECIPE {
    type = "recipe",
    name = "caged-xeno",
    categories = {"crafting"},
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "xeno", amount = 1},
        {type = "item", name = "cage", amount = 1},
    },
    results = {
        {type = "item", name = "caged-xeno", amount = 1},
    },
}:add_unlock("xeno")

RECIPE {
    type = "recipe",
    name = "uncaged-xeno",
    categories = {"crafting"},
    enabled = false,
    energy_required = 0.5,
    ingredients = {
        {type = "item", name = "caged-xeno", amount = 1},
    },
    results = {
        {type = "item", name = "xeno", amount = 1},
        {type = "item", name = "cage", amount = 1},
    },
    main_product = "xeno",
}:add_unlock("xeno")

if mods["pyhightech"] then
    RECIPE {
        type = "recipe",
        name = "xeno-phosphoric",
        categories = {"biofactory"},
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "item", name = "xeno-egg", amount = 1},
        },
        results = {
            {type = "fluid", name = "phosphoric-acid", amount = 45},
        },
        --main_product = "xeno",
    }:add_unlock("xeno-mk03")
end
