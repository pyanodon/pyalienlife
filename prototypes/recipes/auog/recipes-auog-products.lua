local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

--Aoug breeding
FUN.autorecipes {
    name = 'auog-pup-breeding',
	category = 'auog',
	--module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		--base
		{
			ingredients =
				{
                    {name='native-flora', amount =20},
                    {name='moss', amount =10},
					{name='water-barrel', amount=5,return_barrel = true},
				},
			results =
				{
					{name = 'manure', amount_min = 3, amount_max = 8}
				},
			crafting_speed = 15,
			tech = 'auog',
			main_product = 'manure'
		},
		--red
		{
			ingredients =
				{
					{name='auog-food-01', amount =3},
				},
			results =
				{
					{name = 'manure', remove_item = true},
					{name = 'manure', amount_min = 5, amount_max = 12}
				},
			crafting_speed = 15,
			tech = 'auog',
			main_product = 'manure'
		},
		--green
		{
			ingredients =
				{
					{name='saps', amount = 12},
					{name='bedding', amount = 3},
					{name='raw-fiber', amount = 15},
				},
			results =
				{
					{name = 'manure', remove_item = true},
					{name = 'manure', amount_min = 7, amount_max = 14}
				},
			crafting_speed = 12,
			tech = 'auog-mk02',
			main_product = 'manure'
		},
		--chem
		{
			ingredients =
				{
					{name='saps', add_amount = 5},
					{name='bedding',add_amount = 5},
					{name='raw-fiber',add_amount = 5},
                    {name = 'auog-food-01', remove_item = true},
					{name='auog-food-02', amount =5},

				},
			results =
				{
					{name = 'manure', remove_item = true},
					{name = 'manure', amount_min = 10, amount_max = 20}
				},
			crafting_speed = 12,
			tech = 'auog-mk03',
			main_product = 'manure'
		},
		--py
		{
			ingredients =
				{
					{name='saps', add_amount = 10},
					{name='raw-fiber', add_amount = 10},
				},
			results =
				{
					{name = 'manure', remove_item = true},
					{name = 'manure', amount_min = 20, amount_max = 30}
				},
			crafting_speed = 10,
			tech = 'auog-mk04',
			main_product = 'manure'
		},
	}
}

-- data.raw.module["auog"].limitation = {
-- 	"auog-pup-breeding-1"
-- }
-- data.raw.module["auog-mk02"].limitation = {
-- 	"auog-pup-breeding-1"
-- }
-- data.raw.module["auog-mk03"].limitation = {
-- 	"auog-pup-breeding-1"
-- }
-- data.raw.module["auog-mk04"].limitation = {
-- 	"auog-pup-breeding-1"
-- }

--Raising auog pups
--[[ FUN.autorecipes {
    name = 'auog-pooping',
	category = 'auog',
	module_limitations = 'auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
	upgrades =
			{
				{
					tech = 'bigger-colon',
					ingredient_changes =
					{
						{name = 'fiber', amount = 2}
					},
					result_changes =
					{
						{name = 'manure', add_amount = 3},
					},
				},
				{
					tech = 'explosive-diarrhea',
					ingredient_changes =
					{
						{name = 'ethylene-glycol', amount = 50}
					},
					result_changes =
					{
						{name = 'manure', add_amount = 5},
					}
				},
			},
    mats =
	{
		--base
		{
			ingredients =
				{
                    {name='native-flora', amount =20},
                    {name='moss', amount =10},
					{name='water-barrel', amount=5,return_barrel = true},
				},
			results =
				{
					{name = 'manure', amount_min = 5, amount_max = 12}
				},
			crafting_speed = 160,
			tech = 'auog',
			main_product = 'auog'
		},
		--red
		{
			ingredients =
				{
					{name='auog-food-01', amount =3},
					{name='saps', amount = 12},
				},
			results =
				{
					{name = 'manure', remove_item = true},
					{name = 'manure', amount_min = 5, amount_max = 12}
				},
			crafting_speed = 130,
			tech = 'auog',
			main_product = 'auog'
		},
		--green
		{
			ingredients =
				{
					{name='bedding', amount = 3},
					{name='raw-fiber', amount = 15},
				},
			results =
				{
					{name = 'manure', remove_item = true},
					{name = 'manure', amount_min = 7, amount_max = 14}
				},
			crafting_speed = 100,
			tech = 'auog-mk02',
			main_product = 'auog'
		},
		--chem
		{
			ingredients =
				{
					{name='saps', add_amount = 5},
					{name='bedding', add_amount = 5},
					{name='raw-fiber', add_amount = 5},
					{name='auog-food-01', add_amount = 7},
					{name='auog-food-02', amount = 5},

				},
			results =
				{
					{name = 'manure', remove_item = true},
					{name = 'manure', amount_min = 10, amount_max = 20}
				},
			crafting_speed = 70,
			tech = 'auog-mk03',
			main_product = 'auog'
		},
		--py
		{
			ingredients =
				{
					{name='auog-pup', remove_item = true},
					{name='auog-pup', amount=20},
					{name='saps', add_amount = 10},
					{name='raw-fiber', add_amount = 10},
				},
			results =
				{
					{name= 'auog',remove_item = true},
					{name= 'auog', amount_min = 16, amount_max = 20},
					{name = 'manure', remove_item = true},
					{name = 'manure', amount_min = 20, amount_max = 30}
				},
			crafting_speed = 40,
			tech = 'auog-mk04',
			main_product = 'auog'
		},
	}
}
]]--