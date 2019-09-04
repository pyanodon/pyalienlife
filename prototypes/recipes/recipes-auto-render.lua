local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'dual-example',
	baseitem = 'caged-ulric',
    category = 'ulric',
	outcategory = 'slaughterhouse',
	--module_limitations = 'ulric',
	singlerecipe = false,
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
