------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 4
local BASE_MEAT = 5
local BASE_SKIN = 2
local BASE_FAT = 1
local BASE_GUTS = 4
local BASE_BLOOD = 50
local BASE_BRAIN = 2

local IMP_BONES = 12
local IMP_MEAT = 10
local IMP_SKIN = 7
local IMP_FAT = 6
local IMP_GUTS = 10
local IMP_BLOOD = 160
local IMP_BRAIN = 8


py.autorecipes {
	name = "rendering-arthurian",
	category = "slaughterhouse",
	subgroup = "py-alienlife-arthurian",
	order = "b",
	crafting_speed = 30,
	mats =
	{
		{
			ingredients =
			{
				{name = "caged-arthurian", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",       amount = BASE_BONES},
				{name = "meat",        amount = BASE_MEAT},
				{name = "skin",        amount = BASE_SKIN},
				{name = "mukmoux-fat", amount = BASE_FAT},
				{name = "guts",        amount = BASE_GUTS},
				{name = "blood",       amount = BASE_BLOOD},
				{name = "cage",        amount = INPUT_AMOUNT},
				{name = "brain",       amount = BASE_BRAIN},
			},
			crafting_speed = 30,
			tech = "arthurian",
			name = "full-render-arthurian",
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-arthurian.png",
			icon_size = 64,
		},
		--brain arthurian rendering
		{
			ingredients =
			{
				{name = "caged-arthurian",       remove_item = true},
				{name = "brain-caged-arthurian", amount = INPUT_AMOUNT},
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
			name = "ex-bra-art",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-arthurian.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-05.png",   scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--bone arthurian rendering
		{
			ingredients =
			{
				{name = "brain-caged-arthurian", remove_item = true},
				{name = "bone-caged-arthurian",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "brain", remove_item = true},
				--{name='brain', amount = BASE_BRAIN},
				{name = "bones", amount = IMP_BONES},
			},
			tech = "bmp",
			name = "ex-bon-art",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-arthurian.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png",   scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--guts arthurian rendering
		{
			ingredients =
			{
				{name = "bone-caged-arthurian", remove_item = true},
				{name = "guts-caged-arthurian", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones", remove_item = true},
				--{name='bones', amount = BASE_BONES},
				{name = "guts",  amount = IMP_GUTS},
			},
			tech = "antitumor",
			name = "ex-gut-art",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-arthurian.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png",    scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--blood arthurian rendering
		{
			ingredients =
			{
				{name = "guts-caged-arthurian",  remove_item = true},
				{name = "blood-caged-arthurian", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				--{name='guts', amount = BASE_GUTS},
				{name = "blood", amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-art",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-arthurian.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",          scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--skin arthurian rendering
		{
			ingredients =
			{
				{name = "blood-caged-arthurian", remove_item = true},
				{name = "skin-caged-arthurian",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "blood", remove_item = true},
				--{name='blood', amount = BASE_BLOOD},
				{name = "skin",  amount = IMP_SKIN},
			},
			tech = "reca",
			name = "ex-ski-art",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-arthurian.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/skin.png",           scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--fat arthurian rendering
		{
			ingredients =
			{
				{name = "skin-caged-arthurian", remove_item = true},
				{name = "fat-caged-arthurian",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "skin",        remove_item = true},
				--{name='skin', amount = BASE_SKIN},
				{name = "mukmoux-fat", amount = IMP_FAT},
			},
			tech = "orexigenic",
			name = "ex-fat-art",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-arthurian.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png",    scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--meat arthurian rendering
		{
			ingredients =
			{
				{name = "fat-caged-arthurian",  remove_item = true},
				{name = "meat-caged-arthurian", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "mukmoux-fat", remove_item = true},
				--{name='mukmoux-fat', amount = BASE_FAT},
				{name = "meat",        amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-art",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-arthurian.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",    scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}
