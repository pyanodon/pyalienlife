------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 6
local BASE_MEAT = 2
local BASE_SKIN = 1
local BASE_GUTS = 1
local BASE_BLOOD = 40
local BASE_BRAIN = 1
local BASE_SPECIAL = 1 -- bladder

local IMP_BONES = 30
local IMP_MEAT = 11
local IMP_SKIN = 7
local IMP_GUTS = 10
local IMP_BLOOD = 100
local IMP_BRAIN = 5
local IMP_SPECIAL = 2


py.autorecipes {
	name = "rendering",
	category = "slaughterhouse",
	subgroup = "py-alienlife-phagnot",
	order = "b",
	crafting_speed = 30,
	mats =
	{
		{
			ingredients =
			{
				{name = "caged-phagnot", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",       amount = BASE_BONES},
				{name = "meat",        amount = BASE_MEAT},
				{name = "skin",        amount = BASE_SKIN},
				{name = "guts",        amount = BASE_GUTS},
				{name = "gas-bladder", amount = BASE_SPECIAL},
				{name = "blood",       amount = BASE_BLOOD},
				{name = "cage",        amount = INPUT_AMOUNT},
				{name = "brain",       amount = BASE_BRAIN},
			},
			crafting_speed = 30,
			tech = "phagnot",
			name = "full-render-phagnots",
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-phagnot.png",
			icon_size = 64,
		},
		--brain phagnot rendering
		{
			ingredients =
			{
				{name = "caged-phagnot",       remove_item = true},
				{name = "brain-caged-phagnot", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "gas-bladder", remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       amount = IMP_BRAIN},
			},
			tech = "nanochondria",
			name = "ex-bra-phag",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-phagnot.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-05.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--bone phagnot rendering
		{
			ingredients =
			{
				{name = "brain-caged-phagnot", remove_item = true},
				{name = "bone-caged-phagnot",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", amount = IMP_BONES},
			},
			tech = "bmp",
			name = "ex-bon-phag",
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-phagnot.png",
			icon_size = 64,
		},
		--guts phagnot rendering
		{
			ingredients =
			{
				{name = "bone-caged-phagnot", remove_item = true},
				{name = "guts-caged-phagnot", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "gas-bladder", amount = IMP_SPECIAL},
				{name = "guts",        amount = IMP_GUTS},
			},
			tech = "antitumor",
			name = "ex-gut-phag",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-phagnot.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png",  scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--blood phagnot rendering
		{
			ingredients =
			{
				{name = "guts-caged-phagnot",  remove_item = true},
				{name = "blood-caged-phagnot", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "guts",        remove_item = true},
				{name = "gas-bladder", remove_item = true},
				{name = "blood",       amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-phag",
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-phagnot.png",
			icon_size = 64,
		},
		--skin phagnot rendering
		{
			ingredients =
			{
				{name = "blood-caged-phagnot", remove_item = true},
				{name = "skin-caged-phagnot",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "blood", remove_item = true},
				{name = "skin",  amount = IMP_SKIN},
			},
			tech = "reca",
			name = "ex-ski-phag",
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-phagnot.png",
			icon_size = 64,
		},
		--meat phagnot rendering
		{
			ingredients =
			{
				{name = "skin-caged-phagnot", remove_item = true},
				{name = "meat-caged-phagnot", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "skin", remove_item = true},
				{name = "meat", amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-phag",
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-phagnot.png",
			icon_size = 64,
		},
	}
}
