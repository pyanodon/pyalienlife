local fun = require("prototypes/functions/functions")

	--NOT STANDARD AOUGS
	fun.autorecipes {
		name = 'auog-mods',
		category = 'creature-chamber',
		subgroup = 'py-alienlife-auog',
		order = 'c',
		mats =
		{
		--nanochondria
		{
			ingredients =
				{
					{name='caged-auog', amount =1},
					{name='gh', amount =1},
					{name='antiviral', amount =1},
					{name='nanochondria', amount =1},
				},
			results =
				{
					{name='brain-caged-auog', amount = 1},
				},
			crafting_speed = 90,
			tech = 'nanochondria'
		},
		--bmp
		{
			ingredients =
				{
					{name='nanochondria',remove_item = true},
					{name='bmp', amount =1},
				},
			results =
				{
					{name='brain-caged-auog', remove_item = true},
					{name='bone-caged-auog', amount = 1},
				},
			crafting_speed = 90,
			tech = 'bmp'
		},
		--rna anabolic
		{
			ingredients =
				{
					{name='bmp',remove_item = true},
					{name='anabolic-rna', amount =1},
				},
			results =
				{
					{name='bone-caged-auog', remove_item = true},
					{name='meat-caged-auog', amount = 1},
				},
			crafting_speed = 90,
			tech = 'anabolic-rna'
		},
		--antitumor
		{
			ingredients =
				{
					{name='anabolic-rna',remove_item = true},
					{name='antitumor', amount =1},
				},
			results =
				{
					{name='meat-caged-auog', remove_item = true},
					{name='guts-caged-auog', amount = 1},
				},
			crafting_speed = 90,
			tech = 'antitumor'
		},
		--Recombinant Ery
		{
			ingredients =
				{
					{name='antitumor',remove_item = true},
					{name='recombinant-ery', amount =1},
				},
			results =
				{
					{name='guts-caged-auog', remove_item = true},
					{name='blood-caged-auog', amount = 1},
				},
			crafting_speed = 90,
			tech = 'recombinant-ery'
		},
		--reca
		{
			ingredients =
				{
					{name='recombinant-ery',remove_item = true},
					{name='reca', amount =1},
				},
			results =
				{
					{name='blood-caged-auog', remove_item = true},
					{name='skin-caged-auog', amount = 1},
				},
			crafting_speed = 90,
			tech = 'reca'
		},
		--orexigenic
		{
			ingredients =
				{
					{name='reca',remove_item = true},
					{name='orexigenic', amount =1},
				},
			results =
				{
					{name='skin-caged-auog', remove_item = true},
					{name='fat-caged-auog', amount = 1},
				},
			crafting_speed = 90,
			tech = 'orexigenic'
		},
	}
}
