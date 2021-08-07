local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
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
					{name='bones', probability = 0.3, amount_min =1, amount_max =3},
					{name='meat', probability = 0.3, amount_min =1, amount_max =1},
                    {name='guts', probability = 0.3, amount_min =1, amount_max =3},
                    {name='mukmoux-fat', probability = 0.1, amount_min =1, amount_max =1},
                    {name='skin', probability = 0.1, amount_min =1, amount_max =1},
					{name='carapace', probability = 0.3, amount_min =1, amount_max =1},
					{name='blood', amount =30},
					{name='cage', amount=1},
					{name='brain', probability = 0.5, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'phadai',
			name = 'Full Render phadais',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-phadai.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-phadai', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='meat', remove_item = true},
					{name='guts', remove_item = true},
					{name='pelt', remove_item = true},
					{name='carapace', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-phadai', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-phadai', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =2},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-phadai', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =3},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-phadai', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =30},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='caged-phadai', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='mukmoux-fat', amount =1},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai Fat',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--Carapace
		{
			ingredients =
				{
					--{name='caged-phadai', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='carapace', amount = 2},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai Carapace',
			icon = "__pyalienlifegraphics__/graphics/icons/carapace.png",
			icon_size = 64,
		},
		--Skin
		{
			ingredients =
				{
					--{name='caged-phadai', amount=1},
				},
			results =
				{
					{name='carapace', remove_item = true},
					{name='skin', amount =2},
				},
			crafting_speed = 15,
			tech = 'phadai',
			name = 'Extract phadai Skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
    }
}

--[[
		--brain phadai rendering
		{
			ingredients =
				{
					{name='caged-phadai',remove_item = true},
					{name='brain-caged-phadai', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='brain', amount =6},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved phadais',
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
					{name='brain', remove_item = true},
					{name='bones', amount =10},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved phadais',
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
					{name='bones', remove_item = true},
					{name='guts', amount =12},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved phadais',
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
					{name='guts', remove_item = true},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved phadais',
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
					{name='blood', remove_item = true},
					{name='meat', amount =12},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved phadais',
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
					{name='meat', remove_item = true},
					{name='skin', amount =8},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved phadais',
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
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =7},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved phadais',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-phadai.png",
			icon_size = 64,
		},
	}
}
]]--
