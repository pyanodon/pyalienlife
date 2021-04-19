local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
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
					{name='bones', probability = 0.5, amount_min =1, amount_max =6},
					{name='meat', probability = 0.1, amount_min =1, amount_max =2},
					{name='skin', probability = 0.2, amount_min =1, amount_max =1},
                    {name='guts', probability = 0.3, amount_min =1, amount_max =1},
                    {name='gas-bladder', probability = 0.4, amount_min =1, amount_max =1},
					{name='blood', amount =20},
					{name='cage', amount=1},
					{name='brain', probability = 0.4, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'phagnot',
			name = 'Full Render phagnots',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-phagnot.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-phagnot', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='gas-bladder', remove_item = true},
					{name='guts', remove_item = true},
					{name='blood', remove_item = true},
					{name='brain', remove_item = true},
					{name='meat', amount =2},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-phagnot', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-phagnot', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='skin', amount =1},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-phagnot', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='bones', amount =6},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-phagnot', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =1},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-phagnot', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =40},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--Gas Bladder
		{
			ingredients =
				{
					--{name='caged-phagnot', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='gas-bladder', amount =1},
				},
			crafting_speed = 15,
			tech = 'phagnot',
			name = 'Extract phagnot Gas bladder',
			icon = "__pyalienlifegraphics__/graphics/icons/gas-bladder.png",
			icon_size = 64,
		},
	}
}

--[[
		--brain phagnot rendering
		{
			ingredients =
				{
					{name='caged-phagnot',remove_item = true},
					{name='brain-caged-phagnot', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='gas-bladder', remove_item = true},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved phagnots',
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
					{name='brain', remove_item = true},
					{name='bones', amount =30},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved phagnots',
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
					{name='bones', remove_item = true},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved phagnots',
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
					{name='guts', remove_item = true},
					{name='blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved phagnots',
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
					{name='blood', remove_item = true},
					{name='skin', amount =7},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved phagnots',
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
					{name='skin', remove_item = true},
					{name='meat', amount =11},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved phagnots',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-phagnot.png",
			icon_size = 64,
		},
	}
}
]]--
