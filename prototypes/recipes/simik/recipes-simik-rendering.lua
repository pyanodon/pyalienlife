local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-simik',
	--module_limitations = 'simik',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-simik', amount=1},
				},
			results =
				{
					{name='bones', amount = 3},
					{name='meat', amount = 5},
                    {name='chitin', amount = 1},
					{name='mukmoux-fat', amount = 1},
                    {name='guts', amount = 1},
                    {name='keratin', amount = 1},
					{name='simik-blood', amount =30},
					{name='cage', amount=1},
					{name='brain', amount = 1},
				},
			crafting_speed = 30,
			tech = 'simik-mk01',
			name = 'full-render-simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/rendering-simik.png",
			icon_size = 64,
		},
		--brain simik rendering
		{
			ingredients =
				{
					{name='caged-simik',remove_item = true},
					{name='brain-caged-simik', amount=2},
				},
			results =
				{
					{name='brain', amount =6},
				},
			crafting_speed = 30,
			tech = 'nanochondria',
			name = 'ex-bra-sim',
			icon = "__pyalienlifegraphics2__/graphics/icons/brain-caged-simik.png",
			icon_size = 64,
		},
		--bone simik rendering
		{
			ingredients =
				{
					{name='brain-caged-simik',remove_item = true},
					{name='bone-caged-simik', amount=1},
				},
			results =
				{
					{name='brain', amount = 1},
					{name='bones', amount =9},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bon-sim',
			icon = "__pyalienlifegraphics2__/graphics/icons/bone-caged-simik.png",
			icon_size = 64,
		},
		--meat simik rendering
		{
			ingredients =
				{
					{name='bone-caged-simik',remove_item = true},
					{name='meat-caged-simik', amount=1},
				},
			results =
				{
					{name='bones', amount = 3},
					{name='meat', amount =11},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-sim',
			icon = "__pyalienlifegraphics2__/graphics/icons/meat-caged-simik.png",
			icon_size = 64,
		},
		--guts simik rendering
		{
			ingredients =
				{
					{name='meat-caged-simik',remove_item = true},
					{name='guts-caged-simik', amount=1},
				},
			results =
				{
					{name = 'hormonal', amount = 1},
					{name='meat', amount = 5},
					{name='guts', amount = 8},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-sim',
			icon = "__pyalienlifegraphics2__/graphics/icons/guts-caged-simik.png",
			icon_size = 64,
		},
		--blood simik rendering
		{
			ingredients =
				{
					{name='guts-caged-simik',remove_item = true},
					{name='blood-caged-simik', amount=1},
				},
			results =
				{
					{name='guts', amount = 1},
					{name='hormonal',remove_item = true},
					{name='simik-blood', amount =150},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-sim',
			icon = "__pyalienlifegraphics2__/graphics/icons/blood-caged-simik.png",
			icon_size = 64,
		},
		--hot air simik rendering
		{
			ingredients =
				{
					{name='blood-caged-simik',remove_item = true},
					{name='hot-air-caged-simik', amount=1},
				},
			results =
				{
					{name='simik-blood', amount = 30},
					{name='hot-air', amount =300},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-hot-sim',
			icon = "__pyalienlifegraphics2__/graphics/icons/hot-air-caged-simik.png",
			icon_size = 64,
		},
		--skin simik rendering
		{
			ingredients =
				{
					{name='hot-air-caged-simik',remove_item = true},
					{name='skin-caged-simik', amount=1},
				},
			results =
				{
					{name='hot-air', remove_item = true},
					{name='simik-scales', amount =1},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-sim',
			icons =
			{
				{icon = "__pyalienlifegraphics2__/graphics/icons/caged-simik.png", icon_size = 64},
				{icon = '__pyalienlifegraphics__/graphics/icons/skull.png', icon_size = 64, scale = 0.25,shift = {-7.5,-7.5}},
			},
		},
		--fat simik rendering
		{
			ingredients =
				{
					{name='skin-caged-simik',remove_item = true},
					{name='fat-caged-simik', amount=1},
				},
			results =
				{
					{name='simik-scales',remove_item = true},
					{name='mukmoux-fat', amount =8},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-sim',
			icon = "__pyalienlifegraphics2__/graphics/icons/fat-caged-simik.png",
			icon_size = 64,
		},
		--chitin simik rendering
		{
			ingredients =
				{
					{name='fat-caged-simik',remove_item = true},
					{name='chitin-caged-simik', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', amount = 1},
					{name='chitin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-chi-sim',
			icon = "__pyalienlifegraphics2__/graphics/icons/chitin-caged-simik.png",
			icon_size = 64,
		},
		--keratin simik rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='chitin', amount = 1},
					{name='keratin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ker-sim',
			icon = "__pyalienlifegraphics2__/graphics/icons/keratin-caged-simik.png",
			icon_size = 64,
		},
	}
}
