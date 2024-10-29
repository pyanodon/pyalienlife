------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 6 -- bonemeal
local BASE_MEAT = 4
local BASE_SKIN = 2
local BASE_FAT = 2
local BASE_GUTS = 3
local BASE_BLOOD = 80
local BASE_BRAIN = 1

local IMP_BONES = 24
local IMP_MEAT = 11
local IMP_SKIN = 10
local IMP_FAT = 10
local IMP_GUTS = 12
local IMP_BLOOD = 200
local IMP_BRAIN = 4


py.autorecipes {
	name = "rendering-ulric",
	category = "slaughterhouse",
	subgroup = "py-alienlife-ulric",
	order = "b",
	crafting_speed = 30,
	mats =
	{
		{
			ingredients =
			{
				{name = "caged-ulric", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bonemeal",    amount = BASE_BONES},
				{name = "meat",        amount = BASE_MEAT},
				{name = "skin",        amount = BASE_SKIN},
				{name = "mukmoux-fat", amount = BASE_FAT},
				{name = "guts",        amount = BASE_GUTS},
				{name = "blood",       amount = BASE_BLOOD},
				{name = "cage",        amount = INPUT_AMOUNT},
				{name = "brain",       amount = BASE_BRAIN},
			},
			crafting_speed = 30,
			tech = "ulric",
			name = "full-render-ulrics",
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-ulric.png",
			icon_size = 64,
		},
		--brain ulric rendering
		{
			ingredients =
			{
				{name = "caged-ulric",       remove_item = true},
				{name = "brain-caged-ulric", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bonemeal",    remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "skin",        remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "blood",       remove_item = true},
				{name = "brain",       amount = IMP_BRAIN},
			},
			tech = "nanochondria",
			name = "ex-bra-ulr",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-ulric.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-05.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--bone ulric rendering
		{
			ingredients =
			{
				{name = "brain-caged-ulric", remove_item = true},
				{name = "bone-caged-ulric",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "brain",    remove_item = true},
				{name = "bonemeal", amount = IMP_BONES},
			},
			tech = "bmp",
			name = "ex-bon-ulr",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-ulric.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--guts ulric rendering
		{
			ingredients =
			{
				{name = "bone-caged-ulric", remove_item = true},
				{name = "guts-caged-ulric", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bonemeal", remove_item = true},
				{name = "guts",     amount = IMP_GUTS},
			},
			tech = "antitumor",
			name = "ex-gut-ulr",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-ulric.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--blood ulric rendering
		{
			ingredients =
			{
				{name = "guts-caged-ulric",  remove_item = true},
				{name = "blood-caged-ulric", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-ulr",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-ulric.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",      scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--skin ulric rendering
		{
			ingredients =
			{
				{name = "blood-caged-ulric", remove_item = true},
				{name = "skin-caged-ulric",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "blood", remove_item = true},
				{name = "skin",  amount = IMP_SKIN},
			},
			tech = "reca",
			name = "ex-ski-ulr",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-ulric.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/skin.png",       shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--fat ulric rendering
		{
			ingredients =
			{
				{name = "skin-caged-ulric", remove_item = true},
				{name = "fat-caged-ulric",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				{name = "mukmoux-fat", amount = IMP_FAT},
			},
			tech = "orexigenic",
			name = "ex-fat-ulr",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-ulric.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--meat ulric rendering
		{
			ingredients =
			{
				{name = "fat-caged-ulric",  remove_item = true},
				{name = "meat-caged-ulric", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "mukmoux-fat", remove_item = true},
				{name = "meat",        amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-ulr",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-ulric.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}
