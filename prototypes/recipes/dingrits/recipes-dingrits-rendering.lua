------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 2
local BASE_MEAT = 4
local BASE_SKIN = 2 -- pelt
local BASE_GUTS = 4
local BASE_BLOOD = 30
local BASE_BRAIN = 1
local BASE_SPECIAL = 1 -- spike

local IMP_BONES = 8
local IMP_MEAT = 7
local IMP_SKIN = 3
local IMP_GUTS = 10
local IMP_BLOOD = 100
local IMP_BRAIN = 5
local IMP_SPECIAL = 2


py.autorecipes {
	name = "rendering",
	category = "slaughterhouse",
	subgroup = "py-alienlife-dingrits",
	order = "b",
	crafting_speed = 30,
	mats =
	{
		{
			ingredients =
			{
				{name = "caged-dingrits", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",         amount = BASE_BONES},
				{name = "meat",          amount = BASE_MEAT},
				{name = "guts",          amount = BASE_GUTS},
				{name = "pelt",          amount = BASE_SKIN},
				{name = "dingrit-spike", amount = BASE_SPECIAL},
				{name = "blood",         amount = BASE_BLOOD},
				{name = "cage",          amount = INPUT_AMOUNT},
				{name = "brain",         amount = BASE_BRAIN},
			},
			crafting_speed = 30,
			tech = "dingrits",
			name = "full-render-dingrits",
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-dingrits.png",
			icon_size = 64,
		},
		--brain dingrits rendering
		{
			ingredients =
			{
				{name = "caged-dingrits",       remove_item = true},
				{name = "brain-caged-dingrits", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",         remove_item = true},
				{name = "meat",          remove_item = true},
				{name = "pelt",          remove_item = true},
				{name = "dingrit-spike", remove_item = true},
				{name = "mukmoux-fat",   remove_item = true},
				{name = "skin",          remove_item = true},
				{name = "guts",          remove_item = true},
				{name = "blood",         remove_item = true},
				{name = "brain",         amount = IMP_BRAIN},
			},
			tech = "nanochondria",
			name = "ex-bra-din",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-dingrits.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-05.png",  scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--bone dingrits rendering
		{
			ingredients =
			{
				{name = "brain-caged-dingrits", remove_item = true},
				{name = "bone-caged-dingrits",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "brain",         remove_item = true},
				{name = "dingrit-spike", amount = IMP_SPECIAL},
				{name = "bones",         amount = IMP_BONES},
			},
			tech = "bmp",
			name = "ex-bon-din",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-dingrits.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png",  scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--guts dingrits rendering
		{
			ingredients =
			{
				{name = "bone-caged-dingrits", remove_item = true},
				{name = "guts-caged-dingrits", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",         remove_item = true},
				{name = "dingrit-spike", remove_item = true},
				{name = "guts",          amount = IMP_GUTS},
			},
			tech = "antitumor",
			name = "ex-gut-din",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-dingrits.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png",   scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--blood dingrits rendering
		{
			ingredients =
			{
				{name = "guts-caged-dingrits",  remove_item = true},
				{name = "blood-caged-dingrits", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "guts",  remove_item = true},
				{name = "blood", amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-din",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-dingrits.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/blood.png",         scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--meat dingrits rendering
		{
			ingredients =
			{
				{name = "blood-caged-dingrits", remove_item = true},
				{name = "meat-caged-dingrits",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "blood", remove_item = true},
				{name = "meat",  amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-din",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-dingrits.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png",   scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--skin dingrits rendering
		{
			ingredients =
			{
				{name = "meat-caged-dingrits", remove_item = true},
				{name = "skin-caged-dingrits", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "meat", remove_item = true},
				{name = "pelt", amount = IMP_SKIN},
			},
			tech = "reca",
			name = "ex-pelt-din",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-dingrits.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/skin.png",          scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--USED dingrit rendering
		{
			ingredients =
			{
				{name = "skin-caged-dingrits", remove_item = true},
				{name = "used-dingrit",        amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",         amount = BASE_BONES},
				{name = "meat",          remove_item = true},
				{name = "pelt",          amount = BASE_SKIN},
				{name = "dingrit-spike", amount = BASE_SPECIAL},
				{name = "guts",          amount = BASE_GUTS},
				{name = "blood",         remove_item = true},
				{name = "brain",         amount = BASE_BRAIN},
				{name = "cage",          remove_item = true},
			},
			tech = "domestication-mk03",
			name = "ex-used-dingrits",
			icon = "__pyalienlifegraphics__/graphics/icons/used-dingrit.png",
			icon_size = 64,
		},
	}
}
