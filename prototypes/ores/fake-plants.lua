for _, ore in pairs(data.raw.resource) do
  if string.match(ore.icon, "__pyalienlife") ~= nil then
    if ore.name == "ore-bioreserve" then
      local x = 0
      local y = 0
      for i = 1, 704 do
        --log(i)
        data:extend {
          {
            type = "sprite",
            name = "bio-tree-" .. i,
            filename = "__pyalienlifegraphics__/graphics/entity/bioreserve/hr-rich-1.png",
            --priority = "extra-high-no-scale",
            width = 128,
            height = 160,
            x = x,
            y = y,
            --flags = {"gui-icon"},
            --scale = 0.5
          }
        }
        x = x + 128
        if x == 8192 then
          x = 0
          y = y + 160
        end
      end
    end

    data:extend {
      {
        type = "tree",
        name = ore.name .. "-fake",
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
        emissions_per_second = {pollution = -0.001},
        max_health = 20,
        collision_box = {{0, 0}, {0, 0}},
        collision_mask = {layers = {}},
        selection_box = {{0, 0}, {0, 0}},
        drawing_box = {{-0.6, -1.8}, {0.6, 0.3}},
        subgroup = "trees",
        order = "a[tree]-c[dry-tree]",
        vehicle_impact_sound = {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
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
            scale = ore.stages.sheet.scale,
            shift = ore.stages.sheet.shift or nil,
          }
        }
      }
    }
  end
end
