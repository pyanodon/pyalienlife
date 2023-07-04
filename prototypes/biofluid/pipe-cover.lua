local sprite = {
	filename = '__pyalienlifegraphics2__/graphics/entity/bots/pipes/cover.png',
	frame_count = 1,
	height = 32,
	hr_version = {
		filename = '__pyalienlifegraphics2__/graphics/entity/bots/pipes/hr-cover.png',
		frame_count = 1,
		height = 64,
		priority = 'high',
		scale = 0.5,
		width = 64
	},
	priority = 'high',
	width = 32
}

local covers = {
	east = table.deepcopy(sprite),
	north = table.deepcopy(sprite),
	south = table.deepcopy(sprite),
	west = table.deepcopy(sprite),
}

covers.east.x = 32
covers.east.hr_version.x = covers.east.x * 2
covers.north.x = 0
covers.north.hr_version.x = covers.north.x * 2
covers.south.x = 64
covers.south.hr_version.x = covers.south.x * 2
covers.west.x = 96
covers.west.hr_version.x = covers.west.x * 2

return covers