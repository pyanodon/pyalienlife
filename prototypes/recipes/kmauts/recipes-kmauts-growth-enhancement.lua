local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

FUN.autorecipes {
    name = 'kmauts-improved',
	category = 'kmauts',
	--module_limitations = 'kmauts',
	subgroup = 'py-alienlife-kmauts',
	order = 'b',
	--main_product = "kmauts",
    mats =
	{
		--nanochondria
		{
			ingredients =
				{
					{name='nanochondria', amount =1},
					{name='caged-kmauts', amount = 1},
				},
			results =
				{
					{name='brain-caged-kmauts', amount = 1},
				},
			crafting_speed = 70,
			tech = 'nanochondria'
		},
		--nanochondria and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 25,
			tech = 'nanochondria'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='nanochondria',remove_item = true},
					{name='anabolic-rna', amount =1},
				},
			results =
				{
					{name='brain-caged-kmauts', remove_item = true},
					{name='meat-caged-kmauts', amount = 1},
				},
			crafting_speed = 70,
			tech = 'anabolic-rna'
		},
		--rna anabolic and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 25,
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='anabolic-rna',remove_item = true},
					{name='antitumor', amount =1},
				},
			results =
				{
					{name='meat-caged-kmauts', remove_item = true},
					{name='guts-caged-kmauts', amount = 1},
				},
			crafting_speed = 70,
			tech = 'antitumor'
		},
		--antitumor and gh
		{
			ingredients =
				{
					--{name='nanochondria', amount =1},
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 25,
			tech = 'antitumor'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='antitumor',remove_item = true},
					{name='recombinant-ery', amount =1},
				},
			results =
				{
					{name='guts-caged-kmauts', remove_item = true},
					{name='blood-caged-kmauts', amount = 1},
				},
			crafting_speed = 70,
			tech = 'recombinant-ery'
		},
		--Recombinant Ery and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 25,
			tech = 'recombinant-ery'
        },
		--orexigenic
		{
			ingredients =
				{
					{name='gh',remove_item = true},
					{name='recombinant-ery',remove_item = true},
					{name='orexigenic', amount =1},
				},
			results =
				{
					{name='blood-caged-kmauts', remove_item = true},
					{name='fat-caged-kmauts', amount = 1},
				},
			crafting_speed = 70,
			tech = 'orexigenic'
		},
		--orexigenic and gh
		{
			ingredients =
				{
					{name='gh', amount =1},
				},
			results =
				{

				},
			crafting_speed = 25,
			tech = 'orexigenic'
		},
	}
}
