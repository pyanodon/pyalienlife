local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-korlex',
	--module_limitations = 'korlex',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =3},
					{name='meat', probability = 0.4,amount_min =1,amount_max =3},
					{name='skin', probability = 0.5,amount_min =2,amount_max =5},
					{name='mukmoux-fat', probability = 0.5,amount_min =1,amount_max =3},
					{name='guts', probability = 0.4,amount_min =1,amount_max =2},
					{name='blood', amount =20},
					{name='cage',amount=1},
					{name='brain', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'korlex',
			name = 'Full Render Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-korlex.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='meat', amount =3},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex brain',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='skin', amount =5},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='bones', amount =3},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =2},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =30},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='caged-korlex',amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='mukmoux-fat', amount =3},
				},
			crafting_speed = 15,
			tech = 'korlex',
			name = 'Extract Korlex lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
    }
}

--[[
		--brain korlex rendering
		{
			ingredients =
				{
					{name='caged-korlex',remove_item = true},
					{name='brain-caged-korlex',amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-korlex.png",
			icon_size = 64,
		},
		--bone korlex rendering
		{
			ingredients =
				{
					{name='brain-caged-korlex',remove_item = true},
					{name='bone-caged-korlex',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =9},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-korlex.png",
			icon_size = 64,
		},
		--meat korlex rendering
		{
			ingredients =
				{
					{name='bone-caged-korlex',remove_item = true},
					{name='meat-caged-korlex',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-korlex.png",
			icon_size = 64,
		},
		--guts korlex rendering
		{
			ingredients =
				{
					{name='meat-caged-korlex',remove_item = true},
					{name='guts-caged-korlex',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', amount =7},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-korlex.png",
			icon_size = 64,
		},
		--blood korlex rendering
		{
			ingredients =
				{
					{name='guts-caged-korlex',remove_item = true},
					{name='blood-caged-korlex',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-korlex.png",
			icon_size = 64,
		},
		--skin korlex rendering
		{
			ingredients =
				{
					{name='blood-caged-korlex',remove_item = true},
					{name='skin-caged-korlex',amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', amount =13},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-korlex.png",
			icon_size = 64,
		},
		--fat korlex rendering
		{
			ingredients =
				{
					{name='skin-caged-korlex',remove_item = true},
					{name='fat-caged-korlex',amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =8},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved Korlex',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-korlex.png",
			icon_size = 64,
		},
	}
}
]]--
