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
					{name='cage'},
                    {name='ulricfood01'},
                    {name='waterbarrel',amount=3,return_item={name='empty-barrel'}},
				},
			results =
				{
					{name='bones',probability=0.4,amount_min=1,amount_max=3},
					{name='meat',probability=0.4,amount_min=1,amount_max=1},
					{name='fat',probability=0.3,amount_min=1,amount_max=1},
					{name='brain',probability=0.4,amount_min=1,amount_max=1},
					{name='guts',probability=0.4,amount_min=1,amount_max=1},
					{name='bonemeal',amount=1},
					{name='cage',amount=1},
                    {name='blood',amount=50},
				},
				icon = "__pyalienlife__/graphics/icons/data-array.png",
				crafting_speed = 130,
				out_crafting_speed = 30,
				tech = 'ulric',
				newitem = true, --generates the same name in all recipes (in this case "ulric"), so we cant pick the recipe in the ulric corral because its appears as the same as the one bellow
				newitemname = 'banana',
				name = 'full rendering ulric' --gives the correct name in rendering, loved it.
		},
		--bonemeal
		{
			ingredients =
				{
					--{name='cage',amount='R'},
					--{name='cage'},
					--{name='ulricfood01',amount='R'},
					--{name='ulricfood01'},
					--{name='waterbarrel',amount='R'},
					--{name='waterbarrel',3,return_item={name='empty-barrel'}},
				},
			results =
				{
					{name='bones',amount='R'},
					{name='meat',amount='R'},
					{name='fat',amount='R'},
					{name='brain',amount='R'},
					{name='guts',amount='R'},
					{name='bonemeal',amount=6},
					{name='cage',amount=1},
                    {name='blood',amount='R'},
				},
				icon = "__pyalienlife__/graphics/icons/arthurian.png",
				crafting_speed = 130,
				out_crafting_speed = 15,
				tech = 'ulric',
				newitem = true,
				newitemname = 'steve',
				name = 'ulric to bonemeal' --gives the correct name in rendering, loved it.
		},
		--food 02
		{
			ingredients =
				{
					{name='ulricfood01',amount='R'},
					{name='ulricfood02',amount=1},
				},
			results =
				{
					--{name='bonemeal',amount='R'},
					{name='bonemeal',probability=0.5,amount_min=2,amount_max=3},
				},
				icon = "__pyalienlife__/graphics/icons/atomizer-mk01.png",
				crafting_speed = 110,
				out_crafting_speed = 30,
				tech = 'ulric',
				newitem = true,
				newitemname = 'bentham',
				name = 'full rendering ulric 2'
		},
		--GH
		{
			ingredients =
				{
					{name='ulricfood02',amount='R'},
					{name='ulricfood01',amount=1},
					{name='gh',amount=1},
				},
			results =
				{
					--{name='bonemeal',amount='R'},
					{name='bonemeal',amount=1},
				},
				icon = "__pyalienlife__/graphics/icons/fish-eggs.png",
				crafting_speed = 60,
				out_crafting_speed = 30,
				tech = 'growth-hormone',
				newitem = true,
				newitemname = 'lil shit',
				name = 'full rendering ulric with gh'
		},
		{
			ingredients =
				{
					{name='ulricfood01',amount='R'},
					{name='ulricfood02',amount=1},
				},
			results =
				{
					--{name='bonemeal',amount='R'},
					{name='bonemeal',probability=0.5,amount_min=2,amount_max=3},
				},
				icon = "__pyalienlife__/graphics/icons/pelt.png",
				crafting_speed = 60,
				out_crafting_speed = 30,
				tech = 'growth-hormone',
				newitem = true,
				newitemname = 'alf',
				name = 'full rendering ulric with gh 2'
		},
	},
}
