local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering-ulric',
	category = 'slaughterhouse-ulric',
	--module_limitations = 'ulric',
	subgroup = 'py-alienlife-ulric',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-ulric', amount=1},
				},
			results =
				{
					{name='bonemeal', amount = 3},
					{name='meat', amount = 3},
					{name='skin', amount = 1},
					{name='mukmoux-fat', amount = 1},
					{name='guts', amount = 1},
					{name='blood', amount =50},
					{name='cage', amount=1},
					{name='brain', amount = 1},
				},
			crafting_speed = 30,
			tech = 'ulric',
			name = 'full-render-ulrics',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-ulric.png",
			icon_size = 64,
		},
		--brain ulric rendering
		{
			ingredients =
				{
					{name='caged-ulric',remove_item = true},
					{name='brain-caged-ulric', amount=1},
				},
			results =
				{
					{name = 'magnetic-organ', amount = 2},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-ulr',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-ulric.png",
			icon_size = 64,
		},
		--bone ulric rendering
		{
			ingredients =
				{
					{name='brain-caged-ulric',remove_item = true},
					{name='bone-caged-ulric', amount=1},
				},
			results =
				{
					{name='magnetic-organ',remove_item = true},
					{name='brain', amount = 1},
					{name='bonemeal', amount =13},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bon-ulr',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-ulric.png",
			icon_size = 64,
		},
		--guts ulric rendering
		{
			ingredients =
				{
					{name='bone-caged-ulric',remove_item = true},
					{name='guts-caged-ulric', amount=1},
				},
			results =
				{
					{name='bones',remove_item = true},
					{name='bonemeal', amount =3},
					{name='guts', amount =12},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-ulr',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-ulric.png",
			icon_size = 64,
		},
		--blood ulric rendering
		{
			ingredients =
				{
					{name='guts-caged-ulric',remove_item = true},
					{name='blood-caged-ulric', amount=1},
				},
			results =
				{
					{name='guts', amount = 1},
					{name='blood', amount =200},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-ulr',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-ulric.png",
			icon_size = 64,
		},
		--skin ulric rendering
		{
			ingredients =
				{
					{name='blood-caged-ulric',remove_item = true},
					{name='skin-caged-ulric', amount=1},
				},
			results =
				{
					{name='blood', amount = 50},
					{name='skin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-ulr',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-ulric.png",
			icon_size = 64,
		},
		--fat ulric rendering
		{
			ingredients =
				{
					{name='skin-caged-ulric',remove_item = true},
					{name='fat-caged-ulric', amount=1},
				},
			results =
				{
					{name='skin', amount = 1},
					{name='mukmoux-fat', amount =10},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-ulr',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-ulric.png",
			icon_size = 64,
		},
		--meat ulric rendering
		{
			ingredients =
				{
					{name='fat-caged-ulric',remove_item = true},
					{name='meat-caged-ulric', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount = 1},
					{name='meat', amount =11},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-ulr',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-ulric.png",
			icon_size = 64,
		},
	}
}
