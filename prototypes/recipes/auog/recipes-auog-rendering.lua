local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering-auog',
	category = 'slaughterhouse-auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-auog', amount=3},
				},
			results =
				{
					{name='bones', amount = 6},
					{name='meat', amount = 7},
					{name='skin', amount = 3},
					{name='mukmoux-fat', amount = 5},
					{name='guts', amount = 5},
					{name='blood', amount = 150},
					{name='brain', amount = 3},
					{name='biomass', amount = 5},
					{name='cage', amount = 3},
				},
			crafting_speed = 10,
			tech = 'rendering',
			name = 'full-render-auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-auog.png",
			icon_size = 64,
		},
		--brain auog rendering
		{
			ingredients =
				{
					{name='caged-auog', remove_item = true},
					{name='brain-caged-auog', amount=3},
				},
			results =
				{
					{name='brain', amount = 6},
					{name='glandular-myocluster', amount = 1},
				},
			crafting_speed = 30,
			tech = 'nanochondria',
			name = 'ex-bra-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-auog.png",
			icon_size = 64,
		},
		--bone auog rendering
		{
			ingredients =
				{
					{name='brain-caged-auog',remove_item = true},
					{name='bone-caged-auog',amount=3},
				},
			results =
				{
					{name='brain', amount = 3},
					{name='bones', amount = 12},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bon-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-auog.png",
			icon_size = 64,
		},
		--meat auog rendering
		{
			ingredients =
				{
					{name='bone-caged-auog',remove_item = true},
					{name='meat-caged-auog',amount=3},
				},
			results =
				{
					{name='bones', amount = 6},
					{name='meat', amount =21},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-auog.png",
			icon_size = 64,
		},
		--guts auog rendering
		{
			ingredients =
				{
					{name='meat-caged-auog',remove_item = true},
					{name='guts-caged-auog',amount=3},
				},
			results =
				{
					{name='meat', amount = 7},
					{name='guts', amount = 13},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-auog.png",
			icon_size = 64,
		},
		--blood auog rendering
		{
			ingredients =
				{
					{name='guts-caged-auog',remove_item = true},
					{name='blood-caged-auog',amount=3},
				},
			results =
				{
					{name='guts', amount = 5},
					{name='blood', amount = 350},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-auog.png",
			icon_size = 64,
		},
		--skin auog rendering
		{
			ingredients =
				{
					{name='blood-caged-auog',remove_item = true},
					{name='skin-caged-auog',amount=3},
				},
			results =
				{
					{name='blood', amount = 150},
					{name='skin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-auog.png",
			icon_size = 64,
		},
		--fat auog rendering
		{
			ingredients =
				{
					{name='skin-caged-auog',remove_item = true},
					{name='fat-caged-auog',amount=3},
				},
			results =
				{
					{name='skin', amount = 3},
					{name='mukmoux-fat', amount = 12},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-auog.png",
			icon_size = 64,
		},
	}
}
