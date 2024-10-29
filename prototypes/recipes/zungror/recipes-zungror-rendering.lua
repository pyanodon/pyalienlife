------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_MEAT = 6
local BASE_SKIN = 4
local BASE_FAT = 5
local BASE_GUTS = 6
local BASE_BLOOD = 300
local BASE_BRAIN = 1

local IMP_MEAT = 13
local IMP_SKIN = 13
local IMP_FAT = 23
local IMP_GUTS = 20
local IMP_BLOOD = 450
local IMP_BRAIN = 5


py.autorecipes {
	name = "rendering-zungror",
	category = "slaughterhouse",
	subgroup = "py-alienlife-zungror",
	order = "b",
	crafting_speed = 50,
	mats =
	{
		{
			ingredients =
			{
				{name = "caged-zungror", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "meat",            amount = BASE_MEAT},
				{name = "skin",            amount = BASE_SKIN},
				{name = "mukmoux-fat",     amount = BASE_FAT},
				{name = "guts",            amount = BASE_GUTS},
				{name = "arthropod-blood", amount = BASE_BLOOD},
				{name = "brain",           amount = BASE_BRAIN},
				{name = "cage",            amount = INPUT_AMOUNT}
			},
			crafting_speed = 30,
			tech = "zungror",
			name = "full-render-zun",
			icon = "__pyalienlifegraphics3__/graphics/icons/rendering-zungror.png",
			icon_size = 64,
		},
		--brain zungror rendering
		{
			ingredients =
			{
				{name = "caged-zungror",       remove_item = true},
				{name = "brain-caged-zungror", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "meat",            remove_item = true},
				{name = "mukmoux-fat",     remove_item = true},
				{name = "skin",            remove_item = true},
				{name = "guts",            remove_item = true},
				{name = "arthropod-blood", remove_item = true},
				{name = "brain",           amount = IMP_BRAIN},
			},
			tech = "nanochondria",
			name = "ex-bra-zun",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-zungror.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-05.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--guts zungror rendering
		{
			ingredients =
			{
				{name = "brain-caged-zungror", remove_item = true},
				{name = "guts-caged-zungror",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "guts",  amount = IMP_GUTS},
			},
			tech = "antitumor",
			name = "ex-gut-zun",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-zungror.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png",  scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--blood zungror rendering
		{
			ingredients =
			{
				{name = "guts-caged-zungror",  remove_item = true},
				{name = "blood-caged-zungror", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "guts",            remove_item = true},
				{name = "arthropod-blood", amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-zun",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-zungror.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png", shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--skin zungror rendering
		{
			ingredients =
			{
				{name = "blood-caged-zungror", remove_item = true},
				{name = "skin-caged-zungror",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "arthropod-blood", remove_item = true},
				{name = "skin",            amount = IMP_SKIN},
			},
			tech = "reca",
			name = "ex-ski-zun",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-zungror.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/skin.png",         shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--fat zungror rendering
		{
			ingredients =
			{
				{name = "skin-caged-zungror", remove_item = true},
				{name = "fat-caged-zungror",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", amount = IMP_FAT},
			},
			tech = "orexigenic",
			name = "ex-fat-zun",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-zungror.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",  scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--meat zungror rendering
		{
			ingredients =
			{
				{name = "fat-caged-zungror",  remove_item = true},
				{name = "meat-caged-zungror", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "mukmoux-fat", remove_item = true},
				{name = "meat",        amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-zun",
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-zungror.png",
			icon_size = 64,
		},
	}
}
