local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-simik',
	--module_limitations = 'simik',
	subgroup = 'py-alienlife-simik',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-simik', amount=1},
				},
			results =
				{
					{name='bones', probability = 0.1, amount_min =1, amount_max =4},
					{name='meat', probability = 0.3, amount_min =2, amount_max =5},
                    {name='skin', probability = 0.2, amount_min =1, amount_max =2},
                    {name='chitin', probability = 0.2, amount_min =1, amount_max =1},
					{name='mukmoux-fat', probability = 0.2, amount_min =1, amount_max =1},
                    {name='guts', probability = 0.4, amount_min =1, amount_max =1},
                    {name='keratin', probability = 0.1, amount_min =1, amount_max =1},
					{name='simik-blood', amount =30},
					{name='cage', amount=1},
					{name='brain', probability = 0.3, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/rendering-simik.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{

				},
			results =
				{
                    {name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='skin', remove_item = true},
					{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='simik-blood', remove_item = true},
                    {name='brain', remove_item = true},
                    {name='keratin', remove_item = true},
                    {name='chitin', remove_item = true},
					{name='meat', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-simik', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-simik', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='skin', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
        },
        --chitin
		{
			ingredients =
				{
					--{name='caged-simik', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='chitin', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik chitin',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
			icon_size = 64,
        },
        --keratin
		{
			ingredients =
				{
					--{name='caged-simik', amount=1},
				},
			results =
				{
					{name='chitin', remove_item = true},
					{name='keratin', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik keratin',
			icon = "__pyalienlifegraphics2__/graphics/icons/keratin.png",
			icon_size = 64,
        },
		--bones
		{
			ingredients =
				{
					--{name='caged-simik', amount=1},
				},
			results =
				{
					{name='keratin', remove_item = true},
					{name='bones', amount =4},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-simik', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='caged-simik', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='simik-blood', amount =80},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik blood',
			icon = "__pyalienlifegraphics2__/graphics/icons/simik-blood.png",
			icon_size = 64,
		},
		--hot air
		{
			ingredients =
				{
					--{name='caged-simik', amount=1},
				},
			results =
				{
					{name='simik-blood', remove_item = true},
					{name='hot-air', amount =80},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik hot air',
			icon = "__pypetroleumhandlinggraphics__/graphics/icons/hot-air.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='caged-simik', amount=1},
				},
			results =
				{
					{name='hot-air', remove_item = true},
					{name='mukmoux-fat', amount =3},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract simik lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
    }
}

--[[
		--brain simik rendering
		{
			ingredients =
				{
					{name='caged-simik',remove_item = true},
					{name='brain-caged-simik', amount=2},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='brain', amount =6},
					{name='cage', amount = 1}
				},
			crafting_speed = 30,
			tech = 'nanochondria',
			name = 'Extract brains from Improved simiks',
			icon = "__pyalienlifegraphics2__/graphics/icons/brain-caged-simik.png",
			icon_size = 64,
		},
		--bone simik rendering
		{
			ingredients =
				{
					{name='brain-caged-simik',remove_item = true},
					{name='bone-caged-simik', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =9},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/bone-caged-simik.png",
			icon_size = 64,
		},
		--meat simik rendering
		{
			ingredients =
				{
					{name='bone-caged-simik',remove_item = true},
					{name='meat-caged-simik', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', amount =11},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/meat-caged-simik.png",
			icon_size = 64,
		},
		--guts simik rendering
		{
			ingredients =
				{
					{name='meat-caged-simik',remove_item = true},
					{name='guts-caged-simik', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', amount =8},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/guts-caged-simik.png",
			icon_size = 64,
		},
		--blood simik rendering
		{
			ingredients =
				{
					{name='guts-caged-simik',remove_item = true},
					{name='blood-caged-simik', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='simik-blood', amount =150},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/blood-caged-simik.png",
			icon_size = 64,
		},
		--hot air simik rendering
		{
			ingredients =
				{
					{name='blood-caged-simik',remove_item = true},
					{name='hotair-caged-simik', amount=1},
				},
			results =
				{
					{name='simik-blood', remove_item = true},
					{name='hot-air', amount =250},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract hot-air from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/hot-air-caged-simik.png",
			icon_size = 64,
		},
		--skin simik rendering
		{
			ingredients =
				{
					{name='hotair-caged-simik',remove_item = true},
					{name='skin-caged-simik', amount=1},
				},
			results =
				{
					{name='hot-air', remove_item = true},
					{name='skin', amount =8},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/skin-caged-simik.png",
			icon_size = 64,
		},
		--fat simik rendering
		{
			ingredients =
				{
					{name='skin-caged-simik',remove_item = true},
					{name='fat-caged-simik', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =8},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/fat-caged-simik.png",
			icon_size = 64,
		},
		--chitin simik rendering
		{
			ingredients =
				{
					{name='fat-caged-simik',remove_item = true},
					{name='chitin-caged-simik', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='chitin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract chitin from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/chitin-caged-simik.png",
			icon_size = 64,
		},
		--keratin simik rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='chitin', remove_item = true},
					{name='keratin', amount =10},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract keratin from Improved simik',
			icon = "__pyalienlifegraphics2__/graphics/icons/keratin-caged-simik.png",
			icon_size = 64,
		},
	}
}
]]--
