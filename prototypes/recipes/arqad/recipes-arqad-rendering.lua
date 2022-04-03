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
					{name='arqad', amount=3}
				},
			results =
				{
					{name='meat', amount =3},
					{name='chitin', amount =2},
					{name='guts', amount =3},
					{name='arthropod-blood', amount =30},
					{name = 'bee-venom', amount = 5}
				},
			crafting_speed = 30,
			tech = 'arqad',
			name = 'full-render-arqads',
			icon = "__pyalienlifegraphics3__/graphics/icons/rendering-arqad.png",
			icon_size = 64,
		},
		{
			ingredients =
				{
					{name = 'arqad', remove_item = true},
					{name='guts-arqad', amount=3},
				},
			results =
				{
					{name='guts', amount =10},
					{name = 'sternite-lung', amount = 3},
				},
			crafting_speed = 30,
			tech = 'antitumor',
			name = 'ex-gut-arq',
			icon = "__pyalienlifegraphics3__/graphics/icons/guts-arqad.png",
			icon_size = 64,
		},
		{
			ingredients =
				{
					{name = 'guts-arqad', remove_item = true},
					{name='meat-arqad', amount=3},
				},
			results =
				{
					{name='meat', amount =10},
					{name='guts', amount =3},
				},
			crafting_speed = 30,
			tech = 'anabolic-rna',
			name = 'ex-me-arq',
			icon = "__pyalienlifegraphics3__/graphics/icons/meat-arqad.png",
			icon_size = 64,
		},
		{
			ingredients =
				{
					{name = 'meat-arqad', remove_item = true},
					{name='chitin-arqad', amount=3},
				},
			results =
				{
					{name='meat', amount =3},
					{name = 'chitin', amount = 10}
				},
			crafting_speed = 30,
			tech = 'reca',
			name = 'ex-chi-arq',
			icon = "__pyalienlifegraphics3__/graphics/icons/rendering-arqad.png",
			icon_size = 64,
		},

		{
			ingredients =
				{
					{name = 'chitin-arqad', remove_item = true},
					{name='blood-arqad', amount=3},
				},
			results =
				{
					{name='chitin', amount = 4},
					{name='arthropod-blood', amount =100},
					{name = 'sternite-lung', remove_item = true},
				},
			crafting_speed = 30,
			tech = 'recombinant-ery',
			name = 'ex-blo-arq',
			icon = "__pyalienlifegraphics3__/graphics/icons/blood-arqad.png",
			icon_size = 64,
		},
	}
}
