------------------ARTHURIANS------------------

py.autorecipes {
	name = "rendering-bone-arthurians-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-arthurian",
	order = "b",
	mats =
	{
		--bone
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
				{name = "bones",       add_amount = 3},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-arthurian-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--bone arthurian rendering
		{
			ingredients =
			{
				{name = "caged-arthurian",      remove_item = true},
				{name = "bone-caged-arthurian", amount = 1},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-arthurians-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-arthurian.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png",   scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------AUOGS------------------

py.autorecipes {
	name = "rendering-bone-auog-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-auog",
	order = "b",
	mats =
	{

		--bone
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
				{name = "bones",       add_amount = 3},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-auog-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--bone auog rendering
		{
			ingredients =
			{
				{name = "caged-auog",      remove_item = true},
				{name = "bone-caged-auog", amount = 1},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-auogs-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-auog.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------COTTONGUT------------------

py.autorecipes {
	name = "rendering-bone-cottongut-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-cottongut",
	order = "b",
	mats =
	{

		--bone
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
				{name = "bones",       add_amount = 2},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-cottongut-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--bone cottongut rendering
		{
			ingredients =
			{
				{name = "cottongut",      remove_item = true},
				{name = "bone-cottongut", amount = 5},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 2},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-cottonguts-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/cottongut.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------DINGRITS------------------

py.autorecipes {
	name = "rendering-bone-dingrits-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-dingrits",
	order = "b",
	mats =
	{
		--bone
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
				{name = "bones",       add_amount = 3},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-dingrits-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--meat dingrits rendering
		{
			ingredients =
			{
				{name = "caged-dingrits",      remove_item = true},
				{name = "bone-caged-dingrits", amount = 1},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-dingrits-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-dingrits.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png",  scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------KORLEX------------------

py.autorecipes {
	name = "rendering-bone-korlex-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-korlex",
	order = "b",
	mats =
	{
		--bone
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
				{name = "bones",       add_amount = 3},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-Korlex-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--bone korlex rendering
		{
			ingredients =
			{
				{name = "caged-korlex",      remove_item = true},
				{name = "bone-caged-korlex", amount = 1},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-Korlex-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-korlex.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------MUKMOUX------------------

py.autorecipes {
	name = "rendering-bone-mukmoux-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-mukmoux",
	order = "b",
	mats =
	{
		--bone
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
				{name = "bones",       add_amount = 3},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-Mukmoux-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--bone mukmoux rendering
		{
			ingredients =
			{
				{name = "caged-mukmoux",      remove_item = true},
				{name = "bone-caged-mukmoux", amount = 1},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-Mukmouxs-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-mukmoux.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------PHADAI------------------

py.autorecipes {
	name = "rendering-bone-phadai-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-phadai",
	order = "b",
	mats =
	{
		--bone
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
				{name = "bones",       add_amount = 3},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-phadai-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--bone phadai rendering
		{
			ingredients =
			{
				{name = "caged-phadai",      remove_item = true},
				{name = "bone-caged-phadai", amount = 1},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-phadais-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-phadai.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------PHAGNOT------------------

py.autorecipes {
	name = "rendering-bone-phagnot-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-phagnot",
	order = "b",
	mats =
	{
		--bone
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
				{name = "bones",       add_amount = 4},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-phagnot-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--bone phagnot rendering
		{
			ingredients =
			{
				{name = "caged-phagnot",      remove_item = true},
				{name = "bone-caged-phagnot", amount = 1},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 8},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-phagnots-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-phagnot.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------SCRONDRIX------------------

py.autorecipes {
	name = "rendering-bone-scrondrix-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-scrondrix",
	order = "b",
	mats =
	{
		--bone
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
				{name = "bones",       add_amount = 3},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-scrondrix-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--bone scrondrix rendering
		{
			ingredients =
			{
				{name = "caged-scrondrix",      remove_item = true},
				{name = "bone-caged-scrondrix", amount = 1},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-scrondrixs-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-scrondrix.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png",   scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------SIMIKS------------------

py.autorecipes {
	name = "rendering-bone-simik-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-simik",
	order = "b",
	mats =
	{
		--bone
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
				{name = "bones",       add_amount = 3},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-simik-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--bone simik rendering
		{
			ingredients =
			{
				{name = "caged-simik",      remove_item = true},
				{name = "bone-caged-simik", amount = 1},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-simik-2",
			icons = {
				{icon = "__pyalienlifegraphics2__/graphics/icons/caged-simik.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------TRITS------------------

py.autorecipes {
	name = "rendering-bone-trits-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-trits",
	order = "b",
	mats =
	{
		--bone
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
				{name = "bones",       add_amount = 3},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-Trits-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--bone trits rendering
		{
			ingredients =
			{
				{name = "trits",      remove_item = true},
				{name = "bone-trits", amount = 1},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-Trits-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/trits.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------ULRIC------------------

py.autorecipes {
	name = "rendering-bone-ulric-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-ulric",
	order = "b",
	mats =
	{
		--bone
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
				{name = "bones",       add_amount = 3},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-Ulric-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--bone ulric rendering
		{
			ingredients =
			{
				{name = "caged-ulric",      remove_item = true},
				{name = "bone-caged-ulric", amount = 1},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 5},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-Ulrics-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-ulric.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}

------------------XENOS------------------

py.autorecipes {
	name = "rendering-bone-caged-xeno-2",
	category = "slaughterhouse",
	subgroup = "py-alienlife-xeno",
	order = "b",
	mats =
	{
		--bone
		{
			ingredients =
			{
				{name = "caged-xeno", amount = 1},
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
				{name = "cage",            amount = 1},
				{name = "bones",           add_amount = 3},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-Xeno-bones-2",
			icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-01.png",
			icon_size = 64,
		},
		--bone xeno rendering
		{
			ingredients =
			{
				{name = "chitin-caged-xeno", remove_item = true},
				{name = "caged-xeno",        remove_item = true},
				{name = "bone-caged-xeno",   amount = 1},
				{name = "cage",              remove_item = true},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", add_amount = 4},
			},
			crafting_speed = 15,
			tech = "hardened-bone",
			name = "Extract-bones-from-Improved-xenos-2",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/xeno.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}
