------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 4
local BASE_MEAT = 3
local BASE_SKIN = 3 -- chitin
local BASE_FAT = 3
local BASE_GUTS = 3
local BASE_BLOOD = 80
local BASE_BRAIN = 1
local BASE_SPECIAL = 3 -- keratin

local IMP_BONES = 12
local IMP_MEAT = 11
local IMP_SKIN = 1 -- scales
local IMP_FAT = 8
local IMP_GUTS = 8
local IMP_BLOOD = 150
local IMP_BRAIN = 6
local IMP_SPECIAL = 10


py.autorecipes {
	name = "rendering",
	category = "slaughterhouse",
	subgroup = "py-alienlife-simik",
	order = "b",
	crafting_speed = 30,
	mats =
	{
		{
			ingredients =
			{
				{name = "caged-simik", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",       amount = BASE_BONES},
				{name = "meat",        amount = BASE_MEAT},
				{name = "chitin",      amount = BASE_SKIN},
				{name = "mukmoux-fat", amount = BASE_FAT},
				{name = "guts",        amount = BASE_GUTS},
				{name = "keratin",     amount = BASE_SPECIAL},
				{name = "simik-blood", amount = BASE_BLOOD},
				{name = "cage",        amount = INPUT_AMOUNT},
				{name = "brain",       amount = BASE_BRAIN},
			},
			crafting_speed = 30,
			tech = "simik-mk01",
			name = "full-render-simik",
			icon = "__pyalienlifegraphics2__/graphics/icons/rendering-simik.png",
			icon_size = 64,
		},
		--brain simik rendering
		{
			ingredients =
			{
				{name = "caged-simik",       remove_item = true},
				{name = "brain-caged-simik", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",       remove_item = true},
				{name = "meat",        remove_item = true},
				{name = "mukmoux-fat", remove_item = true},
				{name = "chitin",      remove_item = true},
				{name = "keratin",     remove_item = true},
				{name = "guts",        remove_item = true},
				{name = "simik-blood", remove_item = true},
				{name = "brain",       amount = IMP_BRAIN},
			},
			tech = "nanochondria",
			name = "ex-bra-sim",
			icons = {
				{icon = "__pyalienlifegraphics2__/graphics/icons/caged-simik.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-05.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--bone simik rendering
		{
			ingredients =
			{
				{name = "brain-caged-simik", remove_item = true},
				{name = "bone-caged-simik",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "brain",   remove_item = true},
				{name = "keratin", amount = IMP_SPECIAL},
				{name = "bones",   amount = IMP_BONES},
			},
			tech = "bmp",
			name = "ex-bon-sim",
			icons = {
				{icon = "__pyalienlifegraphics2__/graphics/icons/caged-simik.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--meat simik rendering
		{
			ingredients =
			{
				{name = "bone-caged-simik", remove_item = true},
				{name = "meat-caged-simik", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",   remove_item = true},
				{name = "keratin", remove_item = true},
				{name = "meat",    amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-sim",
			icons = {
				{icon = "__pyalienlifegraphics2__/graphics/icons/caged-simik.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--guts simik rendering
		{
			ingredients =
			{
				{name = "meat-caged-simik", remove_item = true},
				{name = "guts-caged-simik", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "meat", remove_item = true},
				{name = "guts", amount = IMP_GUTS},
			},
			tech = "antitumor",
			name = "ex-gut-sim",
			icons = {
				{icon = "__pyalienlifegraphics2__/graphics/icons/caged-simik.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--blood simik rendering
		{
			ingredients =
			{
				{name = "guts-caged-simik",  remove_item = true},
				{name = "blood-caged-simik", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "guts",        remove_item = true},
				{name = "simik-blood", amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-sim",
			icons = {
				{icon = "__pyalienlifegraphics2__/graphics/icons/caged-simik.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",       scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--skin simik rendering
		{
			ingredients =
			{
				{name = "blood-caged-simik", remove_item = true},
				{name = "skin-caged-simik",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "simik-blood",  remove_item = true},
				{name = "keratin",      remove_item = true},
				{name = "simik-scales", amount = IMP_SKIN},
				--{name='keratin', amount = IMP_SPECIAL},
			},
			tech = "reca",
			name = "ex-ski-sim",
			icons =
			{
				{icon = "__pyalienlifegraphics2__/graphics/icons/caged-simik.png", icon_size = 64},
				{icon = "__pyalienlifegraphics2__/graphics/icons/skull.png",       icon_size = 64, scale = 0.25, shift = {-7.5, -7.5}},
			},
		},
		--fat simik rendering
		{
			ingredients =
			{
				{name = "skin-caged-simik", remove_item = true},
				{name = "fat-caged-simik",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "simik-scales", remove_item = true},
				{name = "keratin",      remove_item = true},
				{name = "mukmoux-fat",  amount = IMP_FAT},
			},
			tech = "orexigenic",
			name = "ex-fat-sim",
			icons = {
				{icon = "__pyalienlifegraphics2__/graphics/icons/caged-simik.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}
