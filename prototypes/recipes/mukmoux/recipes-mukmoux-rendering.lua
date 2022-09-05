local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 3
local BASE_MEAT = 5
local BASE_SKIN = 4
local BASE_FAT = 5
local BASE_GUTS = 8
local BASE_BLOOD = 130
local BASE_BRAIN = 1

local IMP_BONES = 13
local IMP_MEAT = 24
local IMP_SKIN = 10
local IMP_FAT = 20
local IMP_GUTS = 20
local IMP_BLOOD = 250
local IMP_BRAIN = 4


FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse-mukmoux',
	--module_limitations = 'mukmoux',
	subgroup = 'py-alienlife-mukmoux',
	order = 'b',
    mats =
	{
		{
			ingredients =
				{
					{name='caged-mukmoux', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='bones', amount = BASE_BONES},
					{name='meat',  amount = BASE_MEAT},
					{name='skin',  amount = BASE_SKIN},
					{name='mukmoux-fat',  amount = BASE_FAT},
					{name='guts',  amount = BASE_GUTS},
					{name='blood', amount = BASE_BLOOD},
					{name='cage', amount = INPUT_AMOUNT},
					{name='brain',  amount = BASE_BRAIN},
				},
			crafting_speed = 30,
			tech = 'mukmoux',
			name = 'full-render-mukmoux',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-mukmoux.png",
			icon_size = 64,
		},
		--brain mukmoux rendering
		{
			ingredients =
				{
					{name='caged-mukmoux', remove_item = true},
					{name='brain-caged-mukmoux', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = IMP_BRAIN},
				},
			tech = 'nanochondria',
			name = 'ex-bra-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-caged-mukmoux.png",
			icon_size = 64,
		},
		--bone mukmoux rendering
		{
			ingredients =
				{
					{name='brain-caged-mukmoux', remove_item = true},
					{name='bone-caged-mukmoux', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='brain', amount = BASE_BRAIN},
					{name='bones', amount = IMP_BONES},
				},
			tech = 'bmp',
			name = 'ex-bon-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-caged-mukmoux.png",
			icon_size = 64,
		},
		--meat mukmoux rendering
		{
			ingredients =
				{
					{name='bone-caged-mukmoux', remove_item = true},
					{name='meat-caged-mukmoux', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='bones', amount = BASE_BONES},
					{name='meat', amount = IMP_MEAT},
				},
			tech = 'anabolic-rna',
			name = 'ex-me-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-caged-mukmoux.png",
			icon_size = 64,
		},
		--guts mukmoux rendering
		{
			ingredients =
				{
					{name='meat-caged-mukmoux', remove_item = true},
					{name='guts-caged-mukmoux', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='meat', amount = BASE_MEAT},
					{name='guts', amount = IMP_GUTS},
				},
			tech = 'antitumor',
			name = 'ex-gut-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-caged-mukmoux.png",
			icon_size = 64,
		},
		--blood mukmoux rendering
		{
			ingredients =
				{
					{name='guts-caged-mukmoux', remove_item = true},
					{name='blood-caged-mukmoux', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='guts', amount = BASE_GUTS},
					{name='blood', amount = IMP_BLOOD},
				},
			tech = 'recombinant-ery',
			name = 'ex-blo-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-caged-mukmoux.png",
			icon_size = 64,
		},
		--skin mukmoux rendering
		{
			ingredients =
				{
					{name='blood-caged-mukmoux', remove_item = true},
					{name='skin-caged-mukmoux', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='blood', amount = BASE_BLOOD},
					{name='skin', amount = IMP_SKIN},
				},
			tech = 'reca',
			name = 'ex-ski-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-caged-mukmoux.png",
			icon_size = 64,
		},
		--fat mukmoux rendering
		{
			ingredients =
				{
					{name='skin-caged-mukmoux', remove_item = true},
					{name='fat-caged-mukmoux', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='skin', amount = BASE_SKIN},
					{name='mukmoux-fat', amount = IMP_FAT},
				},
			tech = 'orexigenic',
			name = 'ex-fat-muk',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-caged-mukmoux.png",
			icon_size = 64,
		},
	}
}
