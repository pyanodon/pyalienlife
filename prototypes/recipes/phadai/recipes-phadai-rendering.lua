------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 2
local BASE_MEAT = 4
local BASE_SKIN = 2
local BASE_FAT = 1
local BASE_GUTS = 3
local BASE_BLOOD = 30
local BASE_BRAIN = 1

local IMP_BONES = 10
local IMP_MEAT = 12
local IMP_SKIN = 5
local IMP_FAT = 7
local IMP_GUTS = 12
local IMP_BLOOD = 100
local IMP_BRAIN = 6


py.autorecipes {
	name = "rendering",
	category = "slaughterhouse",
	subgroup = "py-alienlife-phadai",
	order = "b",
	crafting_speed = 30,
	mats =
	{
		{
			ingredients =
			{
				{name = "caged-phadai", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",       amount = BASE_BONES},
				{name = "meat",        amount = BASE_MEAT},
				{name = "guts",        amount = BASE_GUTS},
				{name = "mukmoux-fat", amount = BASE_FAT},
				{name = "carapace",    amount = BASE_SKIN},
				{name = "blood",       amount = BASE_BLOOD},
				{name = "cage",        amount = INPUT_AMOUNT},
				{name = "brain",       amount = BASE_BRAIN},
			},
			crafting_speed = 30,
			tech = "phadai",
			name = "full-render-phadais",
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-phadai.png",
			icon_size = 64,
		},
		--brain phadai rendering
		{
			ingredients =
			{
				{name = "caged-phadai",       remove_item = true},
				{name = "brain-caged-phadai", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "carapace",    remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       amount = IMP_BRAIN},
			},
			tech = "nanochondria",
			name = "ex-bra-pha",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-phadai.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-05.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--bone phadai rendering
		{
			ingredients =
			{
				{name = "brain-caged-phadai", remove_item = true},
				{name = "bone-caged-phadai",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", amount = IMP_BONES},
			},
			tech = "bmp",
			name = "ex-bon-pha",
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-phadai.png",
			icon_size = 64,
		},
		--guts phadai rendering
		{
			ingredients =
			{
				{name = "bone-caged-phadai", remove_item = true},
				{name = "guts-caged-phadai", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones", remove_item = true},
				{name = "guts",  amount = IMP_GUTS},
			},
			tech = "antitumor",
			name = "ex-gut-pha",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-phadai.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--blood phadai rendering
		{
			ingredients =
			{
				{name = "guts-caged-phadai",  remove_item = true},
				{name = "blood-caged-phadai", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-pha",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-phadai.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",       scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--meat phadai rendering
		{
			ingredients =
			{
				{name = "blood-caged-phadai", remove_item = true},
				{name = "meat-caged-phadai",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "blood", remove_item = true},
				{name = "meat",  amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-pha",
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-phadai.png",
			icon_size = 64,
		},
		--skin phadai rendering
		{
			ingredients =
			{
				{name = "meat-caged-phadai", remove_item = true},
				{name = "skin-caged-phadai", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "meat",     remove_item = true},
				{name = "carapace", amount = IMP_SKIN},
			},
			tech = "reca",
			name = "ex-ski-pha",
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-phadai.png",
			icon_size = 64,
		},
		--fat phadai rendering
		{
			ingredients =
			{
				{name = "skin-caged-phadai", remove_item = true},
				{name = "fat-caged-phadai",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "carapace",    remove_item = true},
				{name = "mukmoux-fat", amount = IMP_FAT},
			},
			tech = "orexigenic",
			name = "ex-fat-pha",
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-phadai.png",
			icon_size = 64,
		},
	}
}
