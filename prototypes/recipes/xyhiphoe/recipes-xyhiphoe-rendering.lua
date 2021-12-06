local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-xyhiphoe',
	subgroup = 'py-alienlife-xyhiphoe',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='xyhiphoe', amount=1},
				},
			results =
				{
					{name='meat', probability = 0.4, amount_min =1, amount_max =1},
					{name='shell', probability = 0.4, amount_min =1, amount_max =3},
					{name='guts', probability = 0.4, amount_min =1, amount_max =4},
					{name='arthropod-blood', amount =70},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render xyhiphoe',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-xyhiphoe.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='xyhiphoe', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='shell', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='meat', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract xyhiphoe Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--shell
		{
			ingredients =
				{
					--{name='xyhiphoe', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='shell', amount =4},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract xyhiphoe shell',
			icon = "__pyalienlifegraphics__/graphics/icons/shell.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='xyhiphoe', amount=1},
				},
			results =
				{
					{name='shell', remove_item = true},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract xyhiphoe guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--arthropod-blood
		{
			ingredients =
				{
					--{name='xyhiphoe', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='arthropod-blood', amount =80},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract xyhiphoe blood',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--meat xyhiphoe rendering
		{
			ingredients =
				{
					{name='xyhiphoe',remove_item = true},
					{name='meat-xyhiphoe', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='meat', amount =8},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved xyhiphoe',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-xyhiphoe.png",
			icon_size = 64,
		},
		--guts xyhiphoe rendering
		{
			ingredients =
				{
					{name='meat-xyhiphoe',remove_item = true},
					{name='guts-xyhiphoe', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', amount =11},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved xyhiphoe',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-xyhiphoe.png",
			icon_size = 64,
		},
		--blood xyhiphoe rendering
		{
			ingredients =
				{
					{name='guts-xyhiphoe',remove_item = true},
					{name='blood-xyhiphoe', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='arthropod-blood', amount =300},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved xyhiphoe',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-xyhiphoe.png",
			icon_size = 64,
		},
	}
}
