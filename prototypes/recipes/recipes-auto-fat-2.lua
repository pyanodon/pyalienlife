------------------ARTHURIANS------------------

py.autorecipes {
	name = "rendering-fat-arthurians-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-arthurian",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat", add_amount = 2},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-arthurian-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat arthurian rendering
		{
			ingredients =
			{
				{name = "caged-arthurian",     remove_item = true},
				{name = "fat-caged-arthurian", amount = 1},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-arthurians-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-arthurian.png",
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

py.autorecipes {
	name = "rendering-fat-auog-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-auog",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat", add_amount = 2},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-auog-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat auog rendering
		{
			ingredients =
			{
				{name = "caged-auog",     remove_item = true},
				{name = "fat-caged-auog", amount = 1},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-auogs-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-auog.png",
			icon_size = 64,
		},
	}
}

------------------COTTONGUTS------------------

py.autorecipes {
	name = "rendering-fat-cottongut-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-cottongut",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat", add_amount = 2},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-cottongut-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat cottongut rendering
		{
			ingredients =
			{
				{name = "cottongut",     remove_item = true},
				{name = "fat-cottongut", amount = 5},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-lard-from-Improved-cottonguts-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-cottongut.png",
			icon_size = 64,
		},
	}
}
------------------DHILMOS------------------

py.autorecipes {
	name = "rendering-fat-dhilmos-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-dhilmos",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat",     add_amount = 2},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-dhilmos-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat dhilmos rendering
		{
			ingredients =
			{
				{name = "dhilmos",     remove_item = true},
				{name = "fat-dhilmos", amount = 1},
			},
			results =
			{
				{name = "arthropod-blood", remove_item = true},
				{name = "mukmoux-fat",     add_amount = 6},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-dhilmoss-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-dhilmos.png",
			icon_size = 64,
		},
	}
}

------------------KMAUTS------------------

py.autorecipes {
	name = "rendering-fat-kmauts-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-kmauts",
	order = "b",
	mats =
	{
		--fat
		{
			ingredients =
			{
				{name = "caged-kmauts", amount = 1},
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
				{name = "mukmoux-fat", add_amount = 2},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-kmauts-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat kmauts rendering
		{
			ingredients =
			{
				{name = "caged-kmauts",     remove_item = true},
				{name = "fat-caged-kmauts", amount = 1},
			},
			results =
			{
				{name = "meat",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 2},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-kmauts-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-kmauts.png",
			icon_size = 64,
		},
	}
}

------------------KORLEX------------------

py.autorecipes {
	name = "rendering-fat-korlex-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-korlex",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat", add_amount = 2},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-Korlex-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat korlex rendering
		{
			ingredients =
			{
				{name = "caged-korlex",     remove_item = true},
				{name = "fat-caged-korlex", amount = 1},
			},
			results =
			{
				{name = "meat",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 3},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-Korlex-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-korlex.png",
			icon_size = 64,
		},
	}
}

------------------MUKMOUX------------------

py.autorecipes {
	name = "rendering-fat-mukmoux-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-mukmoux",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat", add_amount = 2},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-Mukmoux-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat mukmoux rendering
		{
			ingredients =
			{
				{name = "caged-mukmoux",     remove_item = true},
				{name = "fat-caged-mukmoux", amount = 1},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-Mukmouxs-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}

------------------PHADAI------------------

py.autorecipes {
	name = "rendering-fat-phadai-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-phadai",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat", add_amount = 2},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-phadai-Fat-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat phadai rendering
		{
			ingredients =
			{
				{name = "caged-phadai",     remove_item = true},
				{name = "fat-caged-phadai", amount = 1},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 4},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-phadais-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-phadai.png",
			icon_size = 64,
		},
	}
}

------------------SCRONDRIX------------------

py.autorecipes {
	name = "rendering-fat-scrondrix-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-scrondrix",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat", add_amount = 2},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-scrondrix-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat scrondrix rendering
		{
			ingredients =
			{
				{name = "caged-scrondrix",     remove_item = true},
				{name = "fat-caged-scrondrix", amount = 1},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-scrondrixs-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}

------------------SIMIKS------------------

py.autorecipes {
	name = "rendering-fat-simik-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-simik",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat", add_amount = 2},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-simik-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat simik rendering
		{
			ingredients =
			{
				{name = "caged-simik",     remove_item = true},
				{name = "fat-caged-simik", amount = 1},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-simik-2",
			icon = "__pyalienlifegraphics2__/graphics/icons/fat-caged-simik.png",
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

py.autorecipes {
	name = "rendering-fat-trits-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-trits",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat", add_amount = 3},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-Trits-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat trits rendering
		{
			ingredients =
			{
				{name = "trits",     remove_item = true},
				{name = "fat-trits", amount = 1},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 8},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-Trits-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-trits.png",
			icon_size = 64,
		},
	}
}

------------------ULRIC------------------

py.autorecipes {
	name = "rendering-fat-ulric-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-ulric",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat", add_amount = 2},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-Ulric-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat ulric rendering
		{
			ingredients =
			{
				{name = "caged-ulric",     remove_item = true},
				{name = "fat-caged-ulric", amount = 1},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-Ulrics-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-ulric.png",
			icon_size = 64,
		},
	}
}

------------------VONIX------------------

py.autorecipes {
	name = "rendering-fat-vonix-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-vonix",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat",     add_amount = 3},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-Vonix-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat vonix rendering
		{
			ingredients =
			{
				{name = "fat-vonix", remove_item = true},
				{name = "vonix",     remove_item = true},
				{name = "fat-vonix", amount = 1},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 6},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-Vonixes-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-vonix.png",
			icon_size = 64,
		},
	}
}



------------------ZIPIR------------------

py.autorecipes {
	name = "rendering-fat-zipir-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-zipir",
	order = "b",
	mats =
	{
		--fat
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
				{name = "mukmoux-fat",     add_amount = 3},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-zipir-lard-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",
			icon_size = 64,
		},
		--fat zipir rendering
		{
			ingredients =
			{
				{name = "zipir1",    remove_item = true},
				{name = "fat-zipir", amount = 1},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "fto4",
			name = "Extract-fat-from-Improved-Zipir-2",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-zipir.png",
			icon_size = 64,
		},
	}
}
