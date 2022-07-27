local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-trits',
	--module_limitations = 'trits',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='trits', amount=1},
				},
			results =
				{
					{name='bones', amount =4},
					{name='meat',  amount =4},
					{name='skin',  amount =3},
					{name='mukmoux-fat',  amount =5},
					{name='guts',  amount =4},
					{name='photophore', amount =1},
					{name='blood', amount =60},
					{name='brain',  amount =1},
				},
			crafting_speed = 30,
			tech = 'trits',
			name = 'full-render-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-trits.png",
			icon_size = 64,
		},
		--brain trits rendering
		{
			ingredients =
				{
					{name='trits',remove_item = true},
					{name='brain-trits', amount=1},
				},
			results =
				{
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-trits.png",
			icon_size = 64,
		},
		--bone trits rendering
		{
			ingredients =
				{
					{name='brain-trits',remove_item = true},
					{name='bone-trits', amount=1},
				},
			results =
				{
					{name='brain', amount = 1},
					{name='bones', amount =14},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bon-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-trits.png",
			icon_size = 64,
		},
		--meat trits rendering
		{
			ingredients =
				{
					{name='bone-trits',remove_item = true},
					{name='meat-trits', amount=1},
				},
			results =
				{
					{name='bones', amount = 4},
					{name='meat', amount =15},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-trits.png",
			icon_size = 64,
		},
		--guts trits rendering
		{
			ingredients =
				{
					{name='meat-trits',remove_item = true},
					{name='guts-trits', amount=1},
				},
			results =
				{
					{name='meat', amount = 4},
					{name='guts', amount =15},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-trits.png",
			icon_size = 64,
		},
		--blood trits rendering
		{
			ingredients =
				{
					{name='guts-trits',remove_item = true},
					{name='blood-trits', amount=1},
				},
			results =
				{
					{name='guts', amount = 4},
					{name='blood', amount =200},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-trits.png",
			icon_size = 64,
		},
		--skin trits rendering
		{
			ingredients =
				{
					{name='blood-trits',remove_item = true},
					{name='skin-trits', amount=1},
				},
			results =
				{
					{name='blood', amount = 60},
					{name='photophore', amount =4},
					{name='skin', amount =13},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-trits.png",
			icon_size = 64,
		},
		--fat trits rendering
		{
			ingredients =
				{
					{name='skin-trits',remove_item = true},
					{name='fat-trits', amount=1},
				},
			results =
				{
					{name='photophore',remove_item = true},
					{name='skin', amount = 3},
					{name='mukmoux-fat', amount =30},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-trits.png",
			icon_size = 64,
		},
	}
}
