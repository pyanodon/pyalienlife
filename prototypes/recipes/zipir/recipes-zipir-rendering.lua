------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_MEAT = 4
local BASE_SKIN = 6
local BASE_FAT = 3
local BASE_GUTS = 4
local BASE_BLOOD = 65
local BASE_BRAIN = 1

local IMP_MEAT = 13
local IMP_SKIN = 17
local IMP_FAT = 15
local IMP_GUTS = 13
local IMP_BLOOD = 170
local IMP_BRAIN = 4


py.autorecipes {
	name = "rendering-zipir",
	category = "slaughterhouse",
	subgroup = "py-alienlife-zipir",
	order = "b",
	crafting_speed = 30,
	mats =
	{
		{
			ingredients =
			{
				{name = "zipir1", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "meat",            amount = BASE_MEAT},
				{name = "skin",            amount = BASE_SKIN},
				{name = "mukmoux-fat",     amount = BASE_FAT},
				{name = "guts",            amount = BASE_GUTS},
				{name = "arthropod-blood", amount = BASE_BLOOD},
				{name = "brain",           amount = BASE_BRAIN},
			},
			crafting_speed = 30,
			tech = "zipir",
			name = "full-render-zipir",
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-zipir.png",
			icon_size = 64,
		},
		--brain zipir rendering
		{
			ingredients =
			{
				{name = "zipir1",      remove_item = true},
				{name = "brain-zipir", amount = INPUT_AMOUNT},
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
			name = "ex-bra-zipir",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/zipir.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-05.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--guts zipir rendering
		{
			ingredients =
			{
				{name = "brain-zipir", remove_item = true},
				{name = "guts-zipir",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "guts",  amount = IMP_GUTS},
			},
			tech = "antitumor",
			name = "ex-gut-zipir",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/zipir.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--blood zipir rendering
		{
			ingredients =
			{
				{name = "guts-zipir",  remove_item = true},
				{name = "blood-zipir", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "guts",            remove_item = true},
				{name = "arthropod-blood", amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-zipir",
			icon = "__pyalienlifegraphics__/graphics/icons/blood-zipir.png",
			icon_size = 64,
		},
		--skin zipir rendering
		{
			ingredients =
			{
				{name = "blood-zipir", remove_item = true},
				{name = "skin-zipir",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "arthropod-blood", remove_item = true},
				{name = "skin",            amount = IMP_SKIN},
			},
			tech = "reca",
			name = "ex-ski-zipir",
			icon = "__pyalienlifegraphics__/graphics/icons/skin-zipir.png",
			icon_size = 64,
		},
		--fat zipir rendering
		{
			ingredients =
			{
				{name = "skin-zipir", remove_item = true},
				{name = "fat-zipir",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", amount = IMP_FAT},
			},
			tech = "orexigenic",
			name = "ex-fat-zipir",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-zipir.png",
			icon_size = 64,
		},
		--meat zipir rendering
		{
			ingredients =
			{
				{name = "fat-zipir",  remove_item = true},
				{name = "meat-zipir", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "mukmoux-fat", remove_item = true},
				{name = "meat",        amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-zipir",
			icon = "__pyalienlifegraphics__/graphics/icons/meat-zipir.png",
			icon_size = 64,
		},
	}
}
