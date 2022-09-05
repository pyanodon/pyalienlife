local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_MEAT = 6
local BASE_SKIN = 4
local BASE_FAT = 5
local BASE_GUTS = 6
local BASE_BLOOD = 100
local BASE_BRAIN = 1
local BASE_SPECIAL = 1

local IMP_MEAT = 13
local IMP_SKIN = 13
local IMP_FAT = 23
local IMP_GUTS = 20
local IMP_BLOOD = 230
local IMP_BRAIN = 5
local IMP_SPECIAL = 2


FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-vonix',
	--module_limitations = 'vonix',
	subgroup = 'py-alienlife-vonix',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='vonix', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='meat',  amount = BASE_MEAT},
					{name='skin',  amount = BASE_SKIN},
					{name='mukmoux-fat',  amount = BASE_FAT},
					{name='guts',  amount = BASE_GUTS},
					{name='arthropod-blood', amount = BASE_BLOOD},
					{name='venon-gland',  amount = BASE_SPECIAL},
					{name='brain', amount = BASE_BRAIN},
				},
			crafting_speed = 30,
			tech = 'vonix',
			name = 'full-render-vonix',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-vonix.png",
			icon_size = 64,
		},
		--brain vonix rendering
		{
			ingredients =
				{
					{name='vonix',remove_item = true},
					{name='brain-vonix', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = IMP_BRAIN},
				},
			tech = 'nanochondria',
			name = 'ex-bra-von',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-vonix.png",
			icon_size = 64,
		},
		--guts vonix rendering
		{
			ingredients =
				{
					{name='brain-vonix',remove_item = true},
					{name='guts-vonix', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='venon-gland',  amount = IMP_SPECIAL},
					{name='brain', amount = BASE_BRAIN},
					{name='guts', amount = IMP_GUTS},
				},
			tech = 'antitumor',
			name = 'ex-gut-von',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-vonix.png",
			icon_size = 64,
		},
		--blood vonix rendering
		{
			ingredients =
				{
					{name='guts-vonix',remove_item = true},
					{name='blood-vonix', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='guts', amount = BASE_GUTS},
					{name='venon-gland', amount = BASE_SPECIAL},
					{name='arthropod-blood', amount = IMP_BLOOD},
				},
			tech = 'recombinant-ery',
			name = 'ex-blo-von',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-vonix.png",
			icon_size = 64,
		},
		--skin vonix rendering
		{
			ingredients =
				{
					{name='blood-vonix',remove_item = true},
					{name='skin-vonix', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='arthropod-blood', amount = BASE_BLOOD},
					{name='skin', amount = IMP_SKIN},
				},
			tech = 'reca',
			name = 'ex-ski-von',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-vonix.png",
			icon_size = 64,
		},
		--fat vonix rendering
		{
			ingredients =
				{
					{name='skin-vonix',remove_item = true},
					{name='fat-vonix', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='skin', amount = BASE_SKIN},
					{name='mukmoux-fat', amount = IMP_FAT},
				},
			tech = 'orexigenic',
			name = 'ex-fat-von',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-vonix.png",
			icon_size = 64,
		},
		--meat vonix rendering
		{
			ingredients =
				{
					{name='fat-vonix',remove_item = true},
					{name='meat-vonix', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='mukmoux-fat', amount = BASE_FAT},
					{name='meat', amount = IMP_MEAT},
				},
			tech = 'anabolic-rna',
			name = 'ex-me-von',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-vonix.png",
			icon_size = 64,
		},
	}
}
