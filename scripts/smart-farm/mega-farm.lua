-- function to run when smart farm launched
local function on_launch(silo, crop_results)
  local surface = silo.surface
  local position = silo.position
  position.y = position.y - 15
  local yield
  local recipe_name = silo.get_recipe().name
  for _, recipe in pairs(crop_results.recipes) do
      if recipe.recipe_name == recipe_name then
          yield = recipe.crop_output
          break
      end
  end
  if not yield then return end

  local is_alien_biomes = script.active_mods["alien-biomes"] or script.active_mods["combat-mechanics-overhaul"]
  for x = -11, 11 do
      for y = -11, 11 do
          local ore_location = {position.x + x, position.y + y}
          ---@diagnostic disable-next-line: missing-parameter, param-type-mismatch
          if is_alien_biomes or not surface.get_tile(ore_location).collides_with("resource") then
              local ore = surface.find_entity(crop_results.crop, ore_location)

              if ore then
                  ore.amount = ore.amount + yield
              else
                  surface.create_entity {
                      name = crop_results.crop,
                      position = ore_location,
                      amount = yield,
                      force = "neutral"
                  }
              end
          end
      end
  end

  for _, harvester in pairs(surface.find_entities_filtered {
      area = {{position.x - 12, position.y - 12}, {position.x + 12, position.y + 12}},
      name = {"harvester", "flora-collector-mk01", "flora-collector-mk02", "flora-collector-mk03", "flora-collector-mk04"}
  }) do
      harvester.update_connections()
      local control_behavior = harvester.get_or_create_control_behavior() --[[@as LuaControlBehavior]]
      if control_behavior.circuit_read_resources then
          control_behavior.circuit_read_resources = false
          control_behavior.circuit_read_resources = true
      end
  end
end

local function get_fence_positions(entity)
    local position = entity.position
    position.y = position.y - 15
    local fence_positions = {}
    for x = -12, 12 do
        fence_positions[#fence_positions+1] = {position.x + x, position.y + 13}
        fence_positions[#fence_positions+1] = {position.x + x, position.y - 13}
    end
    for y = -13, 13 do
        fence_positions[#fence_positions+1] = {position.x + 13, position.y + y}
        fence_positions[#fence_positions+1] = {position.x - 13, position.y + y}
    end
    return fence_positions
end

local function get_landfill_positions(entity)
    local position = entity.position
    position.y = position.y - 15
    local landfill_positions = {}
    for x = -12, 12 do
        for y = -12, 12 do
            landfill_positions[#landfill_positions+1] = {position.x + x, position.y + y}
        end
    end
    return landfill_positions
end

local function on_built(entity)
    local surface = entity.surface

    for _, position in pairs(get_fence_positions(entity)) do
        if not surface.entity_prototype_collides("wood-fence", position, false) then
            surface.create_entity {
                name = "wood-fence",
                position = position,
                force = entity.force
            }
        end
    end

    local landfill_tiles = {}
    for _, position in pairs(get_landfill_positions(entity)) do
        local x, y = position[1], position[2]

        local previous_tile = surface.get_tile(position)
        if not previous_tile.valid or previous_tile.prototype.collision_mask.layers.water_tile then goto continue end
        if previous_tile.name == "sut-panel" then goto continue end

        landfill_tiles[#landfill_tiles+1] = {name = "landfill", position = position}

        storage.smart_farm_landfill_data[x] = storage.smart_farm_landfill_data[x] or {}
        if storage.smart_farm_landfill_data[x][y] then
            storage.smart_farm_landfill_data[x][y].depth = storage.smart_farm_landfill_data[x][y].depth + 1
        else
            storage.smart_farm_landfill_data[x][y] = {depth = 1, name = previous_tile.name}
        end

        ::continue::
    end
    surface.set_tiles(landfill_tiles)
end

local function on_destroyed(entity)
    local surface = entity.surface

    for _, position in pairs(get_fence_positions(entity)) do
        local fence = surface.find_entity("wood-fence", position)
        if fence and fence.force_index == entity.force_index then
            fence.destroy()
        end
    end

    local tiles_to_reset = {}
    for _, position in pairs(get_landfill_positions(entity)) do
        local x, y = position[1], position[2]

        if not storage.smart_farm_landfill_data[x] or not storage.smart_farm_landfill_data[x][y] then goto continue end

        local data = storage.smart_farm_landfill_data[x][y]
        data.depth = data.depth - 1

        if data.depth > 0 then goto continue end
        tiles_to_reset[#tiles_to_reset + 1] = {name = data.name, position = position}

        storage.smart_farm_landfill_data[x][y] = nil
        if table_size(storage.smart_farm_landfill_data[x]) == 0 then
            storage.smart_farm_landfill_data[x] = nil
        end

        ::continue::
    end

    if #tiles_to_reset == 0 then return end
    surface.set_tiles(tiles_to_reset, true, false, false, true)
end

local farm_data = {
    require "farm-ralesia",
    require "farm-rennea",
    require "farm-tuuphra",
    require "farm-grod",
    require "farm-yotoi",
    require "farm-kicalk",
    require "farm-arum",
    require "farm-yotoi-fruit",
    require "farm-bioreserve",
}

py.on_event(py.events.on_init(), function()
    storage.smart_farm_landfill_data = storage.smart_farm_landfill_data or {}
end)

local function setup_remotes()
        -- add launch products for later reference
    for _, launch_products in pairs(farm_data) do
        remote.call("py_smart_farming", "add_launch_products", launch_products)
    end

    remote.call("py_smart_farming", "add_rocket_silo", {
        entity = "mega-farm",
        on_built = on_built,
        on_destroyed = on_destroyed,
        on_launch = on_launch
    })
end

script.on_init(setup_remotes)
script.on_load(setup_remotes)
