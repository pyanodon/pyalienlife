local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-dhilmos',
	--module_limitations = 'dhilmos',
	subgroup = 'py-alienlife-dhilmos',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='dhilmos', amount=1},
				},
			results =
				{
					{name='meat', amount_max =1},
                    {name='mukmoux-fat', amount_max =1},
                    {name='chitin', amount_max =2},
					{name='guts', amount_max =1},
					{name='arthropod-blood', amount =15},
				},
			crafting_speed = 30,
			tech = 'dhilmos',
			name = 'full-render-dhilmoss',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-dhilmos.png",
			icon_size = 64,
		},
		--meat dhilmos rendering
		{
			ingredients =
				{
					{name='dhilmos',remove_item = true},
					{name='meat-dhilmos', amount=1},
				},
			results =
				{
					{name = 'autoantigens', amount = 50},
					{name='meat', amount =6},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-dhi',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-dhilmos.png",
			icon_size = 64,
		},
		--guts dhilmos rendering
		{
			ingredients =
				{
					{name='meat-dhilmos',remove_item = true},
					{name='guts-dhilmos', amount=1},
				},
			results =
				{
					{name='meat', amount = 1},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-dhi',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-dhilmos.png",
			icon_size = 64,
		},
		--blood dhilmos rendering
		{
			ingredients =
				{
					{name='guts-dhilmos',remove_item = true},
					{name='blood-dhilmos', amount=1},
				},
			results =
				{
					{name='guts', amount = 1},
					{name='arthropod-blood', amount =120},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-dhi',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-dhilmos.png",
			icon_size = 64,
		},
		--fat dhilmos rendering
		{
			ingredients =
				{
					{name='blood-dhilmos',remove_item = true},
					{name='fat-dhilmos', amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount = 15},
					{name='mukmoux-fat', amount =6},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-dhi',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-dhilmos.png",
			icon_size = 64,
		},
	}
}
