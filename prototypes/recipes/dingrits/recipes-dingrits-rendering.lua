local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 2
local BASE_MEAT = 4
local BASE_SKIN = 2		-- pelt
local BASE_GUTS = 4
local BASE_BLOOD = 30
local BASE_BRAIN = 1
local BASE_SPECIAL = 1	-- spike

local IMP_BONES = 8
local IMP_MEAT = 7
local IMP_SKIN = 3
local IMP_GUTS = 10
local IMP_BLOOD = 100
local IMP_BRAIN = 5
local IMP_SPECIAL = 2


FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-dingrits',
	--module_limitations = 'dingrits',
	subgroup = 'py-alienlife-dingrits',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-dingrits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='bones', amount = BASE_BONES},
					{name='meat', amount = BASE_MEAT},
                    {name='guts', amount = BASE_GUTS},
					{name='pelt', amount = BASE_SKIN},
					{name='dingrit-spike', amount = BASE_SPECIAL},
					{name='blood', amount = BASE_BLOOD},
					{name='cage', amount = INPUT_AMOUNT},
					{name='brain', amount = BASE_BRAIN},
				},
			crafting_speed = 30,
			tech = 'dingrits',
			name = 'full-render-dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-dingrits.png",
			icon_size = 64,
		},
		--brain dingrits rendering
		{
			ingredients =
				{
					{name='caged-dingrits', remove_item = true},
					{name='brain-caged-dingrits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = IMP_BRAIN},
				},
			tech = 'nanochondria',
			name = 'ex-bra-din',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-dingrits.png",
			icon_size = 64,
		},
		--bone dingrits rendering
		{
			ingredients =
				{
					{name='brain-caged-dingrits', remove_item = true},
					{name='bone-caged-dingrits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = BASE_BRAIN},
					{name='dingrit-spike', amount = IMP_SPECIAL},
					{name='bones', amount = IMP_BONES},
				},
			tech = 'bmp',
			name = 'ex-bon-din',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-dingrits.png",
			icon_size = 64,
		},
		--guts dingrits rendering
		{
			ingredients =
				{
					{name='bone-caged-dingrits', remove_item = true},
					{name='guts-caged-dingrits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='bones', amount = BASE_BONES},
					{name='dingrit-spike', amount = BASE_SPECIAL},
					{name='guts', amount = IMP_GUTS},
				},
			tech = 'antitumor',
			name = 'ex-gut-din',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-dingrits.png",
			icon_size = 64,
		},
		--blood dingrits rendering
		{
			ingredients =
				{
					{name='guts-caged-dingrits', remove_item = true},
					{name='blood-caged-dingrits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='guts', amount = BASE_GUTS},
					{name='blood', amount = IMP_BLOOD},
				},
			tech = 'recombinant-ery',
			name = 'ex-blo-din',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-dingrits.png",
			icon_size = 64,
		},
		--meat dingrits rendering
		{
			ingredients =
				{
					{name='blood-caged-dingrits', remove_item = true},
					{name='meat-caged-dingrits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='blood', amount = BASE_BLOOD},
					{name='meat', amount = IMP_MEAT},
				},
			tech = 'anabolic-rna',
			name = 'ex-me-din',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-dingrits.png",
			icon_size = 64,
		},
		--skin dingrits rendering
		{
			ingredients =
				{
					{name='meat-caged-dingrits', remove_item = true},
					{name='skin-caged-dingrits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='meat', amount = BASE_MEAT},
					{name='pelt', amount = IMP_SKIN},
				},
			tech = 'reca',
			name = 'ex-pelt-din',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-dingrits.png",
			icon_size = 64,
		},
		--USED dingrit rendering
		{
			ingredients =
				{
					{name='skin-caged-dingrits',remove_item = true},
					{name='used-dingrit', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='bones', amount = BASE_BONES},
					{name='meat', remove_item = true},
					{name='skin', amount = BASE_SKIN},
					{name='pelt', amount = BASE_SKIN},
					{name='dingrit-spike', amount = BASE_SPECIAL},
					{name='guts', amount = BASE_GUTS},
					{name='blood', remove_item = true},
					{name='brain', amount = BASE_BRAIN},
					{name='cage', remove_item = true},
				},
			tech = 'domestication-mk03',
			name = 'ex-used-dingrits',
			icon = "__pyalienlifegraphics__/graphics/icons/used-dingrit.png",
			icon_size = 64,
		},
	}
}
