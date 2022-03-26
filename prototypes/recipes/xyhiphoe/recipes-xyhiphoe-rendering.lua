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
					{name='meat',  amount =1},
					{name='shell',  amount =3},
					{name='guts',  amount =4},
					{name='arthropod-blood', amount =70},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'full-render-xyhiphoe',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-xyhiphoe.png",
			icon_size = 64,
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
					{name='meat', amount =8},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-xyh',
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
					{name='meat', amount = 1},
					{name='guts', amount =11},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-xyh',
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
					{name='guts', amount = 4},
					{name='arthropod-blood', amount =300},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-xyh',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-xyhiphoe.png",
			icon_size = 64,
		},
	}
}
