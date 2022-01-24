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
					{name='meat', amount =3},
					{name='chitin', amount =5},
					{name='guts', amount =3},
					{name='arthropod-blood', amount =30},
					{name = 'bee-venom', amount = 5}
				},
			crafting_speed = 30,
			tech = 'rendering',
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
			tech = 'rendering',
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
			tech = 'rendering',
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
					{name = 'chitin', amount = 14}
				},
			crafting_speed = 30,
			tech = 'rendering',
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
					{name='chitin', amount = 5},
					{name='arthropod-blood', amount =100},
					{name = 'sternite-lung', remove_item = true},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'ex-blo-arq',
			icon = "__pyalienlifegraphics3__/graphics/icons/blood-arqad.png",
			icon_size = 64,
		},
	}
}
