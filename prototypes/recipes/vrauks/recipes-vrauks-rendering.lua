local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering-base',
	category = 'vrauk-rendering',
	--module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='vrauks', amount=3},
				},
			results =
				{
					{name='meat', amount = 3},
					{name='formic-acid', amount =200},
					{name='biomass', amount=4},
				},
			crafting_speed = 10,
			name = 'Smashing Vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-vrauks.png",
			icon_size = 64,
		}
	}
}

log(serpent.block(data.raw.recipe['Smashing Vrauks']))

fun.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-vrauks',
	--module_limitations = 'vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='vrauks',remove_item = true},
					{name='caged-vrauks', amount=1},
				},
			results =
				{
					--{name='bones', probability = 0.3, amount_min =1, amount_max =4},
					{name='meat', probability = 0.4, amount_min =1, amount_max =2},
					{name='chitin', probability = 0.2, amount_min =1, amount_max =1},
					--{name='mukmoux-fat', probability = 0.3, amount_min =1, amount_max =1},
					{name='guts', probability = 0.4, amount_min =1, amount_max =2},
					{name='formic-acid', amount =200},
					{name='cage', amount=1},
					{name='brain', probability = 0.4, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'Full Render Vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-vrauks.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-vrauks', amount=1},
				},
			results =
				{
                    --{name='bones', remove_item = true},
					{name='meat', remove_item = true},
					{name='chitin', remove_item = true},
					--{name='mukmoux-fat', remove_item = true},
					{name='guts', remove_item = true},
					{name='formic-acid', remove_item = true},
					{name='brain', remove_item = true},
					{name='meat', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-vrauks', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-vrauks', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='chitin', amount =1},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks chithin',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
			icon_size = 64,
		},
		--guts
		{
			ingredients =
				{
					--{name='caged-vrauks', amount=1},
				},
			results =
				{
					{name='chitin', remove_item = true},
					{name='guts', amount =2},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks guts',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-01.png",
			icon_size = 64,
		},
		--formic-acid
		{
			ingredients =
				{
					--{name='caged-vrauks', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='formic-acid', amount =400},
				},
			crafting_speed = 15,
			tech = 'advanced-rendering',
			name = 'Extract Vrauks Formic Acid',
			icon = "__pyalienlifegraphics__/graphics/icons/formic-acid.png",
			icon_size = 64,
		},
		--brain vrauks rendering
		{
			ingredients =
				{
					{name='caged-vrauks',remove_item = true},
					{name='brain-caged-vrauks', amount=1},
				},
			results =
				{
					{name='formic-acid', remove_item = true},
					{name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-vrauks.png",
			icon_size = 64,
		},
		--meat vrauks rendering
		{
			ingredients =
				{
					{name='brain-caged-vrauks',remove_item = true},
					{name='meat-caged-vrauks', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-vrauks.png",
			icon_size = 64,
		},
		--guts vrauks rendering
		{
			ingredients =
				{
					{name='meat-caged-vrauks',remove_item = true},
					{name='guts-caged-vrauks', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='guts', amount =11},
				},
			crafting_speed = 15,
			tech = 'antitumor',
			name = 'Extract guts from Improved Vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-vrauks.png",
			icon_size = 64,
		},
		--skin vrauks rendering
		{
			ingredients =
				{
					{name='guts-caged-vrauks',remove_item = true},
					{name='skin-caged-vrauks', amount=1},
				},
			results =
				{
					{name='guts', remove_item = true},
					{name='chitin', amount =15},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract skin from Improved Vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin-caged-vrauks.png",
			icon_size = 64,
		},
	}
}
