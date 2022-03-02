local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-korlex',
	--module_limitations = 'korlex',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-korlex', amount=1},
				},
			results =
				{
					{name='bones',amount =3},
					{name='meat', amount =3},
					{name='skin', amount =5},
					{name='mukmoux-fat', amount =3},
					{name='guts', amount =2},
					{name='blood', amount =20},
					{name='cage', amount=1},
					{name='brain', amount =1},
				},
			crafting_speed = 30,
			tech = 'korlex',
			name = 'full-render-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-korlex.png",
			icon_size = 64,
		},
		--brain korlex rendering
		{
			ingredients =
				{
					{name='caged-korlex',remove_item = true},
					{name='brain-caged-korlex', amount=1},
				},
			results =
				{
					{name = 'cryogland', amount = 1},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-korlex.png",
			icon_size = 64,
		},
		--bone korlex rendering
		{
			ingredients =
				{
					{name='brain-caged-korlex',remove_item = true},
					{name='bone-caged-korlex', amount=1},
				},
			results =
				{
					{name='brain', amount = 1},
					{name='bones', amount =9},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bon-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-korlex.png",
			icon_size = 64,
		},
		--meat korlex rendering
		{
			ingredients =
				{
					{name='bone-caged-korlex',remove_item = true},
					{name='meat-caged-korlex', amount=1},
				},
			results =
				{
					{name='bones', amount = 3},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-korlex.png",
			icon_size = 64,
		},
		--guts korlex rendering
		{
			ingredients =
				{
					{name='meat-caged-korlex',remove_item = true},
					{name='guts-caged-korlex', amount=1},
				},
			results =
				{
					{name='meat', amount = 3},
					{name='guts', amount =7},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-korlex.png",
			icon_size = 64,
		},
		--blood korlex rendering
		{
			ingredients =
				{
					{name='guts-caged-korlex',remove_item = true},
					{name='blood-caged-korlex', amount=1},
				},
			results =
				{
					{name='guts', amount = 2},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-korlex.png",
			icon_size = 64,
		},
		--skin korlex rendering
		{
			ingredients =
				{
					{name='blood-caged-korlex',remove_item = true},
					{name='skin-caged-korlex', amount=1},
				},
			results =
				{
					{name='blood', amount = 20},
					{name='skin', amount =13},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-korlex.png",
			icon_size = 64,
		},
		--fat korlex rendering
		{
			ingredients =
				{
					{name='skin-caged-korlex',remove_item = true},
					{name='fat-caged-korlex', amount=1},
				},
			results =
				{
					{name='skin', amount = 5},
					{name='mukmoux-fat', amount =8},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-korlex.png",
			icon_size = 64,
		},
	}
}
