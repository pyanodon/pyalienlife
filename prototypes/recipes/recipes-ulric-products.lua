
local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'manure',
	category = 'ulric',
	module_limitations = 'ulric',
    mats =
	{
		{
			ingredients =
				{
					{'ralesiaseeds'},
				},
			results =
				{
					{'stone','*4'}
				},
			crafting_speed = 130,
			tech = 'ulric'
		},
		{
			ingredients =
				{
                    --{'s1'},
                    {'water'},
				},
			results =
				{
					--{'a','*5'}
					{'stone','+1'}
				},
				crafting_speed = 120,
				tech = 'ulric'
		},

	}
}
