local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 3
local BASE_MEAT = 3
local BASE_SKIN = 5
local BASE_FAT = 3
local BASE_GUTS = 2
local BASE_BLOOD = 30
local BASE_BRAIN = 1

local IMP_BONES = 9
local IMP_MEAT = 10
local IMP_SKIN = 13
local IMP_FAT = 8
local IMP_GUTS = 7
local IMP_BLOOD = 100
local IMP_BRAIN = 4


FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-korlex',
	--module_limitations = 'korlex',
	subgroup = 'py-alienlife-korlex',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-korlex', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='bones',amount = BASE_BONES},
					{name='meat', amount = BASE_MEAT},
					{name='skin', amount = BASE_SKIN},
					{name='mukmoux-fat', amount = BASE_FAT},
					{name='guts', amount = BASE_GUTS},
					{name='blood', amount = BASE_BLOOD},
					{name='cage', amount = INPUT_AMOUNT},
					{name='brain', amount = BASE_BRAIN},
				},
			crafting_speed = 30,
			tech = 'korlex',
			name = 'full-render-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-korlex.png",
			icon_size = 64,
		},
		--brain korlex rendering
		{
			ingredients =
				{
					{name='caged-korlex', remove_item = true},
					{name='brain-caged-korlex', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = IMP_BRAIN},
				},
			tech = 'nanochondria',
			name = 'ex-bra-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-korlex.png",
			icon_size = 64,
		},
		--bone korlex rendering
		{
			ingredients =
				{
					{name='brain-caged-korlex', remove_item = true},
					{name='bone-caged-korlex', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = BASE_BRAIN},
					{name='bones', amount = IMP_BONES},
				},
			tech = 'bmp',
			name = 'ex-bon-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-korlex.png",
			icon_size = 64,
		},
		--meat korlex rendering
		{
			ingredients =
				{
					{name='bone-caged-korlex', remove_item = true},
					{name='meat-caged-korlex', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='bones', amount = BASE_BONES},
					{name='meat', amount = IMP_MEAT},
				},
			tech = 'anabolic-rna',
			name = 'ex-me-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-korlex.png",
			icon_size = 64,
		},
		--guts korlex rendering
		{
			ingredients =
				{
					{name='meat-caged-korlex', remove_item = true},
					{name='guts-caged-korlex', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='meat', amount = BASE_MEAT},
					{name='guts', amount = IMP_GUTS},
				},
			tech = 'antitumor',
			name = 'ex-gut-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-korlex.png",
			icon_size = 64,
		},
		--blood korlex rendering
		{
			ingredients =
				{
					{name='guts-caged-korlex', remove_item = true},
					{name='blood-caged-korlex', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='guts', amount = BASE_GUTS},
					{name='blood', amount = IMP_BLOOD},
				},
			tech = 'recombinant-ery',
			name = 'ex-blo-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-korlex.png",
			icon_size = 64,
		},
		--skin korlex rendering
		{
			ingredients =
				{
					{name='blood-caged-korlex', remove_item = true},
					{name='skin-caged-korlex', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='blood', amount = BASE_BLOOD},
					{name='skin', amount = IMP_SKIN},
				},
			tech = 'reca',
			name = 'ex-ski-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-korlex.png",
			icon_size = 64,
		},
		--fat korlex rendering
		{
			ingredients =
				{
					{name='skin-caged-korlex', remove_item = true},
					{name='fat-caged-korlex', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='skin', amount = BASE_SKIN},
					{name='mukmoux-fat', amount = IMP_FAT},
				},
			tech = 'orexigenic',
			name = 'ex-fat-kor',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-korlex.png",
			icon_size = 64,
		},
	}
}
