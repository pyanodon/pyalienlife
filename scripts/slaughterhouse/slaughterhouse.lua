-- for full history reference: https://github.com/pyanodon/pyalienlife/commit/ed87228489c87e6c68993d78f09e76e21970302a

local subgroups = {
  "auog",
  "ulric",
  "mukmoux",
  "arthurian",
  "cottongut",
  "dhilmos",
  "scrondrix",
  "phadai",
  "fish",
  "phagnot",
  "kmauts",
  "dingrits",
  "xeno",
  "arqad",
  "cridren",
  "antelope",
  "trits",
  "vonix",
  "vrauks",
  "xyhiphoe",
  "zipir",
  "korlex",
  "simik",
  "arum-super",
  "grod-super",
  "kicalk-super",
  "ralesia-super",
  "rennea-super",
  "tuuphra-super",
  "yotoi-super",
  "yotoi-fruit-super",
  "bioreserve-super",
  "mova-super"
}
if script.active_mods["pyalternativeenergy"] then
  subgroups[#subgroups+1] = "zungror"
  subgroups[#subgroups+1] = "numal"
end
if script.active_mods["pystellarexpedition"] then
  -- subgroups[#subgroups+1] = "tuls"
  -- subgroups[#subgroups+1] = "riga"
  subgroups[#subgroups+1] = "kakkalakki"
end

local machines_with_gui = {
  ["slaughterhouse-mk01"] = true,
  ["slaughterhouse-mk02"] = true,
  ["slaughterhouse-mk03"] = true,
  ["slaughterhouse-mk04"] = true,
  ["rc-mk01"] = true,
  ["rc-mk02"] = true,
  ["rc-mk03"] = true,
  ["rc-mk04"] = true,
  ["mega-farm"] = true,
}

local alt_icons = {
  zipir = "zipir1",
  kakkalakki = "kakkalakki-f",
  ["arum-super"] = "cadaveric-arum",
  ["grod-super"] = "grod",
  ["kicalk-super"] = "kicalk",
  ["ralesia-super"] = "ralesia",
  ["rennea-super"] = "rennea",
  ["tuuphra-super"] = "tuuphra",
  ["yotoi-super"] = "yotoi",
  ["yotoi-fruit-super"] = "yotoi-fruit",
  ["bioreserve-super"] = "native-flora",
  ["mova-super"] = "mova"
}

local permitted_recipes = {}

local function update_recipes()
  for category in pairs(permitted_recipes) do
    for r, recipe in pairs(prototypes.get_recipe_filtered{{filter = "category", category = category}}) do
      for _, subgroup in pairs(subgroups) do
        if recipe.subgroup.name:find(subgroup, nil, true) then
          permitted_recipes[category][r] = subgroup
          break
        end
      end
      if not permitted_recipes[category][r] then
        -- search by comparing recipe name
        for _, subgroup in pairs(subgroups) do
          if recipe.name:find(subgroup, nil, true) then
            permitted_recipes[category][r] = subgroup
            break
          end
        end
      end
      if not permitted_recipes[category][r] then
        error("Could not find associated subgroup for recipe: " .. r)
      end
    end
  end
end

remote.add_interface("py-recipe-gui", {
  ---add a machine to use the custom recipe viewer. requires subgroups to be registered
  ---@param machine data.EntityID
  add_machine = function (machine)
    local update = not machines_with_gui
    machines_with_gui[machine] = true
    for category in pairs(update and prototypes.entity[machine].crafting_categories or {}) do
      permitted_recipes[category] = {}
    end
    permitted_recipes.parameters = nil
  end,
  ---remove a machine from the whitelist for the custom recipe viewer
  ---@param machine data.EntityID
  remove_machine = function (machine)
    machines_with_gui[machine] = nil
  end,
  ---add a subgroup to use the custom recipe viewer. requires a compatible crafting machine
  ---@param subgroup data.EntityID
  add_subgroup = function (subgroup)
    local update = not subgroups[subgroup]
    subgroups[subgroup] = true
    if update then update_recipes() end
  end,
  ---add a subgroup to use the custom recipe viewer
  ---@param subgroup data.EntityID
  remove_subgroup = function (subgroup)
    subgroups[subgroup] = nil
  end,
  ---use an alternative icon for the subgroup header icon. set to nil to remove
  ---@param subgroup data.ItemSubGroupID
  ---@param icon data.ItemID|data.FluidID
  set_alt_item = function (subgroup, icon)
    alt_icons[subgroup] = icon
  end,
})

-- TODO have AE/SE use remote interface

-- cache crafting categories
for machine in pairs(machines_with_gui) do
  for category in pairs(prototypes.entity[machine].crafting_categories) do
    permitted_recipes[category] = {}
  end
end

-- ignore parameters
permitted_recipes.parameters = nil

update_recipes()

py.on_event(defines.events.on_object_destroyed, function(event)
  local unit_number = event.useful_id
  if not unit_number or not storage.opened_recipe_viewer[unit_number] then return end

  storage.opened_recipe_viewer[unit_number] = nil
  for _, player in pairs(game.players) do
    ---@cast player LuaPlayer
    local gui = player.gui.screen.py_recipe_viewer
    if gui and gui.tags.entity == unit_number then gui.destroy() end
  end
end)

local function build_subgroup_table(main_frame, player)
  local content_frame = main_frame.content_frame
  content_frame.clear()
  main_frame.toolbar.label.caption = main_frame.tags.caption
  local tags = main_frame.tags
  tags.main_menu = true
  main_frame.tags = tags
  local subgroup_table = content_frame.add {type = "table", name = "s_table", column_count = 6}
  subgroup_table.style.horizontal_spacing = 0
  subgroup_table.style.vertical_spacing = 0
  subgroup_table.style.top_margin = -12
  subgroup_table.style.left_margin = -12
  subgroup_table.style.bottom_margin = -12
  subgroup_table.style.right_margin = -12
  for category in pairs(main_frame.tags.categories) do
    for recipe, subgroup in pairs(permitted_recipes[category] or {}) do
			local name = "py_recipe_gui_subgroup_" .. subgroup
      if not subgroup_table[name] and player.force.recipes[recipe].enabled then
        local icon = alt_icons[subgroup] or subgroup
        local type = assert(prototypes.item[icon] and "item" or prototypes.fluid[icon] and "fluid" or prototypes.recipe[icon] and "recipe", "ERROR: Could not find reference for icon: " .. icon)
				subgroup_table.add {
					type = "choose-elem-button",
					name = name,
					elem_type = type,
					item = icon,
          fluid = icon,
          recipe = icon,
          style = "filter_group_button_tab_slightly_larger",
					tags = {subgroup = subgroup},
					locked = true
				}.style.size = 80
      end
    end
  end
  main_frame.force_auto_center()
end

local function create_gui(player_index, entity)
  local player = game.get_player(player_index)
  if not player or not entity then return end
  local name = entity.name == "entity-ghost" and entity.ghost_name or entity.name
  local control_behavior = entity.get_control_behavior()
  if not machines_with_gui[name] or entity.get_recipe() or (control_behavior and control_behavior.circuit_set_recipe) then return end
  local main_frame = player.gui.screen.add {
    type = "frame",
    name = "py_recipe_viewer",
    direction = "vertical",
    tags = {
      entity = entity.unit_number,
      categories = (entity.name == "entity-ghost" and entity.ghost_prototype or entity.prototype).crafting_categories,
      caption = {"py-recipe-gui." .. name},
      main_menu = true
    }
  }
  main_frame.force_auto_center()
  player.opened = main_frame
  local toolbar = main_frame.add {type = "flow", name = "toolbar", direction = "horizontal", style = "frame_header_flow"}
  toolbar.style.bottom_padding = 0
  toolbar.add {type = "label", name = "label", style = "frame_title"}
  toolbar.label.style.bottom_padding = 3
  toolbar.label.style.top_margin = -3
  local header = toolbar.add {type = "empty-widget", style = "draggable_space_header"}
  header.style.horizontally_stretchable = true
  header.style.natural_height = 24
  header.style.height = 24
  header.style.right_margin = 4
  header.drag_target = main_frame
  toolbar.add {type = "sprite-button", name = "py_recipe_gui_back", sprite = "utility/close", style = "close_button"}
  local content_frame = main_frame.add {type = "frame", name = "content_frame", direction = "vertical", style = "inside_shallow_frame_with_padding"}
  content_frame.style.vertically_stretchable = true
  build_subgroup_table(main_frame, player)
  storage.opened_recipe_viewer[entity.unit_number] = entity
  script.register_on_object_destroyed(entity)
  storage.watched_buildings[player_index] = nil
end

py.on_event(py.events.on_gui_opened(), function(event)
  local entity = event.entity
  if not entity then return end
  local name = entity.name == "entity-ghost" and entity.ghost_name or entity.name
  if not machines_with_gui[name] then return end
  local control_behavior = entity.get_control_behavior()
  if not settings.get_player_settings(event.player_index)["py-custom-recipe-gui"].value then return end

  if entity.get_recipe() or control_behavior and control_behavior.circuit_set_recipe then
    storage.watched_buildings[event.player_index] = entity
  else
    create_gui(event.player_index, entity)
  end
end)

py.on_event(defines.events.on_gui_closed, function(event)
  if event.gui_type == defines.gui_type.custom then
    local element = event.element
    if element.name == "py_recipe_viewer" then element.destroy() end
  end
  storage.watched_buildings[event.player_index] = nil
end)

local function set_recipe(player, entity, recipe)
  for item, count in pairs(entity.set_recipe(recipe)) do
    count = count - player.insert {name = item, count = count}
    if count > 0 then
      player.surface.spill_item_stack {position = player.position, stack = {name = item, count = count}, enable_looted = true}
    end
  end
  player.opened = entity
end

gui_events[defines.events.on_gui_click]["py_recipe_gui_subgroup_.+"] = function(event)
  local player = game.get_player(event.player_index)
  local element = event.element
  local content_frame = element.parent.parent
  local main_frame = content_frame.parent
  local subgroup = element.tags.subgroup
  content_frame.clear()
  main_frame.toolbar.label.caption = {"py-recipe-gui.select-recipe"}
  local tags = main_frame.tags
  tags.main_menu = false
  main_frame.tags = tags
  local recipe_table = content_frame.add {type = "scroll-pane", name = "pane", style = "deep_slots_scroll_pane"}
  recipe_table = recipe_table.add {type = "table", column_count = 5, style = "filter_slot_table"}
  local recipe_count, avalible_recipe = 0, nil
  for category in pairs(main_frame.tags.categories) do
    for recipe, recipe_subgroup in pairs(permitted_recipes[category] or {}) do
      if recipe_subgroup == subgroup and player.force.recipes[recipe].enabled then
        recipe_count, avalible_recipe = recipe_count + 1, recipe
        recipe_table.add {
          type = "choose-elem-button",
          name = "py_recipe_gui_recipe_" .. recipe,
          elem_type = "recipe",
          recipe = recipe,
          style = "slot_button",
          tags = {recipe = recipe},
          locked = true
        }
      end
    end
  end

  if recipe_count == 1 then
    local entity = storage.opened_recipe_viewer[main_frame.tags.entity]
    if not entity or not entity.valid then return end
    set_recipe(player, entity, avalible_recipe)
  end
  main_frame.force_auto_center()
end

gui_events[defines.events.on_gui_click]["py_recipe_gui_back"] = function(event)
  local player = game.players[event.player_index]
  local main_frame = event.element.parent.parent
  if main_frame.tags.main_menu then
    main_frame.destroy()
    return -- exit completely
  end
  build_subgroup_table(main_frame, player)
end

gui_events[defines.events.on_gui_click]["py_recipe_gui_recipe_.+"] = function(event)
  local player = game.get_player(event.player_index)
  local element = event.element
  local main_frame = element.parent.parent.parent.parent
  local entity = storage.opened_recipe_viewer[main_frame.tags.entity]
  local recipe = element.tags.recipe
  if not entity or not entity.valid then return end
  set_recipe(player, entity, recipe)
end

py.on_event(py.events.on_init(), function()
  storage.watched_buildings = storage.watched_buildings or {}
  storage.opened_recipe_viewer = storage.opened_recipe_viewer or {}
end)

py.on_event(defines.events.on_tick, function()
  for player_index, entity in pairs(storage.watched_buildings) do
    if not entity.valid then
      storage.watched_buildings[player_index] = nil
      return
    end

    if not entity.get_recipe() then
      create_gui(player_index, entity)
    end
  end
end)