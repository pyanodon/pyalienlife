local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-phadai',
	--module_limitations = 'phadai',
	subgroup = 'py-alienlife-phadai',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-phadai', amount=1},
				},
			results =
				{
					{name='bones', amount =3},
					{name='meat', amount =1},
                    {name='guts', amount =3},
                    {name='mukmoux-fat', amount =1},
                    {name='skin', amount =1},
					{name='carapace', amount =1},
					{name='blood', amount =30},
					{name='cage', amount=1},
					{name='brain', amount =1},
				},
			crafting_speed = 30,
			tech = 'phadai',
			name = 'full-render-phadais',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-phadai.png",
			icon_size = 64,
		},
		--brain phadai rendering
		{
			ingredients =
				{
					{name='caged-phadai',remove_item = true},
					{name='brain-caged-phadai', amount=1},
				},
			results =
				{
					{name = 'subdermal-chemosnare', amount = 1},
					{name='brain', amount =6},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-pha',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-phadai.png",
			icon_size = 64,
		},
		--bone phadai rendering
		{
			ingredients =
				{
					{name='brain-caged-phadai',remove_item = true},
					{name='bone-caged-phadai', amount=1},
				},
			results =
				{
					{name='brain', amount = 1},
					{name='bones', amount =10},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bon-pha',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-phadai.png",
			icon_size = 64,
		},
		--guts phadai rendering
		{
			ingredients =
				{
					{name='bone-caged-phadai',remove_item = true},
					{name='guts-caged-phadai', amount=1},
				},
			results =
				{
					{name='bones', amount = 3},
					{name='guts', amount =12},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-pha',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-phadai.png",
			icon_size = 64,
		},
		--blood phadai rendering
		{
			ingredients =
				{
					{name='guts-caged-phadai',remove_item = true},
					{name='blood-caged-phadai', amount=1},
				},
			results =
				{
					{name='guts', amount = 3},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-pha',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-phadai.png",
			icon_size = 64,
		},
		--meat phadai rendering
		{
			ingredients =
				{
					{name='blood-caged-phadai',remove_item = true},
					{name='meat-caged-phadai', amount=1},
				},
			results =
				{
					{name='blood', amount = 30},
					{name='meat', amount =12},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-pha',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-phadai.png",
			icon_size = 64,
        },
        --skin phadai rendering
		{
			ingredients =
				{
					{name='meat-caged-phadai',remove_item = true},
					{name='skin-caged-phadai', amount=1},
				},
			results =
				{
					{name='meat', amount = 1},
					{name='skin', amount =8},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-pha',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-phadai.png",
			icon_size = 64,
        },
        --fat phadai rendering
		{
			ingredients =
				{
					{name='skin-caged-phadai',remove_item = true},
					{name='fat-caged-phadai', amount=1},
				},
			results =
				{
					{name='skin', amount = 1},
					{name='mukmoux-fat', amount =7},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-pha',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-phadai.png",
			icon_size = 64,
		},
	}
}
