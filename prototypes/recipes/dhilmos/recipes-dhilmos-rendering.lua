local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_MEAT = 1
local BASE_SKIN = 3
local BASE_FAT = 1
local BASE_GUTS = 1
local BASE_BLOOD = 30

local IMP_MEAT = 6
local IMP_FAT = 6
local IMP_GUTS = 6
local IMP_BLOOD = 120


FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse',
	--module_limitations = 'dhilmos',
	subgroup = 'py-alienlife-dhilmos',
	order = 'b',
	crafting_speed = 30,
    mats =
	{
		{
			ingredients =
				{
					{name='dhilmos', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='meat', amount = BASE_MEAT},
                    {name='mukmoux-fat', amount = BASE_FAT},
                    {name='chitin', amount = BASE_SKIN},
					{name='guts', amount = BASE_GUTS},
					{name='arthropod-blood', amount = BASE_BLOOD},
				},
			crafting_speed = 30,
			tech = 'dhilmos',
			name = 'full-render-dhilmoss',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-dhilmos.png",
			icon_size = 64,
		},
		--meat dhilmos rendering
		{
			ingredients =
				{
					{name='dhilmos', remove_item = true},
					{name='meat-dhilmos', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='meat', amount = IMP_MEAT},
				},
			tech = 'anabolic-rna',
			name = 'ex-me-dhi',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-dhilmos.png",
			icon_size = 64,
		},
		--guts dhilmos rendering
		{
			ingredients =
				{
					{name='meat-dhilmos', remove_item = true},
					{name='guts-dhilmos', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='meat', amount = BASE_MEAT},
					{name='guts', amount = IMP_GUTS},
				},
			tech = 'antitumor',
			name = 'ex-gut-dhi',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-dhilmos.png",
			icon_size = 64,
		},
		--blood dhilmos rendering
		{
			ingredients =
				{
					{name='guts-dhilmos', remove_item = true},
					{name='blood-dhilmos', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='guts', amount = BASE_GUTS},
					{name='arthropod-blood', amount = IMP_BLOOD},
				},
			tech = 'recombinant-ery',
			name = 'ex-blo-dhi',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-dhilmos.png",
			icon_size = 64,
		},
		--fat dhilmos rendering
		{
			ingredients =
				{
					{name='blood-dhilmos',remove_item = true},
					{name='fat-dhilmos', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='arthropod-blood', amount = BASE_BLOOD},
					{name='mukmoux-fat', amount = IMP_FAT},
				},
			tech = 'orexigenic',
			name = 'ex-fat-dhi',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-dhilmos.png",
			icon_size = 64,
		},
	}
}
