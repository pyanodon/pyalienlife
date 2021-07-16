local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-trits',
	--module_limitations = 'trits',
	subgroup = 'py-alienlife-trits',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='trits', amount=1},
				},
			results =
				{
					{name='bones', probability = 0.3, amount_min =1, amount_max =4},
					{name='meat', probability = 0.4, amount_min =1, amount_max =4},
					{name='skin', probability = 0.4, amount_min =1, amount_max =3},
					{name='mukmoux-fat', probability = 0.4, amount_min =2, amount_max =5},
					{name='guts', probability = 0.4, amount_min =1, amount_max =4},
					{name='photophore', probability = 0.2, amount_min =1, amount_max =2},
					{name='blood', amount =60},
					--{name='cage', amount=1},
					{name='brain', probability = 0.4, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'trits',
			name = 'Full Render Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-trits.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='trits', amount=1},
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
					{name='photophore', remove_item = true},
					{name='meat', amount =6},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='trits', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='trits', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='skin', amount =3},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits skin',
			icon = "__pyalienlifegraphics__/graphics/icons/skin.png",
			icon_size = 32,
		},
		--bones
		{
			ingredients =
				{
					--{name='trits', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='bones', amount =4},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='trits', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='guts', amount =4},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--blood
		{
			ingredients =
				{
					--{name='trits', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =80},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits blood',
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--fat
		{
			ingredients =
				{
					--{name='trits', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='mukmoux-fat', amount =7},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits lard',
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--photophore
		{
			ingredients =
				{
					--{name='trits', amount=1},
				},
			results =
				{
					{name='mukmoux-fat', remove_item = true},
					{name='photophore', amount =2},
				},
			crafting_speed = 15,
			tech = 'trits',
			name = 'Extract Trits Photophores',
			icon = "__pyalienlifegraphics__/graphics/icons/photophore.png",
			icon_size = 64,
		},
		--brain trits rendering
		{
			ingredients =
				{
					{name='trits',remove_item = true},
					{name='brain-trits', amount=1},
				},
			results =
				{
					{name='photophore', remove_item = true},
					{name='brain', amount =5},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-trits.png",
			icon_size = 64,
		},
		--bone trits rendering
		{
			ingredients =
				{
					{name='brain-trits',remove_item = true},
					{name='bone-trits', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =14},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-trits.png",
			icon_size = 64,
		},
		--meat trits rendering
		{
			ingredients =
				{
					{name='bone-trits',remove_item = true},
					{name='meat-trits', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='meat', amount =15},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-trits.png",
			icon_size = 64,
		},
		--guts trits rendering
		{
			ingredients =
				{
					{name='meat-trits',remove_item = true},
					{name='guts-trits', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', amount =15},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-trits.png",
			icon_size = 64,
		},
		--blood trits rendering
		{
			ingredients =
				{
					{name='guts-trits',remove_item = true},
					{name='blood-trits', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='blood', amount =200},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-trits.png",
			icon_size = 64,
		},
		--skin trits rendering
		{
			ingredients =
				{
					{name='blood-trits',remove_item = true},
					{name='skin-trits', amount=1},
				},
			results =
				{
					{name='blood', remove_item = true},
					{name='skin', amount =13},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-trits.png",
			icon_size = 64,
		},
		--fat trits rendering
		{
			ingredients =
				{
					{name='skin-trits',remove_item = true},
					{name='fat-trits', amount=1},
				},
			results =
				{
					{name='skin', remove_item = true},
					{name='mukmoux-fat', amount =30},
				},
			crafting_speed = 15,
			tech = 'orexigenic',
			name = 'Extract fat from Improved Trits',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-trits.png",
			icon_size = 64,
		},
	}
}
