local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering-arthurian',
	category = 'slaughterhouse-arthurian',
	subgroup = 'py-alienlife-arthurian',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-arthurian', amount=1},
				},
			results =
				{
					{name='bones', amount = 4},
					{name='meat', amount = 5},
					{name='skin', amount = 2},
					{name='mukmoux-fat', amount = 1},
					{name='guts', amount = 4},
					{name='blood', amount = 50},
					{name='cage', amount=1},
					{name='brain',amount = 2},
				},
			crafting_speed = 30,
			tech = 'arthurian',
			name = 'full-render-arthurian',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-arthurian.png",
			icon_size = 64,
		},
		--brain arthurian rendering
		{
			ingredients =
				{
					{name='caged-arthurian',remove_item = true},
					{name='brain-caged-arthurian', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount = 4},
					{name = 'polynuclear-ganglion', amount = 1}
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-art',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-arthurian.png",
			icon_size = 64,
		},
		--bone arthurian rendering
		{
			ingredients =
				{
					{name='brain-caged-arthurian',remove_item = true},
					{name='bone-caged-arthurian', amount=1},
				},
			results =
				{
					{name='brain', amount = 2},
					{name='bones', amount =12},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bon-art',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-arthurian.png",
			icon_size = 64,
		},
		--guts arthurian rendering
		{
			ingredients =
				{
					{name='bone-caged-arthurian',remove_item = true},
					{name='guts-caged-arthurian', amount=1},
				},
			results =
				{
					{name='bones', amount = 4},
					{name='guts', amount = 10},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-art',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-arthurian.png",
			icon_size = 64,
		},
		--blood arthurian rendering
		{
			ingredients =
				{
					{name='guts-caged-arthurian',remove_item = true},
					{name='blood-caged-arthurian', amount=1},
				},
			results =
				{
					{name='guts', amount = 4},
					{name='blood', amount =160},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-art',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-arthurian.png",
			icon_size = 64,
		},
		--skin arthurian rendering
		{
			ingredients =
				{
					{name='blood-caged-arthurian',remove_item = true},
					{name='skin-caged-arthurian', amount=1},
				},
			results =
				{
					{name='blood', amount = 50},
					{name='skin', amount =7},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-art',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-arthurian.png",
			icon_size = 64,
		},
		--fat arthurian rendering
		{
			ingredients =
				{
					{name='skin-caged-arthurian',remove_item = true},
					{name='fat-caged-arthurian', amount=1},
				},
			results =
				{
					{name='skin', amount = 2},
					{name='mukmoux-fat', amount =6},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-art',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-arthurian.png",
			icon_size = 64,
		},
		--meat arthurian rendering
		{
			ingredients =
				{
					{name='fat-caged-arthurian',remove_item = true},
					{name='meat-caged-arthurian', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount = 1},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-art',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-arthurian.png",
			icon_size = 64,
		},
	}
}
