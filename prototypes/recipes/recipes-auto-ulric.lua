local fun = require("prototypes/functions/functions")

fun.autorecipes {
    name = 'caged-ulric',
	category = 'ulric',
	module_limitations = 'ulric',
    mats =
	{
		{
			ingredients =
				{
					{name='ralesiaseeds',amount =15},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
					{name='cage',amount=1},
				},
			results =
				{
					{name='cagedulric', probability = 0.5,amount_min =1,amount_max =1},
				},
			crafting_speed = 130,
			tech = 'ulric'
		},
		--food 1
		{
			ingredients =
				{
					{name='ralesiaseeds',amount ='R'},
					{name='ulricfood01',amount =1},
				},
			results =
				{

				},
			crafting_speed = 110,
			tech = 'ulric'
		},
		--food 2
		{
			ingredients =
				{
					{name='ulricfood01',amount ='R'},
					{name='ulricfood02',amount =1},

				},
			results =
				{

				},
			crafting_speed = 80,
			tech = 'ulric'
		},
		--gh
		{
			ingredients =
				{
					{name='gh',amount =1},

				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'growth-hormone'
		},
	}
}
