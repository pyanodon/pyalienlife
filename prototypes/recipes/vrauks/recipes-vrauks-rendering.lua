local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_MEAT = 2
local BASE_SKIN = 1         -- chitin
local BASE_GUTS = 2
local BASE_BLOOD = 400      -- formic-acid
local BASE_BRAIN = 1

local IMP_MEAT = 10
local IMP_SKIN = 15
local IMP_GUTS = 11
local IMP_BLOOD = 600
local IMP_BRAIN = 4


FUN.autorecipes {
    name = 'rendering-vrauks',
	category = 'slaughterhouse-vrauks',
	subgroup = 'py-alienlife-vrauks',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-vrauks', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='meat', amount = BASE_MEAT},
					{name='chitin', amount = BASE_SKIN},
					{name='guts', amount = BASE_GUTS},
					{name='formic-acid', amount = BASE_BLOOD},
					{name='brain', amount = BASE_BRAIN},
					{name='cage', amount = INPUT_AMOUNT},
				},
			crafting_speed = 30,
			tech = 'rendering',
			name = 'full-render-vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-vrauks.png",
			icon_size = 64,
		},
		--brain vrauks rendering
		{
			ingredients =
				{
					{name='caged-vrauks', remove_item = true},
					{name='brain-caged-vrauks', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = IMP_BRAIN},
				},
			tech = 'nanochondria',
			name = 'ex-bra-vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-vrauks.png",
			icon_size = 64,
		},
		--meat vrauks rendering
		{
			ingredients =
				{
					{name='brain-caged-vrauks', remove_item = true},
					{name='meat-caged-vrauks', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = BASE_BRAIN},
					{name='meat', amount = IMP_MEAT},
				},
			tech = 'anabolic-rna',
			name = 'ex-me-vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-vrauks.png",
			icon_size = 64,
		},
		--guts vrauks rendering
		{
			ingredients =
				{
					{name='meat-caged-vrauks', remove_item = true},
					{name='guts-caged-vrauks', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='meat', amount = BASE_MEAT},
					{name='guts', amount = IMP_GUTS},
				},
			tech = 'antitumor',
			name = 'ex-gut-vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-vrauks.png",
			icon_size = 64,
		},
		--blood vrauks rendering
		{
			ingredients =
				{
					{name='guts-caged-vrauks', remove_item = true},
					{name='blood-caged-vrauks', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='guts', amount = BASE_GUTS},
					{name='formic-acid', amount = IMP_BLOOD},
				},
			tech = 'recombinant-ery',
			name = 'ex-blo-vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-vrauks.png",
			icon_size = 64,
		},
		--chitin vrauks rendering
		{
			ingredients =
				{
					{name='blood-caged-vrauks',remove_item = true},
					{name='chitin-caged-vrauks', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='formic-acid', amount = BASE_BLOOD},
					{name='chitin', amount = IMP_SKIN},
				},
			tech = 'reca',
			name = 'ex-ski-vrauks',
			icon = "__pyalienlifegraphics__/graphics/icons/chitin-caged-vrauks.png",
			icon_size = 64,
		},
	}
}
