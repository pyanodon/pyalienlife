local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-arqad',
	--module_limitations = 'arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='arqad', amount=3},
				},
			results =
				{
					{name='meat', probability = 0.4, amount_min =1, amount_max =3},
					{name='chitin', probability = 0.3, amount_min =1, amount_max =5},
					{name='guts', probability = 0.4, amount_min =1, amount_max =3},
					{name='arthropod-blood', amount =30},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/rendering-arqad.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='arqad', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='chitin', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='meat', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract arqad Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--chitin
		{
			ingredients =
				{
					--{name='arqad', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='chitin', amount =4},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract arqad chitin',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='arqad', amount=1},
				},
			results =
				{
					{name='chitin', remove_item = true},
					{name='guts', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract arqad guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--arthropod-blood
		{
			ingredients =
				{
					--{name='arqad', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='arthropod-blood', amount =40},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract arqad arthropod-blood',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--venom
		{
			ingredients =
				{
					--{name='arqad', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='bee-venom', amount =30},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract arqad venom',
			icon = "__pyalienlifegraphics3__/graphics/icons/bee-venom.png",
			icon_size = 64,
		},
		--meat arqad rendering
		{
			ingredients =
				{
					{name='arqad',remove_item = true},
					{name='meat-arqad', amount=1},
				},
			results =
				{
					{name='bee-venom', remove_item = true},
					{name='meat', amount =5},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/meat-arqad.png",
			icon_size = 64,
		},
		--guts arqad rendering
		{
			ingredients =
				{
					{name='meat-arqad',remove_item = true},
					{name='guts-arqad', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/guts-arqad.png",
			icon_size = 64,
		},
		--arthropod-blood arqad rendering
		{
			ingredients =
				{
					{name='guts-arqad',remove_item = true},
					{name='blood-arqad', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='arthropod-blood', amount =45},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract arthropod-blood from Improved arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/blood-arqad.png",
			icon_size = 64,
		},
		--chitin arqad rendering
		{
			ingredients =
				{
					{name='blood-arqad',remove_item = true},
					{name='chitin-arqad', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='chitin', amount =7},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract chitin from Improved arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/chitin-arqad.png",
			icon_size = 64,
		},
	}
}
