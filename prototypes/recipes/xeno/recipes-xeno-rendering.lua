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
					{name='bones', amount =3},
					{name='meat', amount =3},
					{name='chitin', amount =5},
					{name='sulfuric-acid', amount =60},
					{name='cage', amount=1},
					{name='brain', amount =1},
				},
			crafting_speed = 30,
			tech = 'xeno',
			name = 'full-render-xenos',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-xeno.png",
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
					{name='cognition-osteochain', amount = 1},
					{name='brain', amount =4},
				},
			crafting_speed = 15,
			tech = 'nanochondria',
			name = 'ex-bra-xeno',
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
					{name='brain', amount = 1},
					{name='bones', amount =11},
				},
			crafting_speed = 15,
			tech = 'bmp',
			name = 'ex-bro-xeno',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-xeno.png",
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
					{name='bones', amount = 3},
					{name='sulfuric-acid', amount =200},
				},
			crafting_speed = 15,
			tech = 'recombinant-ery',
			name = 'xe-blo-xeno',
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
					{name='sulfuric-acid', amount = 60},
					{name='chitin', amount =23},
				},
			crafting_speed = 15,
			tech = 'reca',
			name = 'ex-chi-xeno',
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
					{name='chitin', amount = 5},
					{name='meat', amount =10},
				},
			crafting_speed = 15,
			tech = 'anabolic-rna',
			name = 'ex-me-xeno',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-xeno.png",
			icon_size = 64,
		},
	}
}
