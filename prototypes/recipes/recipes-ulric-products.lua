local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'manure',
	--baseitem = 'ralesia',
	category = 'ulric',
	module_limitations = 'ulric',
    mats =
	{
		{
			ingredients =
				{
					{'ulricfood01'},
					{'waterbarrel',3},
				},
			results =
				{
					{'manure',5},
					{'emptybarrel',3},
				},
			crafting_speed = 100,
			tech = 'ulric'
		},
	},
}