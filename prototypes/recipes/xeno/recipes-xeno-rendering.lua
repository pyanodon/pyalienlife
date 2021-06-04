local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering-xeno',
	category = 'slaughterhouse-xeno',
	--module_limitations = 'xeno',
	subgroup = 'py-alienlife-xeno',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-xeno', amount=1},
				},
			results =
				{
					{name='bones', probability = 0.45, amount_min =1, amount_max =3},
					{name='meat', probability = 0.4, amount_min =1, amount_max =3},
					{name='chitin', probability = 0.4, amount_min =1, amount_max =4},
					--{name='mukmoux-fat', probability = 0.2, amount_min =1, amount_max =1},
					--{name='guts', probability = 0.4, amount_min =1, amount_max =2},
					{name='sulfuric-acid', amount =60},
					{name='cage', amount=1},
					{name='brain', probability = 0.5, amount_min =1, amount_max =1},
				},
			crafting_speed = 30,
			tech = 'xeno',
			name = 'Full Render Xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-xeno.png",
			icon_size = 64,
		},
		--meat
		{
			ingredients =
				{
					--{name='caged-xeno', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='chitin', remove_item = true},
					{name='sulfuric-acid', remove_item = true},
					{name='brain', remove_item = true},
					{name='meat', remove_item = true},
					{name='meat', amount =4},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract Xeno Meat',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",
			icon_size = 64,
		},
		--brain
		{
			ingredients =
				{
					--{name='caged-xeno', amount=1},
				},
			results =
				{
					{name='meat', remove_item = true},
					{name='brain', amount =1},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract Xeno brains',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-04.png",
			icon_size = 64,
		},
		--skin
		{
			ingredients =
				{
					--{name='caged-xeno', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='chitin', amount =4},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract xeno chitin',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",
			icon_size = 64,
		},
		--bones
		{
			ingredients =
				{
					--{name='caged-xeno', amount=1},
				},
			results =
				{
					{name='chitin', remove_item = true},
					{name='bones', amount =3},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract Xeno bones',
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--Sulfuric acid
		{
			ingredients =
				{
					--{name='caged-xeno', amount=1},
				},
			results =
				{
					{name='bones', remove_item = true},
					{name='sulfuric-acid', amount =80},
				},
			crafting_speed = 15,
			tech = 'xeno',
			name = 'Extract Xeno blood',
			icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
			icon_size = 64,
		},
		--brain xeno rendering
		{
			ingredients =
				{
					{name='caged-xeno',remove_item = true},
					{name='brain-xeno', amount=1},
				},
			results =
				{
					{name='sulfuric-acid', remove_item = true},
					{name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'Extract brains from Improved Xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-xeno.png",
			icon_size = 64,
		},
		--bone xeno rendering
		{
			ingredients =
				{
					{name='brain-xeno',remove_item = true},
					{name='bone-xeno', amount=1},
				},
			results =
				{
					{name='brain', remove_item = true},
					{name='bones', amount =11},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bones from Improved xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-xeno.png",
			icon_size = 64,
		},
		--bonemeal xeno rendering
		{
			ingredients =
				{

				},
			results =
				{
					{name='bones', remove_item = true},
					{name='bonemeal', amount =13},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'Extract bonemeal from Improved Xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/bonemeal.png",
			icon_size = 64,
		},
		--sulfuric acid xeno rendering
		{
			ingredients =
				{
					{name='bone-xeno',remove_item = true},
					{name='sulfuric-xeno', amount=1},
				},
			results =
				{
					{name='bonemeal', remove_item = true},
					{name='sulfuric-acid', amount =200},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'Extract blood from Improved Xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/sulfuric-xeno.png",
			icon_size = 64,
		},
		--skin xeno rendering
		{
			ingredients =
				{
					{name='sulfuric-xeno',remove_item = true},
					{name='chitin-xeno', amount=1},
				},
			results =
				{
					{name='sulfuric-acid', remove_item = true},
					{name='chitin', amount =23},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'Extract Chitin from Improved xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin-xeno.png",
			icon_size = 64,
		},
		--meat xeno rendering
		{
			ingredients =
				{
					{name='chitin-xeno',remove_item = true},
					{name='meat-xeno', amount=1},
				},
			results =
				{
					{name='chitin', remove_item = true},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'Extract meat from Improved Xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-xeno.png",
			icon_size = 64,
		},
	}
}
