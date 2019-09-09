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
                    {'waterbarrel',3,return_item={'empty-barrel'}},
				},
			results =
				{
					{'bones',4/10,a_min=1,a_max=3},
					{'meat',4/10,a_min=1,a_max=3,icon=true},
					{'fat',3/10,a_min=1,a_max=1},
					{'brain',4/10,a_min=1,a_max=1},
					{'guts',4/10,a_min=1,a_max=1},
					{'bonemeal',1},
                    {'blood',50},
				},
				crafting_speed = 130,
				tech = 'ulric',
				newitem = true
        },
		{
			ingredients =
				{
					{'renneaseeds',25},
				},
			results =
				{
					{'bones','+1/10'},
					{'meat','+1/10'},
					{'brain','+1/10'},
					{'bonemeal','+1'},
				},
				crafting_speed = 110,
				tech = 'ulric'
		},
		{
			ingredients =
				{
					{'fungalsubstrate'},
				},
			results =
				{
					{'bones','+1/10'},
					{'meat','+1/10'},
					{'brain','+1/10'},
					{'bonemeal','+1'},
				},
				crafting_speed = 110,
				tech = 'ulric'
		},
		{
			ingredients =
				{
					{'slackedlime'}
				},
			results =
				{
					{'bones','+1/10'},
					{'meat','+1/10'},
					{'brain','+1/10',icon=true},
					{'bonemeal','+1'},
				},
				crafting_speed = 110,
				tech = 'ulric',
				newitem = true
		},
		{
			ingredients =
				{
					{'fertilizer'}
				},
			results =
				{
					{'bones','+1/10'},
					{'meat','+1/10'},
					{'brain','+1/10'},
					{'bonemeal','+1'},
				},
				crafting_speed = 110,
				tech = 'ulric'
		},
		{
			ingredients =
				{
					{'rawfiber',30}
				},
			results =
				{
					{'bones','+1/10'},
					{'meat','+1/10'},
					{'brain','+1/10'},
					{'bonemeal','+1'},
				},
				crafting_speed = 110,
				tech = 'ulric'
		},
	},
}
