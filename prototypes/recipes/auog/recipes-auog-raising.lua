local fun = require("prototypes/functions/functions")

--Aoug breeding
fun.autorecipes {
    name = 'auog-pup-breeding',
	category = 'auog',
	module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		--base
		{
			ingredients =
				{
					{name= 'auog', amount=2},
                    {name='biomass',amount =20},
                    {name='moss',amount =10},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
				},
			results =
				{
					{name= 'auog', amount=2},
					{name= 'auogpup',amount_min = 3,amount_max = 6},
					{name = 'manure', amount_min = 5,amount_max = 12}
				},
			crafting_speed = 160,
			tech = 'auog'
		},
		--red
		{
			ingredients =
				{
					{name='auogfood01',amount =3},
				},
			results =
				{
					{name= 'auogpup',amount ='R'},
					{name= 'auogpup',amount_min = 4,amount_max = 8},
					{name = 'manure', amount = 'R'},
					{name = 'manure', amount_min = 5,amount_max = 12}
				},
			crafting_speed = 130,
			tech = 'auog'
		},
		--green
		{
			ingredients =
				{
					{name='auog', amount='R'},
					{name='auog', amount=4},
					{name='saps',amount = 12},
					{name='bedding',amount = 3},
					{name='rawfiber',amount = 15},
				},
			results =
				{
					{name='auog', amount='R'},
					{name='auog', amount=4},
					{name= 'auogpup',amount ='R'},
					{name= 'auogpup',amount_min = 4,amount_max = 20},
					{name = 'manure', amount = 'R'},
					{name = 'manure', amount_min = 7,amount_max = 14}
				},
			crafting_speed = 100,
			tech = 'auog-mk02'
		},
		--chem
		{
			ingredients =
				{
					{name='auog', amount='R'},
					{name='auog', amount=8},
					{name='saps',amount = '+5'},
					{name='bedding',amount = '+5'},
					{name='rawfiber',amount = '+5'},
					{name='auogfood01',amount ='+7'},
					{name='auogfood02',amount =5},

				},
			results =
				{
					{name='auog', amount='R'},
					{name='auog', amount=8},
					{name= 'auogpup',amount ='R'},
					{name= 'auogpup',amount_min = 8,amount_max = 30},
					{name = 'manure', amount = 'R'},
					{name = 'manure', amount_min = 10,amount_max = 20}
				},
			crafting_speed = 70,
			tech = 'auog-mk03'
		},
		--py
		{
			ingredients =
				{
					{name='auog', amount='R'},
					{name='auog', amount=14},
					{name='saps',amount =20},
					{name='rawfiber',amount = 20},
				},
			results =
				{
					{name='auog', amount='R'},
					{name='auog', amount=14},
					{name= 'auogpup',amount ='R'},
					{name= 'auogpup',amount_min = 14,amount_max = 50},
					{name = 'manure', amount = 'R'},
					{name = 'manure', amount_min = 20,amount_max = 30}
				},
			crafting_speed = 40,
			tech = 'auog-mk04'
		},
	}
}

--Raising auog pups
fun.autorecipes {
    name = 'auog-maturing',
	category = 'auog',
	module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		--base
		{
			ingredients =
				{
					{name='auogpup', amount=4},
                    {name='biomass',amount =20},
                    {name='moss',amount =10},
					{name='waterbarrel',amount=5,return_item={name='empty-barrel',amount=5}},
				},
			results =
				{
					{name= 'auog',amount_min = 2,amount_max = 4},
					{name = 'manure', amount_min = 5,amount_max = 12}
				},
			crafting_speed = 160,
			tech = 'auog'
		},
		--red
		{
			ingredients =
				{
					{name='auogfood01',amount =3},
					{name='saps',amount = 12},
				},
			results =
				{
					{name= 'auog',amount ='R'},
					{name= 'auog',amount_min = 2,amount_max = 8},
					{name = 'manure', amount = 'R'},
					{name = 'manure', amount_min = 5,amount_max = 12}
				},
			crafting_speed = 130,
			tech = 'auog'
		},
		--green
		{
			ingredients =
				{
					{name='auogpup', amount='R'},
					{name='auogpup', amount=12},
					{name='bedding',amount = 3},
					{name='rawfiber',amount = 15},
				},
			results =
				{
					{name= 'auog',amount ='R'},
					{name= 'auog',amount_min = 4,amount_max = 12},
					{name = 'manure', amount = 'R'},
					{name = 'manure', amount_min = 7,amount_max = 14}
				},
			crafting_speed = 100,
			tech = 'auog-mk02'
		},
		--chem
		{
			ingredients =
				{
					{name='auogpup', amount='R'},
					{name='auogpup', amount=15},
					{name='saps',amount = '+5'},
					{name='bedding',amount = '+5'},
					{name='rawfiber',amount = '+5'},
					{name='auogfood01',amount ='+7'},
					{name='auogfood02',amount =5},

				},
			results =
				{
					{name= 'auog',amount ='R'},
					{name= 'auog',amount_min = 8,amount_max = 15},
					{name = 'manure', amount = 'R'},
					{name = 'manure', amount_min = 10,amount_max = 20}
				},
			crafting_speed = 70,
			tech = 'auog-mk03'
		},
		--py
		{
			ingredients =
				{
					{name='auogpup', amount='R'},
					{name='auogpup', amount=20},
					{name='saps',amount =20},
					{name='rawfiber',amount = 20},
				},
			results =
				{
					{name= 'auog',amount ='R'},
					{name= 'auog',amount_min = 14,amount_max = 20},
					{name = 'manure', amount = 'R'},
					{name = 'manure', amount_min = 20,amount_max = 30}
				},
			crafting_speed = 40,
			tech = 'auog-mk04'
		},
	}
}
