--------------------------FISH-----------------------


----first----

----food----

RECIPE {
    type = 'recipe',
    name = 'fish-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 3},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 2},
        {type = 'item', name = 'mukmoux-fat', amount = 4},
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'item', name = 'fish', amount = 5},
        {type = 'item', name = 'bones', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100},
    },
    results = {
        {type = 'item', name = 'fish-food-01', amount = 1},
    },
}:add_unlock("food-mk02")

RECIPE {
    type = 'recipe',
    name = 'fish-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 3},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'mukmoux-fat', amount = 4},
        {type = 'item', name = 'yotoi-fruit', amount = 3},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'item', name = 'fish', amount = 5},
        {type = 'item', name = 'bones', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100},
        {type = 'fluid', name = 'blood', amount = 50},
    },
    results = {
        {type = 'item', name = 'fish-food-02', amount = 1},
    },
}:add_unlock("food-mk03")

---breeding---


---pup maker---

RECIPE {
    type = 'recipe',
    name = 'fish-sex-pup-01',
    category = 'fish-farm',
    enabled = false,
    energy_required = 140,
    ingredients = {
        {type = 'item', name = 'fish-food-01', amount = 1},
        {type = 'fluid', name = 'water-saline', amount = 300},
        {type = 'item', name = 'small-lamp', amount = 2},
    },
    results = {
        {type = 'item', name = 'fish-egg', amount = 10},
        {type = 'fluid', name = 'dirty-water', amount = 300},
    },
    main_product = "fish-egg",
    subgroup = 'py-alienlife-fish',
    order = 'a',
}:add_unlock("assisted-embryology")

RECIPE {
    type = 'recipe',
    name = 'fish-sex-pup-02',
    category = 'fish-farm',
    enabled = false,
    energy_required = 120,
    ingredients = {
        {type = 'item', name = 'fish-food-02', amount = 1},
        {type = 'fluid', name = 'water-saline', amount = 300},
        {type = 'item', name = 'small-lamp', amount = 2},
    },
    results = {
        {type = 'item', name = 'fish-egg', amount = 15},
        {type = 'fluid', name = 'dirty-water', amount = 300},
    },
    main_product = "fish-egg",
    subgroup = 'py-alienlife-fish',
    order = 'a',
}:add_unlock("assisted-embryology")


---maturing---

RECIPE {
    type = 'recipe',
    name = 'fish-mature-01',
    category = 'incubator',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish-egg', amount = 3},
        {type = 'item', name = 'filtration-media', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'moss-gen', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 20},
    },
    results = {
        {type = 'item', name = 'fish', amount = 3},
    },
    main_product = "fish",
    subgroup = 'py-alienlife-fish',
    order = 'a',
}:add_unlock("assisted-embryology")

---PROCESSING

RECIPE {
    type = 'recipe',
    name = 'fish-full-rendering',
    category = 'slaughterhouse',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish', amount = 10},
    },
    results = {
        {type = 'item', name = 'meat', amount = 2, probability = 0.5},
        {type = 'item', name = 'brain', amount = 1, probability = 0.3},
        {type = 'item', name = 'skin', amount = 3, probability = 0.5},
        {type = 'fluid', name = 'blood', amount = 25},
        {type = 'item', name = 'guts', amount = 5, probability = 0.5},
    },
    --main_product = "fish",
    subgroup = 'py-alienlife-fish',
    order = 'a',
    icon = "__pyalienlife__/graphics/icons/rendering-fish.png",
    icon_size = 64,
}:add_unlock("water-animals-mk02")
----adverse products----


----PROCESSING----

