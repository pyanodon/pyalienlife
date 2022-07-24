local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-dingrits',
	--module_limitations = 'dingrits',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-dingrits', amount=1},
				},
			results =
				{
					{name='bones', amount = 2},
					{name='meat', amount = 3},
                    {name='guts', amount = 3},
					{name='pelt', amount = 1},
					{name='dingrit-spike', amount = 1},
					{name='blood', amount =20},
					{name='cage', amount=1},
					{name='brain', amount = 1},
				},
			crafting_speed = 30,
			tech = 'dingrits',
			name = 'full-render-dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-dingrits.png",
			icon_size = 64,
		},
		--brain dingrits rendering
		{
			ingredients =
				{
					{name='caged-dingrits',remove_item = true},
					{name='brain-caged-dingrits', amount=1},
				},
			results =
				{
					{name = 'snarer-heart', amount = 1},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-din',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-dingrits.png",
			icon_size = 64,
		},
		--bone dingrits rendering
		{
			ingredients =
				{
					{name='brain-caged-dingrits',remove_item = true},
					{name='bone-caged-dingrits', amount=1},
				},
			results =
				{
					{name='brain', amount = 1},
					{name='bones', amount =8},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bon-din',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-dingrits.png",
			icon_size = 64,
		},
		--guts dingrits rendering
		{
			ingredients =
				{
					{name='bone-caged-dingrits',remove_item = true},
					{name='guts-caged-dingrits', amount=1},
				},
			results =
				{
					{name='bones', amount = 2},
					{name='guts', amount =10},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-din',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-dingrits.png",
			icon_size = 64,
		},
		--blood dingrits rendering
		{
			ingredients =
				{
					{name='guts-caged-dingrits',remove_item = true},
					{name='blood-caged-dingrits', amount=1},
				},
			results =
				{
					{name='guts', amount = 3},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-din',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-dingrits.png",
			icon_size = 64,
		},
		--meat dingrits rendering
		{
			ingredients =
				{
					{name='blood-caged-dingrits',remove_item = true},
					{name='meat-caged-dingrits', amount=1},
				},
			results =
				{
					{name='blood', amount = 20},
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-din',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-dingrits.png",
			icon_size = 64,
		},
		--skin dingrits rendering
		{
			ingredients =
				{
					{name='meat-caged-dingrits',remove_item = true},
					{name='skin-caged-dingrits', amount=1},
				},
			results =
				{
					{name='meat', amount = 3},
					{name='pelt', amount =3},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-pelt-din',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-dingrits.png",
			icon_size = 64,
		},
	}
}
