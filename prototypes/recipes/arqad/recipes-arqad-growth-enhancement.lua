local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

FUN.autorecipes {
    name = 'arqad-improve',
	category = 'creature-chamber',
	--module_limitations = 'arqad',
	subgroup = 'py-alienlife-arqad',
	order = 'b',
    mats =
	{
		--rna anabolic
		{
			ingredients =
				{
					{name='arqad', amount = 1},
					{name='anabolic-rna',amount =1},
				},
			results =
				{
					{name='meat-arqad', amount = 1},
				},
			crafting_speed = 90,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name='nanochondria',amount =1},
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='antitumor',amount =1},
				},
			results =
				{
					{name='meat-arqad', remove_item = true},
					{name='guts-arqad', amount = 1},
				},
			crafting_speed = 90,
			tech = 'antitumor'
		},
		--antitumor and gh
		{
			ingredients =
				{
					--{name='nanochondria',amount =1},
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'antitumor'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='antitumor',remove_item = true},
					{name='recombinant-ery',amount =1},
				},
			results =
				{
					{name='guts-arqad', remove_item = true},
					{name='blood-arqad', amount = 1},
				},
			crafting_speed = 90,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'recombinant-ery'
		},
		--reca
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='reca',amount =1},
				},
			results =
				{
					{name='blood-arqad', remove_item = true},
					{name='chitin-arqad', amount = 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--reca and gh
		{
			ingredients =
				{
					{name='gh',amount =1},
				},
			results =
				{

				},
			crafting_speed = 30,
			tech = 'reca'
		},
	}
}
