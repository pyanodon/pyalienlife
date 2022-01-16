local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering-arqad',
	category = 'slaughterhouse-arqad',
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
					{name='meat', amount_max =3},
					{name='chitin', amount_max =5},
					{name='guts', amount_max =3},
					{name='arthropod-blood', amount =30},
					{name = 'bee-venom', amount = 5}
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/rendering-arqad.png",
			icon_size = 64,
		},
	}
}

fun.autorecipes {
    name = 'rendering-arqad-guts',
	category = 'slaughterhouse-arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='guts-arqad', amount=3},
				},
			results =
				{
					{name='meat', amount_max =3},
					{name='chitin', amount_max =5},
					{name='guts', amount_max =10},
					{name='arthropod-blood', amount =30},
					{name = 'bee-venom', amount = 5},
					{name = 'sternite-lung', amount = 3},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Render arqads for guts',
			icon = "__pyalienlifegraphics3__/graphics/icons/guts-arqad.png",
			icon_size = 64,
		},
	}
}

fun.autorecipes {
    name = 'rendering-arqad-meat',
	category = 'slaughterhouse-arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='meat-arqad', amount=3},
				},
			results =
				{
					{name='meat', amount_max =10},
					{name='chitin', amount_max =5},
					{name='guts', amount_max =3},
					{name='arthropod-blood', amount =30},
					{name = 'bee-venom', amount = 5},
					{name = 'sternite-lung', amount = 3},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Render arqads for meat',
			icon = "__pyalienlifegraphics3__/graphics/icons/meat-arqad.png",
			icon_size = 64,
		},
	}
}

fun.autorecipes {
    name = 'rendering-arqad-blood',
	category = 'slaughterhouse-arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='blood-arqad', amount=3},
				},
			results =
				{
					{name='meat', amount_max =1},
					{name='guts', amount_max =1},
					{name='arthropod-blood', amount =100},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Render arqad maggots for blood',
			icon = "__pyalienlifegraphics3__/graphics/icons/blood-arqad.png",
			icon_size = 64,
		},
	}
}

fun.autorecipes {
    name = 'rendering-arqad',
	category = 'slaughterhouse-arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='chitin-arqad', amount=3},
				},
			results =
				{
					{name='meat', amount_max =3},
					{name='chitin', amount_max =15},
					{name='guts', amount_max =3},
					{name='arthropod-blood', amount =30},
					{name = 'bee-venom', amount = 5},
					{name = 'sternite-lung', amount = 3},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Render arqads for chitin',
			icon = "__pyalienlifegraphics3__/graphics/icons/rendering-arqad.png",
			icon_size = 64,
		},
	}
}
