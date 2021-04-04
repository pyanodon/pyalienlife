local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
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
					{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3,amount_min =1,amount_max =2},
					{name='meat', probability = 0.3,amount_min =1,amount_max =3},
                    {name='guts', probability = 0.3,amount_min =1,amount_max =3},
					{name='pelt', probability = 0.1,amount_min =1,amount_max =1},
					{name='dingrit-spike', probability = 0.1,amount_min =1,amount_max =1},
					{name='blood', amount =20},
					{name='cage',amount=1},
					{name='brain', probability = 0.3,amount_min =1,amount_max =1},
				},
			crafting_speed = 30,
			tech = 'dingrits',
			name = 'Full Render dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-dingrits.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='guts', remove_item = true},
					{name='pelt', remove_item = true},
					{name='dingrit-spike', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =2},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =30},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--Pelt
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='pelt', amount =2},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits Pelt',
			icon = "__pyalienlifegraphics__/graphics/icons/pelt.png",
			icon_size = 64,
		},
		--Dingrit Spike
		{
			ingredients =
				{
					--{name='caged-dingrits',amount=1},
				},
			results =
				{
					{name='pelt', remove_item = true},
					{name='dingrit-spike', amount ='*1'},
				},
			crafting_speed = 15,
			tech = 'dingrits',
			name = 'Extract dingrits Spikes',
			icon = "__pyalienlifegraphics__/graphics/icons/dingrit-spike.png",
			icon_size = 64,
		},
		--brain dingrits rendering
		{
			ingredients =
				{
					{name='caged-dingrits',remove_item = true},
					{name='brain-caged-dingrits',amount=1},
				},
			results =
				{
					{name='dingrit-spike', remove_item = true},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-dingrits.png",
			icon_size = 64,
		},
		--bone dingrits rendering
		{
			ingredients =
				{
					{name='brain-caged-dingrits',remove_item = true},
					{name='bone-caged-dingrits',amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =8},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-dingrits.png",
			icon_size = 64,
		},
		--guts dingrits rendering
		{
			ingredients =
				{
					{name='bone-caged-dingrits',remove_item = true},
					{name='guts-caged-dingrits',amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =10},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-dingrits.png",
			icon_size = 64,
		},
		--blood dingrits rendering
		{
			ingredients =
				{
					{name='guts-caged-dingrits',remove_item = true},
					{name='blood-caged-dingrits',amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-dingrits.png",
			icon_size = 64,
		},
		--meat dingrits rendering
		{
			ingredients =
				{
					{name='blood-caged-dingrits',remove_item = true},
					{name='meat-caged-dingrits',amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='meat', amount =7},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-dingrits.png",
			icon_size = 64,
		},
		--skin dingrits rendering
		{
			ingredients =
				{
					{name='meat-caged-dingrits',remove_item = true},
					{name='skin-caged-dingrits',amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='pelt', amount =3},
					{name='cage', amount=1},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract pelt from Improved dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-dingrits.png",
			icon_size = 64,
		},
	}
}
