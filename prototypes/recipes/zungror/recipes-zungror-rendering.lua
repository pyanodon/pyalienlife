local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering-zungror',
	category = 'slaughterhouse-zungror',
	--module_limitations = 'zungror',
	subgroup = 'py-alienlife-zungror',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-zungror', amount=1},
				},
			results =
				{
					{name='meat', amount = 6},
					{name='skin', amount = 4},
					{name='mukmoux-fat', amount = 5},
					{name='guts', amount = 6},
					{name='arthropod-blood', amount =300},
					{name='brain', amount = 1},
					{name='cage', amount = 1}
				},
			crafting_speed = 30,
			tech = 'zungror',
			name = 'full-render-zun',
			icon = "__pyalienlifegraphics3__/graphics/icons/rendering-zungror.png",
			icon_size = 64,
		},
		--brain zungror rendering
		{
			ingredients =
				{
					{name='caged-zungror',remove_item = true},
					{name='brain-caged-zungror', amount=1},
				},
			results =
				{

					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-zungror.png",
			icon_size = 64,
		},
		--guts zungror rendering
		{
			ingredients =
				{
					{name='brain-caged-zungror',remove_item = true},
					{name='guts-caged-zungror', amount=1},
				},
			results =
				{
					{name='brain', amount =1},
					{name='guts', amount =20},
					{name = 'vsk', amount = 1},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-zungror.png",
			icon_size = 64,
		},
		--blood zungror rendering
		{
			ingredients =
				{
					{name='guts-caged-zungror',remove_item = true},
					{name='blood-caged-zungror', amount=1},
				},
			results =
				{
					{name='vsk',remove_item = true},
					{name='guts', amount = 6},
					{name='arthropod-blood', amount =450},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-zungror.png",
			icon_size = 64,
		},
		--skin zungror rendering
		{
			ingredients =
				{
					{name='blood-caged-zungror',remove_item = true},
					{name='skin-caged-zungror', amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount = 300},
					{name='skin', amount =13},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-zungror.png",
			icon_size = 64,
		},
		--fat zungror rendering
		{
			ingredients =
				{
					{name='skin-caged-zungror',remove_item = true},
					{name='fat-caged-zungror', amount=1},
				},
			results =
				{
					{name='skin', amount = 4},
					{name='mukmoux-fat', amount =23},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-zungror.png",
			icon_size = 64,
		},
		--meat zungror rendering
		{
			ingredients =
				{
					{name='fat-caged-zungror',remove_item = true},
					{name='meat-caged-zungror', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount = 5},
					{name='meat', amount =13},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-zungror.png",
			icon_size = 64,
		},
	}
}
