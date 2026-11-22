------------------RENDERING------------------

local INPUT_AMOUNT = 5

local BASE_BONES = 5
local BASE_MEAT = 4
local BASE_SKIN = 4
local BASE_FAT = 5
local BASE_GUTS = 5
local BASE_BLOOD = 60
local BASE_BRAIN = 2

local IMP_BONES = 12
local IMP_MEAT = 7
local IMP_SKIN = 4
local IMP_FAT = 6
local IMP_GUTS = 10
local IMP_BLOOD = 90
local IMP_BRAIN = 5


py.autorecipes {
	name = "rendering-cottongut",
	category = "slaughterhouse",
	subgroup = "py-alienlife-cottongut",
	order = "b",
	crafting_speed = 30,
	mats =
	{
		{
			ingredients =
			{
				{name = "cottongut", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",       amount = BASE_BONES},
				{name = "meat",        amount = BASE_MEAT},
				{name = "skin",        amount = BASE_SKIN},
				{name = "guts",        amount = BASE_GUTS},
				{name = "mukmoux-fat", amount = BASE_FAT},
				{name = "blood",       amount = BASE_BLOOD},
				{name = "brain",       amount = BASE_BRAIN},
			},
			crafting_speed = 30,
			tech = "cottongut-mk01",
			name = "full-render-cottongut",
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-cottongut.png",
			icon_size = 64,
		},
		--brain cottongut rendering
		{
			ingredients =
			{
				{name = "cottongut",       remove_item = true},
				{name = "brain-cottongut", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       amount = IMP_BRAIN},
			},
			tech = "nanochondria",
			name = "ex-bra-cot",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/cottongut.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-05.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--bone cottongut rendering
		{
			ingredients =
			{
				{name = "brain-cottongut", remove_item = true},
				{name = "bone-cottongut",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", amount = IMP_BONES},
			},
			tech = "bmp",
			name = "ex-bon-cot",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/cottongut.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--guts cottongut rendering
		{
			ingredients =
			{
				{name = "bone-cottongut", remove_item = true},
				{name = "guts-cottongut", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones", remove_item = true},
				{name = "guts",  amount = IMP_GUTS},
			},
			tech = "antitumor",
			name = "ex-gut-cot",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/cottongut.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--blood cottongut rendering
		{
			ingredients =
			{
				{name = "guts-cottongut",  remove_item = true},
				{name = "blood-cottongut", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-cot",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/cottongut.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",    scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--skin cottongut rendering
		{
			ingredients =
			{
				{name = "blood-cottongut", remove_item = true},
				{name = "skin-cottongut",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "blood", remove_item = true},
				{name = "skin",  amount = IMP_SKIN},
			},
			tech = "reca",
			name = "ex-ski-cot",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/cottongut.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/skin.png",     scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--fat cottongut rendering
		{
			ingredients =
			{
				{name = "skin-cottongut", remove_item = true},
				{name = "fat-cottongut",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", amount = IMP_FAT},
			},
			tech = "orexigenic",
			name = "ex-fat-cot",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/cottongut.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--meat cottongut rendering
		{
			ingredients =
			{
				{name = "fat-cottongut",  remove_item = true},
				{name = "meat-cottongut", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "mukmoux-fat", remove_item = true},
				{name = "meat",        amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-cot",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/cottongut.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}
