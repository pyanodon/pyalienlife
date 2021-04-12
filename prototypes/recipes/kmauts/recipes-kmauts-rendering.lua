local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
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
					{name='meat', probability = 0.3, amount_min =1, amount_max =2},
                    {name='guts', probability = 0.3, amount_min =1, amount_max =2},
                    {name='mukmoux-fat', probability = 0.2, amount_min =1, amount_max =2},
					{name='tendon', probability = 0.3, amount_min =1, amount_max =1},
					{name='arthropod-blood', amount =10},
					{name='cage', amount=1},
					{name='brain', probability = 0.3, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'kmauts',
			name = 'Full Render kmauts',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-kmauts.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-kmauts', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
                    {name='guts', remove_item = true},
                    {name='mukmoux-fat', remove_item = true},
					{name='tendon', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='meat', amount =2},
				},
			crafting_speed = 15,
			tech = 'kmauts',
			name = 'Extract kmauts Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-kmauts', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'kmauts',
			name = 'Extract kmauts brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--tendon
		{
			ingredients =
				{
					--{name='caged-kmauts', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='tendon', amount =2},
				},
			crafting_speed = 15,
			tech = 'kmauts',
			name = 'Extract kmauts tendons',
			icon = "__pyalienlifegraphics__/graphics/icons/tendon.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-kmauts', amount=1},
				},
			results =
				{
					{name='tendon', remove_item = true},
					{name='guts', amount =2},
				},
			crafting_speed = 15,
			tech = 'kmauts',
			name = 'Extract kmauts guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-kmauts', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='arthropod-blood', amount =20},
				},
			crafting_speed = 15,
			tech = 'kmauts',
			name = 'Extract kmauts blood',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},

		--fat
		{
			ingredients =
				{
					--{name='caged-kmauts', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='mukmoux-fat', amount =2},
				},
			crafting_speed = 15,
			tech = 'kmauts',
			name = 'Extract kmauts lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
    }
}

--[[
		--brain kmauts rendering
		{
			ingredients =
				{
					{name='caged-kmauts',remove_item = true},
					{name='brain-caged-kmauts', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved kmauts',
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
					{name='brain', remove_item = true},
					{name='guts', amount =7},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved kmauts',
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
					{name='guts', remove_item = true},
					{name='arthropod-blood', amount =80},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved kmauts',
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
					{name='arthropod-blood', remove_item = true},
					{name='meat', amount =8},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved kmauts',
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
					{name='meat', remove_item = true},
					{name='mukmoux-fat', amount =7},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved kmauts',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-kmauts.png",
			icon_size = 64,
		},
	}
}
]]--
