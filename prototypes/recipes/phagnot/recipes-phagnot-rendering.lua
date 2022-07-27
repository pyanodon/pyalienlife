local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-phagnot',
	--module_limitations = 'phagnot',
	subgroup = 'py-alienlife-phagnot',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-phagnot', amount=1},
				},
			results =
				{
					{name='bones', amount =6},
					{name='meat', amount =2},
					{name='skin', amount =1},
                    {name='guts', amount =1},
                    {name='gas-bladder', amount =1},
					{name='blood', amount =20},
					{name='cage', amount=1},
					{name='brain', amount =1},
				},
			crafting_speed = 30,
			tech = 'phagnot',
			name = 'full-render-phagnots',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-phagnot.png",
			icon_size = 64,
		},
		--brain phagnot rendering
		{
			ingredients =
				{
					{name='caged-phagnot',remove_item = true},
					{name='brain-caged-phagnot', amount=1},
				},
			results =
				{
					{name = 'geostabilization-tissue', amount = 1},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-phag',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-phagnot.png",
			icon_size = 64,
		},
		--bone phagnot rendering
		{
			ingredients =
				{
					{name='brain-caged-phagnot',remove_item = true},
					{name='bone-caged-phagnot', amount=1},
				},
			results =
				{
					{name='geostabilization-tissue',remove_item = true},
					{name='brain', amount = 1},
					{name='bones', amount =30},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bon-phag',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-phagnot.png",
			icon_size = 64,
		},
		--guts phagnot rendering
		{
			ingredients =
				{
					{name='bone-caged-phagnot',remove_item = true},
					{name='guts-caged-phagnot', amount=1},
				},
			results =
				{
					{name='bones', amount = 6},
					{name='gas-bladder', amount =2},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-phag',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-phagnot.png",
			icon_size = 64,
		},
		--blood phagnot rendering
		{
			ingredients =
				{
					{name='guts-caged-phagnot',remove_item = true},
					{name='blood-caged-phagnot', amount=1},
				},
			results =
				{
					{name='guts', amount = 1},
					{name='gas-bladder', amount =1},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-phag',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-phagnot.png",
			icon_size = 64,
		},
		--skin phagnot rendering
		{
			ingredients =
				{
					{name='blood-caged-phagnot',remove_item = true},
					{name='skin-caged-phagnot', amount=1},
				},
			results =
				{
					{name='blood', amount = 20},
					{name='skin', amount =7},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-ski-phag',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-phagnot.png",
			icon_size = 64,
		},
		--meat phagnot rendering
		{
			ingredients =
				{
					{name='skin-caged-phagnot',remove_item = true},
					{name='meat-caged-phagnot', amount=1},
				},
			results =
				{
					{name='skin', amount = 1},
					{name='meat', amount =11},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-phag',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-phagnot.png",
			icon_size = 64,
		},
	}
}
