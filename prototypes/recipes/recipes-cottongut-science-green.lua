--------------------------SCIENCE-----------------------

----COPIES OF OG SCIENCE---
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

---cottongut-boosts---

---STARTER---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green',
    category = 'cottongut',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 4},
        {type = 'item', name = 'green-science-seeds', amount = 1},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 25, probability = 0.1},
    },
    --main_product = "cottongut-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'za'
}:add_unlock("selective-breeding")


---UPGRADES---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-02',
    category = 'cottongut',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 5},
        {type = 'item', name = 'green-science-seeds', amount = 1},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 50, probability = 0.1},
    },
    --main_product = "cottongut-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-03',
    category = 'cottongut',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 5},
        {type = 'item', name = 'green-science-seeds', amount = 1},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 75, probability = 0.1},
    },
    --main_product = "cottongut-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zc'
}:add_unlock("cottongut-mk02")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-04',
    category = 'cottongut',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 5},
        {type = 'item', name = 'green-science-seeds', amount = 1},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 100, probability = 0.1},
    },
    --main_product = "cottongut-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zd'
}:add_unlock("cottongut-mk03")


---END GAME---

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-05',
    category = 'cottongut',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 5},
        {type = 'item', name = 'green-science-seeds', amount = 1},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 200, probability = 0.1},
    },
    --main_product = "cottongut-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zd'
}:add_unlock("biased-mutation")