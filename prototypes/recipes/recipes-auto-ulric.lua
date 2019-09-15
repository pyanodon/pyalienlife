local fun = require("prototypes/functions/functions")

fun.autorecipes {
	name = 'single-example',
	--baseitem = 'caged-ulric',
    category = 'slaughterhouse',
	--outcategory = 'slaughterhouse',
	singlerecipe = true,
	module_limitations = "ulric",
	subgroup = 'py-alienlife-ulric',
    order = 'z',
    mats =
	{
		{
			ingredients =
				{
					{name='cagedulric'},
				},
			results =
				{
					{name='bonemeal',amount=1},
				},
				--icon = "__pyalienlife__/graphics/icons/ulric-food-01.png",
				crafting_speed = 30,
				tech = 'ulric',
		},
		--food 02
	},
}