local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-scrondrix',
	--module_limitations = 'scrondrix',
	subgroup = 'py-alienlife-scrondrix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-scrondrix', amount=1},
				},
			results =
				{
					{name='bones', amount =2},
					{name='meat',  amount =3},
					{name='skin',  amount =1},
					{name='mukmoux-fat',  amount =2},
					{name='guts',  amount =2},
					{name='blood', amount =60},
					{name='pineal-gland',  amount =1},
					{name='cage', amount=1},
					{name='brain',  amount =1},
				},
			crafting_speed = 30,
			tech = 'scrondrix',
			name = 'full-render-scrondrixs',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-scrondrix.png",
			icon_size = 64,
		},
		--brain scrondrix rendering
		{
			ingredients =
				{
					{name='caged-scrondrix',remove_item = true},
					{name='brain-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='brain', amount =5},
					{name = 'intestinal-ee', amount = 1},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-scro',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-scrondrix.png",
			icon_size = 64,
		},
		--bone scrondrix rendering
		{
			ingredients =
				{
					{name='brain-caged-scrondrix',remove_item = true},
					{name='bone-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='brain', amount = 1},
					{name='bones', amount = 13},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bon-scro',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-scrondrix.png",
			icon_size = 64,
		},
		--guts scrondrix rendering
		{
			ingredients =
				{
					{name='bone-caged-scrondrix',remove_item = true},
					{name='guts-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='bones', amount = 2},
					{name='guts', amount =12},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-scro',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-scrondrix.png",
			icon_size = 64,
		},
		--blood scrondrix rendering
		{
			ingredients =
				{
					{name='guts-caged-scrondrix',remove_item = true},
					{name='blood-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='guts', amount = 2},
					{name='blood', amount =170},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-scro',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-scrondrix.png",
			icon_size = 64,
		},
		--skin scrondrix rendering
		{
			ingredients =
				{
					{name='blood-caged-scrondrix',remove_item = true},
					{name='skin-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='blood', amount = 60},
					{name='skin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-scro',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-scrondrix.png",
			icon_size = 64,
		},
		--fat scrondrix rendering
		{
			ingredients =
				{
					{name='skin-caged-scrondrix',remove_item = true},
					{name='fat-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='skin', amount = 1},
					{name='mukmoux-fat', amount =10},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-scro',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-scrondrix.png",
			icon_size = 64,
		},
		--meat scrondrix rendering
		{
			ingredients =
				{
					{name='fat-caged-scrondrix',remove_item = true},
					{name='meat-caged-scrondrix', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount = 2},
					{name='meat', amount =12},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-scro',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}
