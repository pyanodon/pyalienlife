------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_BONES = 4
local BASE_MEAT = 6
local BASE_SKIN = 3
local BASE_FAT = 7
local BASE_GUTS = 4
local BASE_BLOOD = 80
local BASE_BRAIN = 1
local BASE_SPECIAL = 2		-- photophore

local IMP_BONES = 14
local IMP_MEAT = 15
local IMP_SKIN = 13
local IMP_FAT = 30
local IMP_GUTS = 15
local IMP_BLOOD = 200
local IMP_BRAIN = 5
local IMP_SPECIAL = 4


FUN.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse',
	--module_limitations = 'trits',
	subgroup = 'py-alienlife-trits',
	order = 'b',
	crafting_speed = 30,
    mats =
	{
		{
			ingredients =
				{
					{name='trits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='bones', amount = BASE_BONES},
					{name='meat',  amount = BASE_MEAT},
					{name='skin',  amount = BASE_SKIN},
					{name='mukmoux-fat',  amount = BASE_FAT},
					{name='guts',  amount = BASE_GUTS},
					{name='photophore', amount = BASE_SPECIAL},
					{name='blood', amount = BASE_BLOOD},
					{name='brain',  amount = BASE_BRAIN},
				},
			crafting_speed = 30,
			tech = 'trits',
			name = 'full-render-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-trits.png",
			icon_size = 64,
		},
		--brain trits rendering
		{
			ingredients =
				{
					{name='trits',remove_item = true},
					{name='brain-trits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'bones', remove_item = true},
					{name = 'meat', remove_item = true},
					{name = 'mukmoux-fat', remove_item = true},
					{name = 'skin', remove_item = true},
					{name = 'photophore', remove_item = true},
					{name = 'guts', remove_item = true},
					{name = 'blood', remove_item = true},
					{name='brain', amount = IMP_BRAIN},
				},
			tech = 'nanochondria',
			name = 'ex-bra-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/brain-trits.png",
			icon_size = 64,
		},
		--bone trits rendering
		{
			ingredients =
				{
					{name='brain-trits',remove_item = true},
					{name='bone-trits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'brain', remove_item = true},
					{name='bones', amount = IMP_BONES},
				},
			tech = 'bmp',
			name = 'ex-bon-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/bone-trits.png",
			icon_size = 64,
		},
		--meat trits rendering
		{
			ingredients =
				{
					{name='bone-trits',remove_item = true},
					{name='meat-trits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'bones', remove_item = true},
					{name='meat', amount = IMP_MEAT},
				},
			tech = 'anabolic-rna',
			name = 'ex-me-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-trits.png",
			icon_size = 64,
		},
		--guts trits rendering
		{
			ingredients =
				{
					{name='meat-trits',remove_item = true},
					{name='guts-trits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'meat', remove_item = true},
					{name='guts', amount = IMP_GUTS},
				},
			tech = 'antitumor',
			name = 'ex-gut-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-trits.png",
			icon_size = 64,
		},
		--blood trits rendering
		{
			ingredients =
				{
					{name='guts-trits',remove_item = true},
					{name='blood-trits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'guts', remove_item = true},
					{name='blood', amount = IMP_BLOOD},
				},
			tech = 'recombinant-ery',
			name = 'ex-blo-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-trits.png",
			icon_size = 64,
		},
		--skin trits rendering
		{
			ingredients =
				{
					{name='blood-trits',remove_item = true},
					{name='skin-trits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'blood', remove_item = true},
					{name='photophore', amount = IMP_SPECIAL * 2},
					{name='skin', amount = IMP_SKIN},
				},
			tech = 'reca',
			name = 'ex-ski-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/skin-trits.png",
			icon_size = 64,
		},
		--fat trits rendering
		{
			ingredients =
				{
					{name='skin-trits',remove_item = true},
					{name='fat-trits', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'photophore', remove_item = true},
					{name = 'skin', remove_item = true},
					{name='mukmoux-fat', amount = IMP_FAT},
				},
			tech = 'orexigenic',
			name = 'ex-fat-trit',
			icon = "__pyalienlifegraphics__/graphics/icons/fat-trits.png",
			icon_size = 64,
		},
	}
}
