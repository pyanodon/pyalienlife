local fun = require("prototypes/functions/functions")


--I have no idea how to use this new system to code the slaugter recipes



------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-zungror',
	--module_limitations = 'zungror',
	subgroup = 'py-alienlife-zungror',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='zungror', amount=1},
				},
			results =
				{
					{name='meat', amount = 6},
					{name='skin', amount = 4},
					{name='mukmoux-fat', amount = 5},
					{name='guts', amount = 6},
					{name='arthropod-blood', amount =80},
					{name='venon-gland', amount = 1},
					{name='brain', amount = 1},
				},
			crafting_speed = 30,
			tech = 'zungror',
			name = 'full-render-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-zungror.png",
			icon_size = 64,
		},
		--brain zungror rendering
		{
			ingredients =
				{
					{name='zungror',remove_item = true},
					{name='brain-zungror', amount=1},
				},
			results =
				{
					{name = 'vsk', amount = 1},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-zungror.png",
			icon_size = 64,
		},
		--guts zungror rendering
		{
			ingredients =
				{
					{name='brain-zungror',remove_item = true},
					{name='guts-zungror', amount=1},
				},
			results =
				{
					{name='brain', amount = 1},
					{name='guts', amount =20},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-zungror.png",
			icon_size = 64,
		},
		--blood zungror rendering
		{
			ingredients =
				{
					{name='guts-zungror',remove_item = true},
					{name='blood-zungror', amount=1},
				},
			results =
				{
					{name='guts', amount = 6},
					{name='arthropod-blood', amount =230},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-zungror.png",
			icon_size = 64,
		},
		--skin zungror rendering
		{
			ingredients =
				{
					{name='blood-zungror',remove_item = true},
					{name='skin-zungror', amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount = 80},
					{name='skin', amount =13},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-zungror.png",
			icon_size = 64,
		},
		--fat zungror rendering
		{
			ingredients =
				{
					{name='skin-zungror',remove_item = true},
					{name='fat-zungror', amount=1},
				},
			results =
				{
					{name='skin', amount = 4},
					{name='mukmoux-fat', amount =23},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-zungror.png",
			icon_size = 64,
		},
		--meat zungror rendering
		{
			ingredients =
				{
					{name='fat-zungror',remove_item = true},
					{name='meat-zungror', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount = 5},
					{name='meat', amount =13},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-zun',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-zungror.png",
			icon_size = 64,
		},
	}
}
