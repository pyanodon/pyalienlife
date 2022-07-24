local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
    name = 'rendering',
	category = "slaughterhouse-kmauts",
	--module_limitations = 'kmauts',
	subgroup = 'py-alienlife-kmauts',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-kmauts', amount=1},
				},
			results =
				{
					{name='meat',  amount =2},
                    {name='guts',  amount =2},
                    {name='mukmoux-fat',  amount =2},
					{name='tendon',  amount =1},
					{name='arthropod-blood', amount =10},
					{name='cage', amount=1},
					{name='brain',  amount =1},
				},
			crafting_speed = 30,
			tech = 'kmauts',
			name = 'full-render-kmauts',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-kmauts.png",
			icon_size = 64,
		},
		--brain kmauts rendering
		{
			ingredients =
				{
					{name='caged-kmauts',remove_item = true},
					{name='brain-caged-kmauts', amount=1},
				},
			results =
				{
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-kma',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-kmauts.png",
			icon_size = 64,
		},
		--guts kmauts rendering
		{
			ingredients =
				{
					{name='brain-caged-kmauts',remove_item = true},
					{name='guts-caged-kmauts', amount=1},
				},
			results =
				{
					{name='brain', amount = 1},
					{name='guts', amount =7},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'ex-gut-kma',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-kmauts.png",
			icon_size = 64,
		},
		--blood kmauts rendering
		{
			ingredients =
				{
					{name='guts-caged-kmauts',remove_item = true},
					{name='blood-caged-kmauts', amount=1},
				},
			results =
				{
					{name='guts', amount = 2},
					{name='arthropod-blood', amount =80},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'ex-blo-kma',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-kmauts.png",
			icon_size = 64,
		},
		--meat kmauts rendering
		{
			ingredients =
				{
					{name='blood-caged-kmauts',remove_item = true},
					{name='meat-caged-kmauts', amount=1},
				},
			results =
				{
					{name='arthropod-blood', amount = 10},
					{name='meat', amount =8},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-kma',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-kmauts.png",
			icon_size = 64,
        },
		--fat kmauts rendering
		{
			ingredients =
				{
					{name='meat-caged-kmauts',remove_item = true},
					{name='fat-caged-kmauts', amount=1},
				},
			results =
				{
					{name='meat', amount = 2},
					{name='mukmoux-fat', amount =7},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'ex-fat-kma',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-kmauts.png",
			icon_size = 64,
		},
	}
}
