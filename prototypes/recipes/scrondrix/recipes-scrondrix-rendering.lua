------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 4
local BASE_MEAT = 5
local BASE_SKIN = 3
local BASE_FAT = 3
local BASE_GUTS = 4
local BASE_BLOOD = 70
local BASE_BRAIN = 1
local BASE_SPECIAL = 1 -- pineal gland

local IMP_BONES = 13
local IMP_MEAT = 12
local IMP_SKIN = 10
local IMP_FAT = 10
local IMP_GUTS = 12
local IMP_BLOOD = 170
local IMP_BRAIN = 5
local IMP_SPECIAL = 4


py.autorecipes {
	name = "rendering",
	category = "slaughterhouse",
	subgroup = "py-alienlife-scrondrix",
	order = "b",
	crafting_speed = 30,
	mats =
	{
		{
			ingredients =
			{
				{name = "caged-scrondrix", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",        amount = BASE_BONES},
				{name = "meat",         amount = BASE_MEAT},
				{name = "skin",         amount = BASE_SKIN},
				{name = "mukmoux-fat",  amount = BASE_FAT},
				{name = "guts",         amount = BASE_GUTS},
				{name = "blood",        amount = BASE_BLOOD},
				{name = "pineal-gland", amount = BASE_SPECIAL},
				{name = "cage",         amount = INPUT_AMOUNT},
				{name = "brain",        amount = BASE_BRAIN},
			},
			crafting_speed = 30,
			tech = "scrondrix",
			name = "full-render-scrondrixs",
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-scrondrix.png",
			icon_size = 64,
		},
		--brain scrondrix rendering
		{
			ingredients =
			{
				{name = "caged-scrondrix",       remove_item = true},
				{name = "brain-caged-scrondrix", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",        remove_item = true},
				{name = "meat",         remove_item = true},
				{name = "mukmoux-fat",  remove_item = true},
				{name = "skin",         remove_item = true},
				{name = "guts",         remove_item = true},
				{name = "blood",        remove_item = true},
				{name = "brain",        amount = IMP_BRAIN},
				{name = "pineal-gland", amount = IMP_SPECIAL},
			},
			tech = "nanochondria",
			name = "ex-bra-scro",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-scrondrix.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-05.png",   scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--bone scrondrix rendering
		{
			ingredients =
			{
				{name = "brain-caged-scrondrix", remove_item = true},
				{name = "bone-caged-scrondrix",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "brain",        remove_item = true},
				{name = "pineal-gland", remove_item = true},
				{name = "bones",        amount = IMP_BONES},
			},
			tech = "bmp",
			name = "ex-bon-scro",
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-scrondrix.png",
			icon_size = 64,
		},
		--guts scrondrix rendering
		{
			ingredients =
			{
				{name = "bone-caged-scrondrix", remove_item = true},
				{name = "guts-caged-scrondrix", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones", remove_item = true},
				{name = "guts",  amount = IMP_GUTS},
			},
			tech = "antitumor",
			name = "ex-gut-scro",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-scrondrix.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png",    scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--blood scrondrix rendering
		{
			ingredients =
			{
				{name = "guts-caged-scrondrix",  remove_item = true},
				{name = "blood-caged-scrondrix", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-scro",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-scrondrix.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",          scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--skin scrondrix rendering
		{
			ingredients =
			{
				{name = "blood-caged-scrondrix", remove_item = true},
				{name = "skin-caged-scrondrix",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "blood", remove_item = true},
				{name = "skin",  amount = IMP_SKIN},
			},
			tech = "reca",
			name = "ex-ski-scro",
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-scrondrix.png",
			icon_size = 64,
		},
		--fat scrondrix rendering
		{
			ingredients =
			{
				{name = "skin-caged-scrondrix", remove_item = true},
				{name = "fat-caged-scrondrix",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", amount = IMP_FAT},
			},
			tech = "orexigenic",
			name = "ex-fat-scro",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-scrondrix.png",
			icon_size = 64,
		},
		--meat scrondrix rendering
		{
			ingredients =
			{
				{name = "fat-caged-scrondrix",  remove_item = true},
				{name = "meat-caged-scrondrix", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "mukmoux-fat", remove_item = true},
				{name = "meat",        amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-scro",
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-scrondrix.png",
			icon_size = 64,
		},
	}
}
