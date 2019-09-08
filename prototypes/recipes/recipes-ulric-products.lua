
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
					{'ralesiaseeds',5},
					{'waterbarrel',5},
				},
			results =
				{
					{'manure','*3'},
					{'emptybarrel',5},
				},
			crafting_speed = 130,
			tech = 'ulric'
		},
		{
			ingredients =
				{
					{'ralesiaseeds','R'},
					{'ulricfood01'},
				},
			results =
				{
					--{'a','*5'}
					{'manure','+2'}
				},
				crafting_speed = 120,
				tech = 'ulric'
		},
		{
			ingredients =
				{
					{'salt',4},
				},
			results =
				{
					--{'a','*5'}
					{'manure','+1'}
				},
				crafting_speed = 120,
				tech = 'ulric'
		},
		{
			ingredients =
				{
					{'rawfiber',5},
				},
			results =
				{
					--{'a','*5'}
					{'manure','+2'}
				},
				crafting_speed = 120,
				tech = 'ulric'
		},
		{
			ingredients =
				{
					{'salt','R'},
					{'rawfiber','R'},
					{'ulricfood01','R'},
					{'ulricfood02'},
				},
			results =
				{
					--{'a','*5'}
					{'manure',8}
				},
				crafting_speed = 100,
				tech = 'ulric'
		},
		{
			ingredients =
				{
					{'salt',4},
				},
			results =
				{
					--{'a','*5'}
					{'manure','+2'}
				},
				crafting_speed = 100,
				tech = 'ulric'
		},
		{
			ingredients =
				{
					{'rawfiber',5},
				},
			results =
				{
					--{'a','*5'}
					{'manure','+2'}
				},
				crafting_speed = 100,
				tech = 'ulric'
		},
	}
}
