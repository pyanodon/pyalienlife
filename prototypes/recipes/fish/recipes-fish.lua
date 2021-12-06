--------------------------FISH-----------------------
local fun = require("prototypes/functions/functions")

----first----

----food----

RECIPE {
    type = 'recipe',
    name = 'fish-food-01',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 6},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'native-flora', amount = 10},
        {type = 'item', name = 'mukmoux-fat', amount = 4},
        {type = 'item', name = "seaweed", amount = 5},
        {type = 'item', name = 'skin', amount = 5},
        {type = 'item', name = 'fish', amount = 2},
        {type = 'item', name = 'bones', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 165}
    },
    results = {
        {type = 'item', name = 'fish-food-01', amount = 3},
    },
}:add_unlock("food-mk02")

RECIPE {
    type = 'recipe',
    name = 'fish-food-02',
    category = 'crafting-with-fluid',
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = 'item', name = 'plastic-bar', amount = 6},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'mukmoux-fat', amount = 4},
        {type = 'item', name = 'yotoi-fruit', amount = 3},
        {type = 'item', name = 'native-flora', amount = 10},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = "seaweed", amount = 5},
        {type = 'item', name = 'skin', amount = 5},
        {type = 'item', name = 'fish', amount = 2},
        {type = 'item', name = 'bones', amount = 5},
        {type = 'item', name = 'starch', amount = 4},
        {type = 'fluid', name = 'steam', amount = 100, minimum_temperature = 165},
        {type = 'fluid', name = 'blood', amount = 50},
    },
    results = {
        {type = 'item', name = 'fish-food-02', amount = 5},
    },
}:add_unlock("food-mk03")

---breeding---


---pup maker---



---maturing---

RECIPE {
    type = 'recipe',
    name = 'fish-mature-01',
    category = 'incubator',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish-egg', amount = 5},
        {type = 'item', name = 'filtration-media', amount = 1},
        {type = 'item', name = 'resveratrol', amount = 1},
        {type = 'item', name = 'moss-gen', amount = 1},
        {type = 'fluid', name = 'fetal-serum', amount = 20},
    },
    results = {
        {type = 'item', name = 'fish', amount = 10},
    },
    main_product = "fish",
    subgroup = 'py-alienlife-fish',
    order = 'a',
}:add_unlock("assisted-embryology")


------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-fish',
	--module_limitations = 'fish',
	subgroup = 'py-alienlife-fish',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='fish', amount=8},
				},
			results =
				{
					{name='bones', probability = 0.4, amount_min =1, amount_max =2},
					{name='meat', probability = 0.5, amount_min =1, amount_max =2},
					{name='skin', probability = 0.5, amount_min =1, amount_max =3},
					{name='guts', probability = 0.5, amount_min =1, amount_max =5},
					{name='blood', amount =25},
				},
			crafting_speed = 30,
			tech = 'water-animals-mk01',
			name = 'Full Render Fish',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-fish.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{

				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
                    {name='brain', remove_item = true},
					{name='meat', amount =2},
				},
			crafting_speed = 15,
			tech = 'water-animals-mk02',
			name = 'Extract Fish Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='cagedfish', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='skin', amount =3},
				},
			crafting_speed = 15,
			tech = 'water-animals-mk02',
			name = 'Extract Fish skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='cagedfish', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='bones', amount =2},
				},
			crafting_speed = 15,
			tech = 'water-animals-mk02',
			name = 'Extract Fish bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='cagedfish', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =5},
				},
			crafting_speed = 15,
			tech = 'water-animals-mk02',
			name = 'Extract Fish guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='cagedfish', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =40},
				},
			crafting_speed = 15,
			tech = 'water-animals-mk02',
			name = 'Extract Fish blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--oil
		{
			ingredients =
				{
					--{name='cagedfish', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='fish-oil', amount =100},
				},
			crafting_speed = 10,
			tech = 'water-animals-mk01',
			name = 'Extract Oil from fish',
			icon = "__pyalienlifegraphics__/graphics/icons/fish-oil.png",
			icon_size = 64,
		},
	}
}

--Secondary Upgrade Recipes--
--SUR--
--WIP--

RECIPE {
    type = 'recipe',
    name = 'fish-mk02',
    category = 'fish-farm',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish', amount = 20},
        {type = 'item', name = 'fish-food-02', amount = 2},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'fluid', name = 'phytoplankton', amount = 60},
        },
    results = {
        {type = 'item', name = 'fish-mk02', amount = 1, probability = 0.005},
        {type = 'item', name = 'fish', amount = 10, probability = 0.5},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "fish-mk02",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png',
    icon_size = 64,
    subgroup = 'py-alienlife-fish',
    order = 'za'
}:add_unlock("selective-breeding")

RECIPE {
    type = 'recipe',
    name = 'fish-mk03',
    category = 'fish-farm',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish', amount = 20},
        {type = 'item', name = 'fish-food-02', amount = 3},
        {type = 'item', name = 'alien-sample-03', amount = 1},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'fluid', name = 'phytoplankton', amount = 60},
        },
    results = {
        {type = 'item', name = 'fish-mk03', amount = 1, probability = 0.004},
        {type = 'item', name = 'fish', amount = 10, probability = 0.6},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "fish-mk03",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png',
    icon_size = 64,
    subgroup = 'py-alienlife-fish',
    order = 'zb'
}:add_unlock("artificial-breeding")

RECIPE {
    type = 'recipe',
    name = 'fish-mk04',
    category = 'fish-farm',
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = 'item', name = 'fish', amount = 20},
        {type = 'item', name = 'fish-food-02', amount = 3},
        {type = 'item', name = 'zinc-finger-proteins', amount = 1},
        {type = 'item', name = 'filtration-media', amount = 5},
        {type = 'item', name = "seaweed", amount = 10},
        {type = 'fluid', name = 'phytoplankton', amount = 60},
        },
    results = {
        {type = 'item', name = 'fish-mk04', amount = 10, probability = 0.003},
        {type = 'item', name = 'fish', amount = 1, probability = 0.7},
        --{type = 'item', name = 'empty-barrel', amount = 7},
    },
    --main_product = "fish-mk04",
    icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png',
    icon_size = 64,
    subgroup = 'py-alienlife-fish',
    order = 'zc'
}:add_unlock("biased-mutation")
