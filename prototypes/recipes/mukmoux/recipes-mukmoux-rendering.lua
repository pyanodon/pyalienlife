local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-mukmoux',
	--module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-mukmoux', amount=1},
				},
			results =
				{
					{name='bones', probability = 0.4, amount_min =1, amount_max =2},
					{name='meat', probability = 0.4, amount_min =1, amount_max =4},
					{name='skin', probability = 0.4, amount_min =1, amount_max =4},
					{name='mukmoux-fat', probability = 0.4, amount_min =1, amount_max =3},
					{name='guts', probability = 0.4, amount_min =1, amount_max =4},
					{name='blood', amount =50},
					{name='cage', amount=1},
					{name='brain', probability = 0.4, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'mukmoux',
			name = 'Full Render Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-mukmoux.png",
			icon_size = 64,
		},
		--bonemeal
		{
			ingredients =
				{
					--{name='caged-mukmoux', amount=1},
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
					{name='bonemeal', amount = 4},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Mukmouxs to Bonemeal',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-mukmoux', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='meat', amount =5},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-mukmoux', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-mukmoux', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='skin', amount =4},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-mukmoux', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='bones', amount =3},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-mukmoux', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =8},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-mukmoux', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =130},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='caged-mukmoux', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='mukmoux-fat', amount =5},
				},
			crafting_speed = 15,
			tech = 'mukmoux',
			name = 'Extract Mukmoux lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
	}
}

--[[
		--brain mukmoux rendering
		{
			ingredients =
				{
					{name='caged-mukmoux',remove_item = true},
					{name='brain-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-mukmoux.png",
			icon_size = 64,
		},
		--bone mukmoux rendering
		{
			ingredients =
				{
					{name='brain-caged-mukmoux',remove_item = true},
					{name='bone-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =13},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-mukmoux.png",
			icon_size = 64,
		},
		--bonemeal mukmouc rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='bones', remove_item = true},
					{name='bonemeal', amount =16},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bonemeal from Improved Mukmoux',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal-caged-mukmoux.png",
			icon_size = 64,
		},
		--meat mukmoux rendering
		{
			ingredients =
				{
					{name='bone-caged-mukmoux',remove_item = true},
					{name='meat-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='meat', amount =24},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-mukmoux.png",
			icon_size = 64,
		},
		--guts mukmoux rendering
		{
			ingredients =
				{
					{name='meat-caged-mukmoux',remove_item = true},
					{name='guts-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', amount =20},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-mukmoux.png",
			icon_size = 64,
		},
		--blood mukmoux rendering
		{
			ingredients =
				{
					{name='guts-caged-mukmoux',remove_item = true},
					{name='blood-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =250},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-mukmoux.png",
			icon_size = 64,
		},
		--skin mukmoux rendering
		{
			ingredients =
				{
					{name='blood-caged-mukmoux',remove_item = true},
					{name='skin-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-mukmoux.png",
			icon_size = 64,
		},
		--fat mukmoux rendering
		{
			ingredients =
				{
					{name='skin-caged-mukmoux',remove_item = true},
					{name='fat-caged-mukmoux', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =20},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved Mukmouxs',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}
]]--
