local fun = require("prototypes/functions/functions")

------------------RENDERING------------------

fun.autorecipes {
    name = 'rendering-antelope',
	category = 'slaughterhouse-antelope',
	--module_limitations = 'antelope',
	subgroup = 'py-alienlife-antelope',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-antelope', amount=1},
				},
			results =
				{
					{name='bones', amount = 4},
					{name='meat', amount = 5},
					{name='skin', amount = 2},
					{name='mukmoux-fat', amount = 2},
					{name='guts', amount = 4},
					{name='brain', amount = 1},
					{name='cage-antelope', amount=1},
					{name='strangelets', amount = 1},
				},
			crafting_speed = 30,
			tech = 'schrodinger-antelope',
			name = 'full-render-antelope',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-antelope.png",
			icon_size = 64,
		},
	}
}
