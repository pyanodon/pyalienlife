------------------ARTHURIANS------------------

py.autorecipes {
	name = "rendering-blood-arthurians-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-arthurian",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "caged-arthurian", amount = 1},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       remove_item = true},
				{name = "cage",        amount = 1},
				{name = "blood",       add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-arthurian-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--blood arthurian rendering
		{
			ingredients =
			{
				{name = "caged-arthurian",       remove_item = true},
				{name = "blood-caged-arthurian", amount = 1},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-arthurians-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-arthurian.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",          scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------ARQAD------------------

py.autorecipes {
	name = "rendering-blood-arqad-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-arqad",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "arqad", amount = 3},
			},
			results =
			{
				{name = "bones",           remove_item = true},
				{name = "meat",            remove_item = true},
				{name = "skin",            remove_item = true},
				{name = "mukmoux-fat",     remove_item = true},
				{name = "guts",            remove_item = true},
				{name = "blood",           remove_item = true},
				{name = "brain",           remove_item = true},
				{name = "arthropod-blood", remove_item = true},
				{name = "arthropod-blood", add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-arqad-arthropod-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--blood arqad rendering
		{
			ingredients =
			{
				{name = "arqad",       remove_item = true},
				{name = "blood-arqad", amount = 1},
			},
			results =
			{
				{name = "guts",            remove_item = true},
				{name = "blood",           remove_item = true},
				{name = "arthropod-blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-arthropod-blood-from-Improved-arqads-2",
			icons = {
				{icon = "__pyalienlifegraphics3__/graphics/icons/arqad.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

py.autorecipes {
	name = "rendering-blood-auog-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-auog",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "caged-auog", amount = 1},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       remove_item = true},
				{name = "cage",        amount = 1},
				{name = "blood",       add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-auog-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--blood auog rendering
		{
			ingredients =
			{
				{name = "caged-auog",       remove_item = true},
				{name = "blood-caged-auog", amount = 1},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-auogs-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-auog.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",     scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------COTTONGUT------------------

py.autorecipes {
	name = "rendering-blood-cottongut-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-cottongut",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "cottongut", amount = 5},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       remove_item = true},
				{name = "blood",       add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-cottongut-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--blood cottongut rendering
		{
			ingredients =
			{
				{name = "cottongut",       remove_item = true},
				{name = "blood-cottongut", amount = 5},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-cottonguts-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/cottongut.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",    scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------DHILMOS------------------

py.autorecipes {
	name = "rendering-blood-dhilmos-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-dhilmos",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "dhilmos", amount = 1},
			},
			results =
			{
				{name = "bones",           remove_item = true},
				{name = "meat",            remove_item = true},
				{name = "skin",            remove_item = true},
				{name = "chitin",          remove_item = true},
				{name = "arthropod-blood", remove_item = true},
				{name = "sulfuric-acid",   remove_item = true},
				{name = "mukmoux-fat",     remove_item = true},
				{name = "guts",            remove_item = true},
				{name = "blood",           remove_item = true},
				{name = "brain",           remove_item = true},
				{name = "arthropod-blood", add_amount = 30},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-dhilmos-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--blood dhilmos rendering
		{
			ingredients =
			{
				{name = "dhilmos",       remove_item = true},
				{name = "blood-dhilmos", amount = 1},
			},
			results =
			{
				{name = "guts",            remove_item = true},
				{name = "arthropod-blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-dhilmoss-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/dhilmo.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------DINGRITS------------------

py.autorecipes {
	name = "rendering-blood-dingrits-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-dingrits",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "caged-dingrits", amount = 1},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       remove_item = true},
				{name = "cage",        amount = 1},
				{name = "blood",       add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-dingrits-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--blood dingrits rendering
		{
			ingredients =
			{
				{name = "caged-dingrits",       remove_item = true},
				{name = "blood-caged-dingrits", amount = 1},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-dingrits-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-dingrits.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",         scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------KMAUTS------------------

py.autorecipes {
	name = "rendering-blood-kmauts-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-kmauts",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "caged-kmauts", amount = 1},
			},
			results =
			{
				{name = "bones",           remove_item = true},
				{name = "meat",            remove_item = true},
				{name = "skin",            remove_item = true},
				{name = "mukmoux-fat",     remove_item = true},
				{name = "guts",            remove_item = true},
				{name = "blood",           remove_item = true},
				{name = "brain",           remove_item = true},
				{name = "cage",            amount = 1},
				{name = "arthropod-blood", add_amount = 30},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-kmauts-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--blood kmauts rendering
		{
			ingredients =
			{
				{name = "caged-kmauts",       remove_item = true},
				{name = "blood-caged-kmauts", amount = 1},
			},
			results =
			{
				{name = "guts",            remove_item = true},
				{name = "arthropod-blood", add_amount = 30},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-kmauts-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-kmauts.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}


------------------KORLEX------------------

py.autorecipes {
	name = "rendering-blood-korlex-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-korlex",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "caged-korlex", amount = 1},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       remove_item = true},
				{name = "cage",        amount = 1},
				{name = "blood",       add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-Korlex-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--blood korlex rendering
		{
			ingredients =
			{
				{name = "caged-korlex",       remove_item = true},
				{name = "blood-caged-korlex", amount = 1},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-Korlex-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-korlex.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",       scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}


------------------MUKMOUX------------------

py.autorecipes {
	name = "rendering-blood-mukmoux-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-mukmoux",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "caged-mukmoux", amount = 1},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       remove_item = true},
				{name = "cage",        amount = 1},
				{name = "blood",       add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-Mukmoux-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--blood mukmoux rendering
		{
			ingredients =
			{
				{name = "caged-mukmoux",       remove_item = true},
				{name = "blood-caged-mukmoux", amount = 1},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-Mukmouxs-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-mukmoux.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",        scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------PHADAI------------------

py.autorecipes {
	name = "rendering-blood-phadai-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-phadai",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "caged-phadai", amount = 1},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       remove_item = true},
				{name = "cage",        amount = 1},
				{name = "blood",       add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-phadai-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--blood phadai rendering
		{
			ingredients =
			{
				{name = "caged-phadai",       remove_item = true},
				{name = "blood-caged-phadai", amount = 1},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-phadais-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-phadai.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",       scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------PHAGNOT------------------

py.autorecipes {
	name = "rendering-blood-phagnot-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-phagnot",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "caged-phagnot", amount = 1},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       remove_item = true},
				{name = "cage",        amount = 1},
				{name = "blood",       add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-phagnot-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--blood phagnot rendering
		{
			ingredients =
			{
				{name = "caged-phagnot",       remove_item = true},
				{name = "blood-caged-phagnot", amount = 1},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-phagnots-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-phagnot.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",        scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------SCRONDRIX------------------

py.autorecipes {
	name = "rendering-blood-scrondrix-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-scrondrix",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "caged-scrondrix", amount = 1},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       remove_item = true},
				{name = "cage",        amount = 1},
				{name = "blood",       add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-scrondrix-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--blood scrondrix rendering
		{
			ingredients =
			{
				{name = "caged-scrondrix",       remove_item = true},
				{name = "blood-caged-scrondrix", amount = 1},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", add_amount = 40},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-scrondrixs-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-scrondrix.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",          scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------SIMIK------------------

py.autorecipes {
	name = "rendering-blood-simik-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-simik",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "caged-simik", amount = 1},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "simik-blood", remove_item = true},
				{name = "brain",       remove_item = true},
				{name = "cage",        amount = 1},
				{name = "simik-blood", add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-simik-blood-2",
			icon = "__pyalienlifegraphics2__/graphics/icons/simik-blood.png",
			icon_size = 64,
		},
		--blood simik rendering
		{
			ingredients =
			{
				{name = "caged-simik",       remove_item = true},
				{name = "blood-caged-simik", amount = 1},
			},
			results =
			{
				{name = "guts",        remove_item = true},
				{name = "simik-blood", add_amount = 40},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-simik-2",
			icons = {
				{icon = "__pyalienlifegraphics2__/graphics/icons/caged-simik.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",       scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

py.autorecipes {
	name = "rendering-blood-trits-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-trits",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "trits", amount = 1},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       remove_item = true},
				{name = "blood",       add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-Trits-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--blood trits rendering
		{
			ingredients =
			{
				{name = "trits",       remove_item = true},
				{name = "blood-trits", amount = 1},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-Trits-1",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/trits.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------ULRIC------------------

py.autorecipes {
	name = "rendering-blood-ulric-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-ulric",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "caged-ulric", amount = 1},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       remove_item = true},
				{name = "cage",        amount = 1},
				{name = "blood",       add_amount = 20},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-Ulric-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/blood.png",
			icon_size = 64,
		},
		--blood ulric rendering
		{
			ingredients =
			{
				{name = "caged-ulric",       remove_item = true},
				{name = "blood-caged-ulric", amount = 1},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-Ulrics-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-ulric.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",      scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------VONIX------------------

py.autorecipes {
	name = "rendering-blood-vonix-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-vonix",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "vonix", amount = 1},
			},
			results =
			{
				{name = "bones",           remove_item = true},
				{name = "meat",            remove_item = true},
				{name = "skin",            remove_item = true},
				{name = "mukmoux-fat",     remove_item = true},
				{name = "chitin",          remove_item = true},
				{name = "arthropod-blood", remove_item = true},
				{name = "sulfuric-acid",   remove_item = true},
				{name = "guts",            remove_item = true},
				{name = "blood",           remove_item = true},
				{name = "brain",           remove_item = true},
				{name = "arthropod-blood", add_amount = 30},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-Vonix-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--blood vonix rendering
		{
			ingredients =
			{
				{name = "fat-vonix",   remove_item = true},
				{name = "vonix",       remove_item = true},
				{name = "blood-vonix", amount = 1},
			},
			results =
			{
				{name = "guts",            remove_item = true},
				{name = "arthropod-blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-Arthropod-blood-from-Improved Vonixes-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/vonix.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------RENDERING XENOS------------------

py.autorecipes {
	name = "rendering-blood-xenos-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-xeno",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "caged-xeno", amount = 1},
			},
			results =
			{
				{name = "bones",         remove_item = true},
				{name = "chitin",        remove_item = true},
				{name = "cage",          amount = 1},
				{name = "sulfuric-acid", remove_item = true},
				{name = "meat",          remove_item = true},
				{name = "brain",         remove_item = true},
				{name = "sulfuric-acid", add_amount = 30},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-Xeno-blood-2",
			icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
			icon_size = 64,
		},
		--blood xeno rendering
		{
			ingredients =
			{
				{name = "caged-xeno",          remove_item = true},
				{name = "sulfuric-caged-xeno", amount = 1},
			},
			results =
			{
				{name = "bonemeal",      remove_item = true},
				{name = "sulfuric-acid", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-Xenos-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-xeno.png"},
				{icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",      scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}


------------------XYHIPHOE------------------

py.autorecipes {
	name = "rendering-blood-xyhiphoe-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-xyhiphoe",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "xyhiphoe", amount = 1},
			},
			results =
			{
				{name = "meat",            remove_item = true},
				{name = "shell",           remove_item = true},
				{name = "guts",            remove_item = true},
				{name = "arthropod-blood", remove_item = true},
				{name = "arthropod-blood", add_amount = 30},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-xyhiphoe-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--blood xyhiphoe rendering
		{
			ingredients =
			{
				{name = "xyhiphoe",       remove_item = true},
				{name = "blood-xyhiphoe", amount = 1},
			},
			results =
			{
				{name = "guts",            remove_item = true},
				{name = "arthropod-blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-blood-from-Improved-xyhiphoe-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/xyhiphoe.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------ZIPIR------------------

py.autorecipes {
	name = "rendering-blood-zipir-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-zipir",
	order = "b",
	mats =
	{
		--blood
		{
			ingredients =
			{
				{name = "zipir1", amount = 1},
			},
			results =
			{
				{name = "bones",           remove_item = true},
				{name = "meat",            remove_item = true},
				{name = "skin",            remove_item = true},
				{name = "chitin",          remove_item = true},
				{name = "arthropod-blood", remove_item = true},
				{name = "sulfuric-acid",   remove_item = true},
				{name = "mukmoux-fat",     remove_item = true},
				{name = "guts",            remove_item = true},
				{name = "blood",           remove_item = true},
				{name = "brain",           remove_item = true},
				{name = "arthropod-blood", add_amount = 30},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-zipir-blood-2",
			icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png",
			icon_size = 32,
		},
		--blood zipir rendering
		{
			ingredients =
			{
				{name = "zipir1",      remove_item = true},
				{name = "blood-zipir", amount = 1},
			},
			results =
			{
				{name = "guts",            remove_item = true},
				{name = "arthropod-blood", add_amount = 50},
			},
			crafting_speed = 15,
			tech = "transgenes",
			name = "Extract-Arthropod-blood-from-Improved Zipir-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/zipir.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}
