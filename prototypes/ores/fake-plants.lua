
for o, ore in pairs(data.raw.resource) do

	if string.match(ore.icon, '__pyalienlife') ~= nil then

data:extend({
    {
        type = "tree",
        name = ore.name.."-fake",
        icon = ore.icon,
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
        minable =
        {
          count = 4,
          mining_particle = "wooden-particle",
          mining_time = 0.5,
          result = "wood"
        },
		selectable_in_game = false,
        emissions_per_second = -0.001,
        max_health = 20,
        collision_box = {{0,0}, {0,0}},
		collision_mask = {},
        selection_box = {{0,0}, {0,0}},
        drawing_box = {{-0.6, -1.8}, {0.6, 0.3}},
        subgroup = "trees",
        order = "a[tree]-c[dry-tree]",
        vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
        pictures =
        {
          --dry-tree
          {
            filename = ore.stages.sheet.filename,
            priority = "extra-high",
            width = ore.stages.sheet.width,
            height = ore.stages.sheet.height,
            frame_count = ore.stages.sheet.frame_count,
            variation_count = ore.stages.sheet.variation_count,
            shift = ore.stages.sheet.shift or nil,
			hr_version = {
                filename = ore.stages.sheet.hr_version.filename,
                priority = "extra-high",
                width = ore.stages.sheet.hr_version.width,
                height = ore.stages.sheet.hr_version.height,
                frame_count = ore.stages.sheet.hr_version.frame_count,
                variation_count = ore.stages.sheet.hr_version.variation_count,
                scale = ore.stages.sheet.hr_version.scale,
                shift = ore.stages.sheet.hr_version.shift or nil,
            }
          }
        }
      }
})

	end
	
end
