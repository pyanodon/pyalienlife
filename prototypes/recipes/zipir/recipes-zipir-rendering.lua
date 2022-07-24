local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering-zipir',
	category = 'slaughterhouse-zipir',
	--module_limitations = 'zipir',
	subgroup = 'py-alienlife-zipir',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name = 'zipir1', amount=1},
				},
			results =
				{
					{name='meat', amount =4},
					{name='skin', amount =6},
					{name='mukmoux-fat', amount =3},
					{name='guts', amount =4},
					{name='arthropod-blood', amount =50},
					{name='brain', amount =1},
				},
			crafting_speed = 30,
			tech = 'zipir',
			name = 'full-render-zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-zipir.png",
			icon_size = 64,
		},
		--brain zipir rendering
		{
			ingredients =
				{
					{name = 'zipir1',remove_item = true},
					{name='brain-zipir', amount=1},
				},
			results =
				{
					{name = 'adaptable-automucosa', amount = 1},
					{name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-zipir.png",
			icon_size = 64,
		},
		--guts zipir rendering
		{
			ingredients =
				{
					{name='brain-zipir',remove_item = true},
					{name='guts-zipir', amount=1},
				},
			results =
				{
					{name='brain', amount = 1},
					{name='guts', amount =13},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-zipir.png",
			icon_size = 64,
		},
		--blood zipir rendering
		{
			ingredients =
				{
					{name='guts-zipir',remove_item = true},
					{name='blood-zipir', amount=1},
				},
			results =
				{
					{name='guts', amount = 4},
					{name='arthropod-blood', amount =170},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-zipir.png",
			icon_size = 64,
		},
		--skin zipir rendering
		{
			ingredients =
				{
					{name='blood-zipir',remove_item = true},
					{name='skin-zipir', amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount = 50},
					{name='skin', amount =17},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-zipir.png",
			icon_size = 64,
		},
		--fat zipir rendering
		{
			ingredients =
				{
					{name='skin-zipir',remove_item = true},
					{name='fat-zipir', amount=1},
				},
			results =
				{
					{name='skin', amount = 6},
					{name='mukmoux-fat', amount =15},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-zipir.png",
			icon_size = 64,
		},
		--meat zipir rendering
		{
			ingredients =
				{
					{name='fat-zipir',remove_item = true},
					{name='meat-zipir', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount = 3},
					{name='meat', amount =13},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-zipir',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-zipir.png",
			icon_size = 64,
		},
	}
}
