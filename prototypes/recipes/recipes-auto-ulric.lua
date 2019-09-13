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
					{'meat',4/10,a_min=1,a_max=1},
					{'fat',3/10,a_min=1,a_max=1},
					{'brain',4/10,a_min=1,a_max=1},
					{'guts',4/10,a_min=1,a_max=1},
					{'bonemeal',1},
					{'cage',1},
                    {'blood',50},
				},
				crafting_speed = 130,
				out_crafting_speed = 30,
				tech = 'ulric',
				newitem = false, --generates the same name in all recipes (in this case "ulric"), so we cant pick the recipe in the ulric corral because its appears as the same as the one bellow
				name = 'full rendering ulric' --gives the correct name in rendering, loved it.
		},
		--bonemeal
		{
			ingredients =
				{
					{'cage','R'},
					{'cage'},
					{'ulricfood01','R'},
					{'ulricfood01'},
					{'waterbarrel','R'},
					{'waterbarrel',3,return_item={'empty-barrel'}},
				},
			results =
				{
					{'bones','R'},
					{'meat','R'},
					{'fat','R'},
					{'brain','R'},
					{'guts','R'},
					{'bonemeal',6,icon=true},
					{'cage',1},
                    {'blood','R'},
				},
				crafting_speed = 130,
				out_crafting_speed = 15,
				tech = 'ulric',
				newitem = true,
				name = 'ulric to bonemeal' --gives the correct name in rendering, loved it.
		},
		--food 02
		{
			ingredients =
				{
					{'ulricfood01','R'},
					{'ulricfood02',1},
				},
			results =
				{
					{'bonemeal','R'},
					{'bonemeal',5/10,a_min=2,a_max=3},
				},
				crafting_speed = 110,
				out_crafting_speed = 30,
				tech = 'ulric',
				newitem = false,
				name = 'full rendering ulric 2'
		},
		--GH
		{
			ingredients =
				{
					{'ulricfood02','R'},
					{'ulricfood01',1},
					{'gh',1},
				},
			results =
				{
					{'bonemeal','R'},
					{'bonemeal',1},
				},
				crafting_speed = 60,
				out_crafting_speed = 30,
				tech = 'growth-hormone',
				newitem = false,
				name = 'full rendering ulric with gh'
		},
		{
			ingredients =
				{
					{'ulricfood01','R'},
					{'ulricfood02',1},
				},
			results =
				{
					{'bonemeal','R'},
					{'bonemeal',5/10,a_min=2,a_max=3},
				},
				crafting_speed = 60,
				out_crafting_speed = 30,
				tech = 'growth-hormone',
				newitem = false,
				name = 'full rendering ulric with gh 2'
		},
	},
}
