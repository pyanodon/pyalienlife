------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_MEAT = 2
local BASE_SKIN = 4		-- shell
local BASE_GUTS = 4
local BASE_BLOOD = 80

local IMP_MEAT = 8
local IMP_SKIN = 15
local IMP_GUTS = 11
local IMP_BLOOD = 300


py.autorecipes {
    name = 'rendering',
	category = 'slaughterhouse',
	subgroup = 'py-alienlife-xyhiphoe',
	order = 'b',
	crafting_speed = 30,
    mats =
	{
		{
			ingredients =
				{
					{name='xyhiphoe', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name='meat',  amount = BASE_MEAT},
					{name='shell',  amount = BASE_SKIN},
					{name='guts',  amount = BASE_GUTS},
					{name='arthropod-blood', amount = BASE_BLOOD},
				},
			crafting_speed = 30,
			tech = 'water-invertebrates-mk01',
			name = 'full-render-xyhiphoe',
			icon = "__pyalienlifegraphics__/graphics/icons/rendering-xyhiphoe.png",
			icon_size = 64,
		},
		--meat xyhiphoe rendering
		{
			ingredients =
				{
					{name='xyhiphoe',remove_item = true},
					{name='meat-xyhiphoe', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'shell', remove_item = true},
					{name = 'guts', remove_item = true},
					{name = 'arthropod-blood', remove_item = true},
					{name='meat', amount = IMP_MEAT},
				},
			tech = 'anabolic-rna',
			name = 'ex-me-xyh',
			icon = "__pyalienlifegraphics__/graphics/icons/meat-xyhiphoe.png",
			icon_size = 64,
		},
		--guts xyhiphoe rendering
		{
			ingredients =
				{
					{name='meat-xyhiphoe',remove_item = true},
					{name='guts-xyhiphoe', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'meat', remove_item = true},
					{name='guts', amount = IMP_GUTS},
				},
			tech = 'antitumor',
			name = 'ex-gut-xyh',
			icon = "__pyalienlifegraphics__/graphics/icons/guts-xyhiphoe.png",
			icon_size = 64,
		},
		--blood xyhiphoe rendering
		{
			ingredients =
				{
					{name='guts-xyhiphoe',remove_item = true},
					{name='blood-xyhiphoe', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'guts', remove_item = true},
					{name='arthropod-blood', amount = IMP_BLOOD},
				},
			tech = 'recombinant-ery',
			name = 'ex-blo-xyh',
			icon = "__pyalienlifegraphics__/graphics/icons/blood-xyhiphoe.png",
			icon_size = 64,
		},
		--skin xyhiphoe rendering
		{
			ingredients =
				{
					{name='blood-xyhiphoe',remove_item = true},
					{name='shell-xyhiphoe', amount = INPUT_AMOUNT},
				},
			results =
				{
					{name = 'arthropod-blood', remove_item = true},
					{name='shell', amount = IMP_SKIN},
				},
			tech = 'reca',
			name = 'ex-ski-xyh',
			icon = "__pyalienlifegraphics__/graphics/icons/shell-xyhiphoe.png",
			icon_size = 64,
		},
	}
}
