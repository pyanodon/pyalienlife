local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-vonix',
	--module_limitations = 'vonix',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='vonix', amount=1},
				},
			results =
				{
					{name='meat',  amount =6},
					{name='skin',  amount =4},
					{name='mukmoux-fat',  amount =5},
					{name='guts',  amount =6},
					{name='arthropod-blood', amount =80},
					{name='venon-gland',  amount =1},
					{name='brain', amount =1},
				},
			crafting_speed = 30,
			tech = 'vonix',
			name = 'full-render-vonix',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-vonix.png",
			icon_size = 64,
		},
		--brain vonix rendering
		{
			ingredients =
				{
					{name='vonix',remove_item = true},
					{name='brain-vonix', amount=1},
				},
			results =
				{
					{name='venon-gland', amount =1},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-von',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-vonix.png",
			icon_size = 64,
		},
		--guts vonix rendering
		{
			ingredients =
				{
					{name='brain-vonix',remove_item = true},
					{name='guts-vonix', amount=1},
				},
			results =
				{
					{name='brain', amount = 1},
					{name='guts', amount =20},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-von',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-vonix.png",
			icon_size = 64,
		},
		--blood vonix rendering
		{
			ingredients =
				{
					{name='guts-vonix',remove_item = true},
					{name='blood-vonix', amount=1},
				},
			results =
				{
					{name='guts', amount = 6},
					{name='arthropod-blood', amount =230},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-von',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-vonix.png",
			icon_size = 64,
		},
		--skin vonix rendering
		{
			ingredients =
				{
					{name='blood-vonix',remove_item = true},
					{name='skin-vonix', amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount = 80},
					{name='skin', amount =13},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-von',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-vonix.png",
			icon_size = 64,
		},
		--fat vonix rendering
		{
			ingredients =
				{
					{name='skin-vonix',remove_item = true},
					{name='fat-vonix', amount=1},
				},
			results =
				{
					{name='skin', amount = 4},
					{name='mukmoux-fat', amount =23},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-von',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-vonix.png",
			icon_size = 64,
		},
		--meat vonix rendering
		{
			ingredients =
				{
					{name='fat-vonix',remove_item = true},
					{name='meat-vonix', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount = 5},
					{name='meat', amount =13},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-von',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-vonix.png",
			icon_size = 64,
		},
	}
}
