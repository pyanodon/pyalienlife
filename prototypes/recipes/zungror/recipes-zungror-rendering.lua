local fun = require("prototypes/functions/functions")


--I have no idea how to use this new system to code the slaugter recipes



------------------RENDERING------------------
--[[
fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-zungror',
	--module_limitations = 'zungror',
	subgroup = 'py-alienlife-zungror',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='zungror', amount=1},
				},
			results =
				{
					--{name='bones', probability = 0.5, amount_min =1, amount_max =2},
					{name='meat', probability = 0.5, amount_min =1, amount_max =6},
					{name='skin', probability = 0.4, amount_min =1, amount_max =4},
					{name='mukmoux-fat', probability = 0.5, amount_min =1, amount_max =5},
					{name='guts', probability = 0.4, amount_min =1, amount_max =6},
					{name='arthropod-blood', amount =80},
					{name='venon-gland', probability = 0.2, amount_min =1, amount_max =1},
					{name='brain', probability = 0.3, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'zungror',
			name = 'Full Render zungror',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-zungror.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{

				},
			results =
				{
					--{name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='venon-gland', remove_item = true},
                    {name='meat', amount =6},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='arthropod-blood', remove_item = true},
					{name='brain', remove_item = true},
				},
			crafting_speed = 15,
			tech = 'zungror-mk02',
			name = 'Extract zungror Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='zungror', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'zungror-mk02',
			name = 'Extract zungror brain',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--venon
		{
			ingredients =
				{
					--{name='zungror', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='venon-gland', amount =1},
				},
			crafting_speed = 15,
			tech = 'zungror-mk02',
			name = 'Extract zungror´s Venom Gland',
			icon = "__pyalienlifegraphics__/graphics/icons/venon-gland.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='zungror', amount=1},
				},
			results =
				{
					{name='venon-gland', remove_item = true},
					{name='skin', amount =4},
				},
			crafting_speed = 15,
			tech = 'zungror-mk02',
			name = 'Extract zungror skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--guts
		{
			ingredients =
				{
					--{name='zungror', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='guts', amount =6},
				},
			crafting_speed = 15,
			tech = 'zungror-mk02',
			name = 'Extract zungror guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='zungror', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='arthropod-blood', amount =100},
				},
			crafting_speed = 15,
			tech = 'zungror-mk02',
			name = 'Extract zungror blood',
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--fat
		{
			ingredients =
				{
					--{name='zungror', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='mukmoux-fat', amount =5},
				},
			crafting_speed = 15,
			tech = 'zungror-mk02',
			name = 'Extract zungror lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--brain zungror rendering
		{
			ingredients =
				{
					{name='zungror',remove_item = true},
					{name='brain-zungror', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved zungrores',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-zungror.png",
			icon_size = 64,
		},
		--guts zungror rendering
		{
			ingredients =
				{
					{name='brain-zungror',remove_item = true},
					{name='guts-zungror', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='guts', amount =20},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved zungrores',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-zungror.png",
			icon_size = 64,
		},
		--blood zungror rendering
		{
			ingredients =
				{
					{name='guts-zungror',remove_item = true},
					{name='blood-zungror', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='arthropod-blood', amount =230},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract Arthropod blood from Improved zungrores',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-zungror.png",
			icon_size = 64,
		},
		--skin zungror rendering
		{
			ingredients =
				{
					{name='blood-zungror',remove_item = true},
					{name='skin-zungror', amount=1},
				},
			results =
				{
					{name='arthropod-blood', remove_item = true},
					{name='skin', amount =13},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved zungrores',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-zungror.png",
			icon_size = 64,
		},
		--fat zungror rendering
		{
			ingredients =
				{
					{name='skin-zungror',remove_item = true},
					{name='fat-zungror', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =23},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved zungrores',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-zungror.png",
			icon_size = 64,
		},
		--meat zungror rendering
		{
			ingredients =
				{
					{name='fat-zungror',remove_item = true},
					{name='meat-zungror', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='meat', amount =13},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved zungrores',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-zungror.png",
			icon_size = 64,
		},
	}
}
--]]