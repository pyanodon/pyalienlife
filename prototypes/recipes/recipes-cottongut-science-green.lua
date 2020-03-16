--------------------------SCIENCE-----------------------

----COPIES OF OG SCIENCE---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-seeds',
    enabled = false,
    category = 'research',
    energy_required = 10,
    ingredients =
        {
        },
    results = {
        {type = 'item', name = 'paragen', amount = 3},
    },
    main_product = "paragen",
    --icon = '__pyalienlifegraphics__/graphics/icons/paragen.png',
    --icon_size = 64,
    subgroup = "py-items",
    order = "a1"
}:add_unlock("cottongut-mk02")

---cottongut-boosts---

---STARTER---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 4},
        {type = 'item', name = 'paragen', amount = 1},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 25, probability = 0.1},
    },
    main_product = 'logistic-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'za'
}:add_unlock("cottongut-mk02")


---UPGRADES---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-02',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 8},
        {type = 'item', name = 'paragen', amount = 1},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 50, probability = 0.1},
    },
    main_product = 'logistic-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zb'
}:add_unlock("cottongut-mk03")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-03',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 14},
        {type = 'item', name = 'paragen', amount = 1},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 75, probability = 0.1},
    },
    main_product = 'logistic-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zc'
}:add_unlock("cottongut-mk04")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-04',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 20},
        {type = 'item', name = 'paragen', amount = 1},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 100, probability = 0.1},
    },
    main_product = 'logistic-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zd'
}:add_unlock("artificial-breeding")


---END GAME---

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-05',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 60},
        {type = 'item', name = 'paragen', amount = 1},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 200, probability = 0.1},
    },
    main_product = 'logistic-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'zd'
}:add_unlock("biased-mutation")
