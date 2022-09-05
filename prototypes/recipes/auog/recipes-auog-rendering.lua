local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 3
local BASE_MEAT = 8
local BASE_SKIN = 2
local BASE_FAT = 2
local BASE_GUTS = 3
local BASE_BLOOD = 100
local BASE_BRAIN = 1

local IMP_BONES = 11
local IMP_MEAT = 28
local IMP_SKIN = 10
local IMP_FAT = 10
local IMP_GUTS = 11
local IMP_BLOOD = 200
local IMP_BRAIN = 4


FUN.autorecipes {
    name = 'rendering-auog',
	category = 'slaughterhouse-auog',
	subgroup = 'py-alienlife-auog',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-auog', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='bones', amount = BASE_BONES},
					{name='meat', amount = BASE_MEAT},
					{name='skin', amount = BASE_SKIN},
					{name='mukmoux-fat', amount = BASE_FAT},
					{name='guts', amount = BASE_GUTS},
					{name='blood', amount = BASE_BLOOD},
					{name='brain', amount = BASE_BRAIN},
					{name='cage', amount = INPUT_AMOUNT},
				},
			crafting_speed = 30,
			tech = 'auog',
			name = 'full-render-auogs',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-auog.png",
			icon_size = 64,
		},
		--brain auog rendering
		{
			ingredients =
				{
					{name='caged-auog', remove_item = true},
					{name='brain-caged-auog', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = IMP_BRAIN},
				},
			tech = 'nanochondria',
			name = 'ex-bra-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-auog.png",
			icon_size = 64,
		},
		--bone auog rendering
		{
			ingredients =
				{
					{name='brain-caged-auog', remove_item = true},
					{name='bone-caged-auog', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = BASE_BRAIN},
					{name='bones', amount = IMP_BONES},
				},
			tech = 'bmp',
			name = 'ex-bon-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-auog.png",
			icon_size = 64,
		},
		--meat auog rendering
		{
			ingredients =
				{
					{name='bone-caged-auog', remove_item = true},
					{name='meat-caged-auog', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='bones', amount = BASE_BONES},
					{name='meat', amount = IMP_MEAT},
				},
			tech = 'anabolic-rna',
			name = 'ex-me-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-auog.png",
			icon_size = 64,
		},
		--guts auog rendering
		{
			ingredients =
				{
					{name='meat-caged-auog', remove_item = true},
					{name='guts-caged-auog', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='meat', amount = BASE_MEAT},
					{name='guts', amount = IMP_GUTS},
				},
			tech = 'antitumor',
			name = 'ex-gut-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-auog.png",
			icon_size = 64,
		},
		--blood auog rendering
		{
			ingredients =
				{
					{name='guts-caged-auog', remove_item = true},
					{name='blood-caged-auog', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='guts', amount = BASE_GUTS},
					{name='blood', amount = IMP_BLOOD},
				},
			tech = 'recombinant-ery',
			name = 'ex-blo-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-auog.png",
			icon_size = 64,
		},
		--skin auog rendering
		{
			ingredients =
				{
					{name='blood-caged-auog',remove_item = true},
					{name='skin-caged-auog', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='blood', amount = BASE_BLOOD},
					{name='skin', amount = IMP_SKIN},
				},
			tech = 'reca',
			name = 'ex-ski-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-auog.png",
			icon_size = 64,
		},
		--fat auog rendering
		{
			ingredients =
				{
					{name='skin-caged-auog',remove_item = true},
					{name='fat-caged-auog', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='skin', amount = BASE_SKIN},
					{name='mukmoux-fat', amount = IMP_FAT},
				},
			tech = 'orexigenic',
			name = 'ex-fat-auog',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-auog.png",
			icon_size = 64,
		},
	}
}
