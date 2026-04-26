------------------RENDERING------------------

py.autorecipes {
	name = "rendering-antelope",
	category = "slaughterhouse",
	subgroup = "py-alienlife-antelope",
	order = "b",
	mats =
	{
		{
			ingredients =
			{
				{name = "caged-antelope", amount = 1},
			},
			results =
			{
				{name = "bones",         amount = 5},
				{name = "meat",          amount = 4},
				{name = "skin",          amount = 3},
				{name = "mukmoux-fat",   amount = 3},
				{name = "guts",          amount = 5},
				{name = "brain",         amount = 2},
				{name = "blood",         amount = 60},
				{name = "cage-antelope", amount = 1},
				{name = "strangelets",   amount = 1},
			},
			crafting_speed = 40,
			tech = "schrodinger-antelope",
			name = "full-render-antelope",
			icons = {
				{icon = "__pyalienlifegraphics__/graphics/icons/rendering.png", draw_background = false},
				{icon = "__pyalienlifegraphics__/graphics/icons/antelope.png",  draw_background = true}
			}
		},
	}
}
