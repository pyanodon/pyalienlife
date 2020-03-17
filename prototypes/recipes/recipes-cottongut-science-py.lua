--------------------------SCIENCE-----------------------

----COPIES OF OG SCIENCE---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-py-seeds',
    enabled = false,
    category = 'research',
    energy_required = 15,
    ingredients =
        {
        },
    results = {
        {type = 'item', name = 'nonconductive-phazogen', amount = 3},
    },
    main_product = "nonconductive-phazogen",
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    --icon_size = 64,
    subgroup = "py-items",
    order = "a1"
}:add_unlock("cottongut-mk02")

---cottongut-boosts---

---STARTER---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-py',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 7},
        {type = 'item', name = 'nonconductive-phazogen', amount = 1},
        },
    results = {
        {type = 'item', name = 'py-science-pack', amount = 25, probability = 0.1},
    },
    --main_product = 'py-science-pack',
    --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'd1'
}:add_unlock("cottongut-mk03")


---UPGRADES---
RECIPE {
    type = 'recipe',
    name = 'cottongut-science-py-02',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 15},
        {type = 'item', name = 'nonconductive-phazogen', amount = 1},
        },
    results = {
        {type = 'item', name = 'py-science-pack', amount = 50, probability = 0.1},
    },
    --main_product = 'py-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'd2'
}:add_unlock("cottongut-mk04")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-py-03',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 25},
        {type = 'item', name = 'nonconductive-phazogen', amount = 1},
        },
    results = {
        {type = 'item', name = 'py-science-pack', amount = 75, probability = 0.1},
    },
    main_product = 'py-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'd3'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-py-04',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 35},
        {type = 'item', name = 'nonconductive-phazogen', amount = 1},
        },
    results = {
        {type = 'item', name = 'py-science-pack', amount = 100, probability = 0.1},
    },
    main_product = 'py-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'd4'
}:add_unlock("artificial-breeding")


---END GAME---

RECIPE {
    type = 'recipe',
    name = 'cottongut-science-py-05',
    category = 'research',
    enabled = false,
    energy_required = 135,
    ingredients = {
        {type = 'item', name = 'cottongut', amount = 55},
        {type = 'item', name = 'nonconductive-phazogen', amount = 1},
        },
    results = {
        {type = 'item', name = 'py-science-pack', amount = 200, probability = 0.1},
    },
    main_product = 'py-science-pack',
   --icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
   --icon_size = 64,
    subgroup = 'py-alienlife-cottongut',
    order = 'd5'
}:add_unlock("biased-mutation")
