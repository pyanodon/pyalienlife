require "caravan-gui-shared"

local relative_gui_types = {
    ["electric-pole"] = "electric_network_gui",
    ["character"] = "other_player_gui",
    ["unit"] = "script_inventory_gui"
}

local function guess(entity)
    local entity_type = entity.type
    local relative_gui_type = relative_gui_types[entity_type] or entity_type:gsub("%-", "_") .. "_gui"
    return defines.relative_gui_type[relative_gui_type] or defines.relative_gui_type.generic_on_off_entity_gui
end

--anchor is optional
local function instantiate_main_frame(gui, anchor)
    if anchor then
        return gui.relative.add {
            type = "frame",
            name = "py_global_caravan_gui",
            caption = {"caravan-gui.caption"},
            direction = "vertical",
            anchor = anchor
        }
    end
    if not gui.relative.caravan_flow then return end
    return gui.relative.caravan_flow.add {
        type = "frame",
        name = "py_global_caravan_gui",
        caption = {"caravan-gui.caption"},
        direction = "vertical",
    }
end

function Caravan.has_any_caravan(entity)
    for _, caravan_data in pairs(storage.caravans) do
        if Caravan.has_entity_in_schedule(caravan_data, entity) then return true end
    end
    return false
end

function Caravan.has_entity_in_schedule(caravan_data, entity)
    if not Caravan.validity_check(caravan_data) then return end
    if not caravan_data.schedule then return end
    for _, schedule in pairs(caravan_data.schedule) do
        if schedule.entity == entity then return true end
    end
    return false
end

--anchor is optional
Caravan.build_gui_connected = function(player, entity, anchor)
    if not entity then return end
    if not Caravan.has_any_caravan(entity) then return end
    local main_frame = instantiate_main_frame(player.gui, anchor)
    if not main_frame then return end
    main_frame.style.minimal_width = 300
    main_frame.tags = {unit_number = entity.unit_number}

    local scroll_pane = main_frame.add {type = "scroll-pane"}
    scroll_pane.style.top_margin = -6

    for key, caravan_data in pairs(storage.caravans) do
        if Caravan.has_entity_in_schedule(caravan_data, entity) then
            scroll_pane.add {type = "empty-widget"}.style.height = 3
            Caravan.add_gui_row(caravan_data, key, scroll_pane)
        end
    end
end

py.on_event(defines.events.on_gui_opened, function(event)
    local player = game.get_player(event.player_index)
    local entity = event.entity
    if not entity then return end
    if player.gui.relative.connected_caravan_gui then return end
    local anchor = {
        gui = guess(entity),
        position = defines.relative_gui_position.right
    }
    Caravan.build_gui_connected(player, entity, anchor)
end)
