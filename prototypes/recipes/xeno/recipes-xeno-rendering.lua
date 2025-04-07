------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 3
local BASE_MEAT = 4
local BASE_SKIN = 4   -- chitin
local BASE_BLOOD = 80 -- sulfuric-acid
local BASE_BRAIN = 1

local IMP_BONES = 11
local IMP_MEAT = 10
local IMP_SKIN = 23
local IMP_BLOOD = 200
local IMP_BRAIN = 4


py.autorecipes {
	name = "rendering-xeno",
	category = "slaughterhouse",
	subgroup = "py-alienlife-xeno",
	order = "b",
	crafting_speed = 25,
	mats =
	{
		{
			ingredients =
			{
				{name = "caged-xeno", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",         amount = BASE_BONES},
				{name = "meat",          amount = BASE_MEAT},
				{name = "chitin",        amount = BASE_SKIN},
				{name = "sulfuric-acid", amount = BASE_BLOOD},
				{name = "cage",          amount = INPUT_AMOUNT},
				{name = "brain",         amount = BASE_BRAIN},
			},
			crafting_speed = 30,
			tech = "xeno",
			name = "full-render-xenos",
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-xeno.png",
			icon_size = 64,
		},
		--brain xeno rendering
		{
			ingredients =
			{
				{name = "caged-xeno",       remove_item = true},
				{name = "brain-caged-xeno", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "bones",         remove_item = true},
				--{name = 'cage', remove_item = true},
				{name = "meat",          remove_item = true},
				{name = "chitin",        remove_item = true},
				{name = "sulfuric-acid", remove_item = true},
				{name = "brain",         amount = IMP_BRAIN},
			},
			tech = "nanochondria",
			name = "ex-bra-xeno",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-xeno.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/brain-05.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--bone xeno rendering
		{
			ingredients =
			{
				{name = "brain-caged-xeno", remove_item = true},
				{name = "bone-caged-xeno",  amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "brain", remove_item = true},
				{name = "bones", amount = IMP_BONES},
			},
			tech = "bmp",
			name = "ex-bon-xeno",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-xeno.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/bones-03.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--sulfuric acid xeno rendering
		{
			ingredients =
			{
				{name = "bone-caged-xeno",     remove_item = true},
				{name = "sulfuric-caged-xeno", amount = 1},
			},
			results =
			{
				{name = "bones",         remove_item = true},
				{name = "sulfuric-acid", amount = IMP_BLOOD},
			},
			tech = "recombinant-ery",
			name = "ex-blo-xeno",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-xeno.png"},
				{icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",      scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--skin xeno rendering
		{
			ingredients =
			{
				{name = "sulfuric-caged-xeno", remove_item = true},
				{name = "chitin-caged-xeno",   amount = 1},
			},
			results =
			{
				{name = "sulfuric-acid", remove_item = true},
				{name = "chitin",        amount = IMP_SKIN},
			},
			tech = "reca",
			name = "ex-chi-xeno",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-xeno.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/chitin.png",    scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
		--meat xeno rendering
		{
			ingredients =
			{
				{name = "chitin-caged-xeno", remove_item = true},
				{name = "meat-caged-xeno",   amount = 1},
			},
			results =
			{
				{name = "chitin", remove_item = true},
				{name = "meat",   amount = IMP_MEAT},
			},
			tech = "anabolic-rna",
			name = "ex-me-xeno",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/caged-xeno.png"},
				{icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png", scale = 0.25, shift = {-8, -8}}
			},
			icon_size = 64,
		},
	}
}
