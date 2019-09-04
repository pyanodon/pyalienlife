local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'dual-example',
	baseitem = 'caged-ulric',
    category = 'ulric',
	outcategory = 'slaughterhouse',
	--module_limitations = 'ulric',
	singlerecipe = false,
	module_limitations = "ulric",
	subgroup = 'py-alienlife-ulric',
    order = 'a',
    mats =
	{
		{
			ingredients =
				{
					{'b'},
					{'i'},
				},
			results =
				{
					{'b','10'}
				},
				crafting_speed = 10,
				tech = 'organic-breeding'
		},
	}
}
