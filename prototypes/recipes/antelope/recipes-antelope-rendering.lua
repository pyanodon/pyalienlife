local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

FUN.autorecipes {
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
					{name='bones', amount = 5},
					{name='meat', amount = 4},
					{name='skin', amount = 3},
					{name='mukmoux-fat', amount = 3},
					{name='guts', amount = 5},
					{name='brain', amount = 2},
					{name='cage-antelope', amount=1},
					{name='strangelets', amount = 1},
				},
			crafting_speed = 40,
			tech = 'schrodinger-antelope',
			name = 'full-render-antelope',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-antelope.png",
			icon_size = 64,
		},
	}
}
