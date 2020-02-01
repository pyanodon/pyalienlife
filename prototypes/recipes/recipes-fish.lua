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
        {type = 'item', name = 'plastic-bar', amount = 3},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'bio-sample', amount = 2},
        {type = 'item', name = 'mukmoux-fat', amount = 4},
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'item', name = 'skin', amount = 5},
        {type = 'item', name = 'fish', amount = 2},
        {type = 'item', name = 'bones', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100},
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
        {type = 'item', name = 'plastic-bar', amount = 3},
        {type = 'item', name = 'fawogae', amount = 10},
        {type = 'item', name = 'mukmoux-fat', amount = 4},
        {type = 'item', name = 'yotoi-fruit', amount = 3},
        {type = 'item', name = 'ash', amount = 10},
        {type = 'item', name = 'seaweed', amount = 5},
        {type = 'item', name = 'skin', amount = 5},
        {type = 'item', name = 'fish', amount = 2},
        {type = 'item', name = 'bones', amount = 5},
        {type = 'fluid', name = 'steam', amount = 100},
        {type = 'fluid', name = 'blood', amount = 50},
    },
    results = {
        {type = 'item', name = 'fish-food-02', amount = 3},
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
					{name='fish',amount=5},
				},
			results =
				{
					{name='bones', probability = 0.4,amount_min =1,amount_max =2},
					{name='meat', probability = 0.5,amount_min =1,amount_max =2},
					{name='skin', probability = 0.5,amount_min =1,amount_max =3},
					{name='guts', probability = 0.5,amount_min =1,amount_max =5},
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
                    {name='bones', amount ='R'},
					{name='meat', amount ='R'},
					{name='skin', amount ='R'},
					{name='fat', amount ='R'},
					{name='guts', amount ='R'},
					{name='blood', amount ='R'},
                    {name='brain', amount ='R'},
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
					--{name='cagedfish',amount=1},
				},
			results =
				{
					{name='meat', amount ='R'},
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
					--{name='cagedfish',amount=1},
				},
			results =
				{
					{name='skin', amount ='R'},
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
					--{name='cagedfish',amount=1},
				},
			results =
				{
					{name='bones', amount ='R'},
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
					--{name='cagedfish',amount=1},
				},
			results =
				{
					{name='guts', amount ='R'},
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
					--{name='cagedfish',amount=1},
				},
			results =
				{
					{name='blood', amount ='R'},
					{name='fishoil', amount =50},
				},
			crafting_speed = 10,
			tech = 'water-animals-mk01',
			name = 'Extract Oil from fish',
			icon = "__pyalienlifegraphics__/graphics/icons/fish-oil.png",
			icon_size = 64,
		},
	}
}
