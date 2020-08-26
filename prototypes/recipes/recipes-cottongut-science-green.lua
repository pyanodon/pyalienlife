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
            {type = 'fluid', name = 'subcritical-water', amount = 200},
            {type = 'fluid', name = 'artificial-blood', amount = 50},
            {type = 'item', name = 'bio-sample', amount = 2},
            {type = "item", name = "cytostatics", amount = 1},
            {type = "item", name = "flask", amount = 3}
        },
    results = {
        {type = 'item', name = 'paragen', amount = 3},
    },
    main_product = "paragen",
    --icon = '__pyalienlifegraphics__/graphics/icons/paragen.png',
    --icon_size = 64,
    subgroup = "py-alienlife-items",
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
        {type = 'item', name = 'paragen', amount = 2},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 25, probability = 0.1},
    },
    main_product = 'logistic-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'b1'
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
        {type = 'item', name = 'paragen', amount = 4},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 60, probability = 0.1},
    },
    main_product = 'logistic-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'b2'
}:add_unlock("cottongut-mk03")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-03',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 14},
        {type = 'item', name = 'paragen', amount = 6},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 130, probability = 0.1},
    },
    main_product = 'logistic-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'b3'
}:add_unlock("cottongut-mk04")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-04',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 24},
        {type = 'item', name = 'paragen', amount = 8},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 280, probability = 0.1},
    },
    main_product = 'logistic-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'b4'
}:add_unlock("artificial-breeding")


---END GAME---

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-green-05',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 40},
        {type = 'item', name = 'paragen', amount = 10},
        },
    results = {
        {type = 'item', name = 'logistic-science-pack', amount = 600, probability = 0.1},
    },
    main_product = 'logistic-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'b5'
}:add_unlock("biased-mutation")
