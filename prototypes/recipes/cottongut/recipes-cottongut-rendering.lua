local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering-cottongut',
	category = 'slaughterhouse-cottongut',
	subgroup = 'py-alienlife-cottongut',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='cottongut', amount=6},
				},
			results =
				{
					{name='bones', amount =5},
					{name='meat', amount =4},
					{name='skin', amount =4},
					{name='guts',  amount =5},
					{name='mukmoux-fat',  amount =5},
					{name='blood', amount = 60},
					{name='brain', amount =2},
				},
			crafting_speed = 30,
			tech = 'cottongut-mk01',
			name = 'full-render-cottongut',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-cottongut.png",
			icon_size = 64,
		},
		--brain cottongut rendering
		{
			ingredients =
				{
					{name='cottongut',remove_item = true},
					{name='brain-cottongut', amount=5},
				},
			results =
				{
					{name='brain', amount =5},
					{name = 'lcc', amount = 1}
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-cot',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-cottongut.png",
			icon_size = 64,
		},
		--bone cottongut rendering
		{
			ingredients =
				{
					{name='brain-cottongut',remove_item = true},
					{name='bone-cottongut', amount=5},
				},
			results =
				{
					{name='brain', amount =2},
					{name='bones', amount =12},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bon-cot',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-cottongut.png",
			icon_size = 64,
		},
		--guts cottongut rendering
		{
			ingredients =
				{
					{name='bone-cottongut',remove_item = true},
					{name='guts-cottongut', amount=5},
				},
			results =
				{
					{name='bones', amount = 5},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-cot',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-cottongut.png",
			icon_size = 64,
		},
		--blood cottongut rendering
		{
			ingredients =
				{
					{name='guts-cottongut',remove_item = true},
					{name='blood-cottongut', amount=5},
				},
			results =
				{
					{name='guts', amount = 5},
					{name='blood', amount =70},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-cot',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-cottongut.png",
			icon_size = 64,
		},
		--skin cottongut rendering
		{
			ingredients =
				{
					{name='blood-cottongut',remove_item = true},
					{name='skin-cottongut', amount=5},
				},
			results =
				{
					{name='blood', amount = 60},
					{name='skin', amount =4},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-cot',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-cottongut.png",
			icon_size = 64,
		},
		--fat cottongut rendering
		{
			ingredients =
				{
					{name='skin-cottongut',remove_item = true},
					{name='fat-cottongut', amount=1},
				},
			results =
				{
					{name='skin', amount = 4},
					{name='mukmoux-fat', amount =11},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-cot',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-cottongut.png",
			icon_size = 64,
		},
		--meat cottongut rendering
		{
			ingredients =
				{
					{name='fat-cottongut',remove_item = true},
					{name='meat-cottongut', amount=5},
				},
			results =
				{
					{name='mukmoux-fat', amount = 5},
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-cot',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-cottongut.png",
			icon_size = 64,
		},
	}
}
