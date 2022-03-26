local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-mukmoux',
	--module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-mukmoux', amount=1},
				},
			results =
				{
					{name='bones',  amount =2},
					{name='meat',  amount =4},
					{name='skin',  amount =4},
					{name='mukmoux-fat',  amount =3},
					{name='guts',  amount =4},
					{name='blood', amount =50},
					{name='cage', amount=1},
					{name='brain',  amount =1},
				},
			crafting_speed = 30,
			tech = 'mukmoux',
			name = 'full-render-mukmoux',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-mukmoux.png",
			icon_size = 64,
		},
		--brain mukmoux rendering
		{
			ingredients =
				{
					{name='caged-mukmoux',remove_item = true},
					{name='brain-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-mukmoux.png",
			icon_size = 64,
		},
		--bone mukmoux rendering
		{
			ingredients =
				{
					{name='brain-caged-mukmoux',remove_item = true},
					{name='bone-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='brain', amount = 1},
					{name='bones', amount =13},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bon-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-mukmoux.png",
			icon_size = 64,
		},
		--meat mukmoux rendering
		{
			ingredients =
				{
					{name='bone-caged-mukmoux',remove_item = true},
					{name='meat-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='bones', amount = 2},
					{name='meat', amount =24},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-mukmoux.png",
			icon_size = 64,
		},
		--guts mukmoux rendering
		{
			ingredients =
				{
					{name='meat-caged-mukmoux',remove_item = true},
					{name='guts-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='meat', amount = 4},
					{name='guts', amount =20},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-mukmoux.png",
			icon_size = 64,
		},
		--blood mukmoux rendering
		{
			ingredients =
				{
					{name='guts-caged-mukmoux',remove_item = true},
					{name='blood-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='guts', amount = 4},
					{name='blood', amount =250},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-mukmoux.png",
			icon_size = 64,
		},
		--skin mukmoux rendering
		{
			ingredients =
				{
					{name='blood-caged-mukmoux',remove_item = true},
					{name='skin-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='blood', amount = 50},
					{name='skin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-mukmoux.png",
			icon_size = 64,
		},
		--fat mukmoux rendering
		{
			ingredients =
				{
					{name='skin-caged-mukmoux',remove_item = true},
					{name='fat-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='skin', amount = 4},
					{name='mukmoux-fat', amount =20},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}
