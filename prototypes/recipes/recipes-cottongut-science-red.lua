--------------------------SCIENCE-----------------------

----COPIES OF OG SCIENCE---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-red-seeds',
    enabled = false,
    energy_required = 4,
    ingredients =
        {
        },
    results = {
        {type = 'item', name = 'red-science-seeds', amount = 3},
    },
    --main_product = "cottongut-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = "py-items",
    order = "a1"
}:add_unlock("cottongut-mk01")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-seeds',
    enabled = false,
    energy_required = 4,
    ingredients =
        {
        },
    results = {
        {type = 'item', name = 'green-science-seeds', amount = 3},
    },
    --main_product = "cottongut-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = "py-items",
    order = "a1"
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-blue-seeds',
    enabled = false,
    energy_required = 4.5,
    ingredients =
        {
        },
    results = {
        {type = 'item', name = 'blue-science-seeds', amount = 3},
    },
    --main_product = "cottongut-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = "py-items",
    order = "a1"
}:add_unlock("cottongut-mk01")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-py-seeds',
    enabled = false,
    energy_required = 15,
    ingredients =
        {
        },
    results = {
        {type = 'item', name = 'py-science-seeds', amount = 3},
    },
    --main_product = "cottongut-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = "py-items",
    order = "a1"
}:add_unlock("cottongut-mk01")

---cottongut-boosts---

---STARTER---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-red',
    category = 'cottongut',
    enabled = false,
    energy_required = 270,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 2},
        {type = 'item', name = 'red-science-seeds', amount = 1},
        },
    results = {
        {type = 'item', name = 'automation-science-pack', amount = 25, probability = 0.1},
    },
    --main_product = "cottongut-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'za'
}:add_unlock("cottongut-mk01")


---UPGRADES---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-red-02',
    category = 'cottongut',
    enabled = false,
    energy_required = 270,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 5},
        {type = 'item', name = 'red-science-seeds', amount = 1},
        },
    results = {
        {type = 'item', name = 'automation-science-pack', amount = 50, probability = 0.1},
    },
    --main_product = "cottongut-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zb'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-red-03',
    category = 'cottongut',
    enabled = false,
    energy_required = 270,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 5},
        {type = 'item', name = 'red-science-seeds', amount = 1},
        },
    results = {
        {type = 'item', name = 'automation-science-pack', amount = 75, probability = 0.1},
    },
    --main_product = "cottongut-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zc'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-red-04',
    category = 'cottongut',
    enabled = false,
    energy_required = 270,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 5},
        {type = 'item', name = 'red-science-seeds', amount = 1},
        },
    results = {
        {type = 'item', name = 'automation-science-pack', amount = 100, probability = 0.1},
    },
    --main_product = "cottongut-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zd'
}:add_unlock("biased-mutation")


---END GAME---

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-red-05',
    category = 'cottongut',
    enabled = false,
    energy_required = 270,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 5},
        {type = 'item', name = 'red-science-seeds', amount = 1},
        },
    results = {
        {type = 'item', name = 'automation-science-pack', amount = 200, probability = 0.1},
    },
    --main_product = "cottongut-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zd'
}:add_unlock("biased-mutation")