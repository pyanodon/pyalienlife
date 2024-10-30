------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_MEAT = 2
local BASE_FAT = 2
local BASE_GUTS = 2
local BASE_BLOOD = 20
local BASE_BRAIN = 1
local BASE_SPECIAL = 2 -- tendon

local IMP_MEAT = 8
local IMP_FAT = 7
local IMP_GUTS = 7
local IMP_BLOOD = 80
local IMP_BRAIN = 4
local IMP_SPECIAL = 5


py.autorecipes {
	name = "rendering",
	category = "slaughterhouse",
	subgroup = "py-alienlife-kmauts",
	order = "b",
	crafting_speed = 30,
	mats =
	{
		{
			ingredients =
			{
				{name = "caged-kmauts", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "meat",            amount = BASE_MEAT},
				{name = "guts",            amount = BASE_GUTS},
				{name = "mukmoux-fat",     amount = BASE_FAT},
				{name = "tendon",          amount = BASE_SPECIAL},
				{name = "arthropod-blood", amount = BASE_BLOOD},
				{name = "cage",            amount = INPUT_AMOUNT},
				{name = "brain",           amount = BASE_BRAIN},
			},
			crafting_speed = 30,
			tech = "kmauts",
			name = "full-render-kmauts",
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-kmauts.png",
			icon_size = 64,
		},
		--brain kmauts rendering
		{
			ingredients =
			{
				{name = "caged-kmauts",       remove_item = true},
				{name = "brain-caged-kmauts", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "meat",            remove_item = true},
				{name = "mukmoux-fat",     remove_item = true},
				{name = "tendon",          remove_item = true},
				{name = "guts",            remove_item = true},
				{name = "arthropod-blood", remove_item = true},
				{name = "brain",           amount = IMP_BRAIN},
			},
			tech = "nanochondria",
			name = "ex-bra-kma",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-kmauts.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-05.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--guts kmauts rendering
		{
			ingredients =
			{
				{name = "brain-caged-kmauts", remove_item = true},
				{name = "guts-caged-kmauts",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "guts",  amount = IMP_GUTS},
			},
			tech = "antitumor",
			name = "ex-gut-kma",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-kmauts.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--blood kmauts rendering
		{
			ingredients =
			{
				{name = "guts-caged-kmauts",  remove_item = true},
				{name = "blood-caged-kmauts", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "guts",            remove_item = true},
				{name = "arthropod-blood", amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-kma",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-kmauts.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--meat kmauts rendering
		{
			ingredients =
			{
				{name = "blood-caged-kmauts", remove_item = true},
				{name = "meat-caged-kmauts",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "arthropod-blood", remove_item = true},
				{name = "tendon",          amount = IMP_SPECIAL},
				{name = "meat",            amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-kma",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-kmauts.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--fat kmauts rendering
		{
			ingredients =
			{
				{name = "meat-caged-kmauts", remove_item = true},
				{name = "fat-caged-kmauts",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "meat",        remove_item = true},
				{name = "tendon",      remove_item = true},
				{name = "mukmoux-fat", amount = IMP_FAT},
			},
			tech = "orexigenic",
			name = "ex-fat-kma",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-kmauts.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}
