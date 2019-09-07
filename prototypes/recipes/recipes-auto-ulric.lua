local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'dual-example',
	baseitem = 'caged-ulric',
    category = 'ulric',
	outcategory = 'slaughterhouse',
	singlerecipe = false,
	module_limitations = "ulric",
	subgroup = 'py-alienlife-ulric',
    order = 'z',
    mats =
	{
		{
			ingredients =
				{
					{'cage'},
                    {'ulricfood01'},
                    {'waterbarrel',3},
                    {'gh'},
				},
			results =
				{
                    {'bones',3/4},
                    {'meat',3/4},
                    {'blood',50},
                    {'brain'},
                    {'guts'},
				},
				crafting_speed = 100,
				tech = 'growth-hormone'
        },
        {
			ingredients =
				{
					--{'cage'},
                    {'ulricfood01','R'},
                    {'ulricfood02'},
                    --{'waterbarrel',3},
                    --{'gh'},
				},
			results =
				{
                    {'meat','R'},
                    {'meat','4'},
				},
				crafting_speed = 100,
				tech = 'growth-hormone'
		},
	}
}
