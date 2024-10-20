local sprite = {
	filename = "__pyalienlifegraphics2__/graphics/entity/bots/pipes/hr-cover.png",
	frame_count = 1,
	height = 64,
	priority = "high",
	scale = 0.5,
	width = 64
}

local covers = {
	east = table.deepcopy(sprite),
	north = table.deepcopy(sprite),
	south = table.deepcopy(sprite),
	west = table.deepcopy(sprite),
}

covers.east.x = 32 * 2
covers.north.x = 0 * 2
covers.south.x = 64 * 2
covers.west.x = 96 * 2

return covers
