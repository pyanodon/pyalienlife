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


fun.autorecipes {
    name = 'dual-example',
	baseitem = 'zipir',
    category = 'zipir',
	outcategory = 'crafting-with-fluid',
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
					{'f'}
				},
		},
		{
			ingredients =
				{
                    {'b'},
                    {'c','+4'}
				},
			results =
				{
                    {'f','+1'},
                    {'e','*2'}
				},
		},
		{
			ingredients =
				{
                    {'c','R'},
                    {'e'}
				},
			results =
				{
                    {'f','+2'},
                    {'a','+2'}
				},
		}
	}
}
