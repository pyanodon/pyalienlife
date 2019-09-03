local fun = require("prototypes/functions/functions")


fun.autorecipes {
    name = 'ralesia',
	--baseitem = 'ralesia',
    category = 'ralesia',
    mats = 
	{
		{
			ingredients =
				{
					{'a'},
				},
			results =
				{
					{'a'}
				},
		},
		{
			ingredients =
				{
					{'b'},
				},
			results = 
				{
					{'a','+2'}
				},
		},
		{
			ingredients = 
				{
					{'c'},
				},
			results = 
				{
					{'a','+2'},
					{'b'}
				},
		}
	}
}

--[[
fun.autorecipes {
    name = '',
	baseitem = '',
    category = '',
	outcategory = '',
	singlerecipe = false,
    mats = 
	{
		{
			ingredients =
				{
					{'a'},
				},
			results =
				{
					{'a'}
				},
		},
		{
			ingredients =
				{
					{'b'},
				},
			results = 
				{
					{'a','+2'}
				},
		},
		{
			ingredients = 
				{
					{'c'},
				},
			results = 
				{
					{'a','+2'}
				},
		}
	}
}
]]--