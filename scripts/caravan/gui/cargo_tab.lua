local Impl = require "__pyalienlife__/scripts/caravan/impl"
local Utils = require "__pyalienlife__/scripts/caravan/utils"
local inv = require "inventories"

local P = {}

function P.build_inventory(parent, label, inventory_size)
    parent.add {type = "label", caption = label, style = "semibold_label"}
    local inventory_frame = parent.add {type = "frame", style = "inventory_frame"}
    local pane = inventory_frame.add {type = "scroll-pane", name = "cargo_pane"}
    pane.style.natural_height = 150
    pane.horizontal_scroll_policy = "never"
    pane.vertical_scroll_policy = "auto"

    local inventory_table = pane.add {type = "table", column_count = 10}
    inventory_table.style.horizontal_spacing = 0
    inventory_table.style.vertical_spacing = 0

    for i = 1, inventory_size do
        inventory_table.add {type = "sprite-button", style = "inventory_slot", enabled = parent.enabled}
    end
end

function P.build_fluid_flow(parent, caravan_data)
    local flow = parent.add {type = "flow", name = "fluid_flow", direction = "horizontal"}
    flow.style.bottom_padding = 8
    flow.style.vertical_align = "center"
    flow.style.horizontal_spacing = 8

    local fluid = caravan_data.fluid

    if fluid then
        local sprite = "fluid/" .. fluid.name
        local prototype = prototypes.fluid[fluid.name]
        local label_caption = prototype.localised_name

        if fluid.temperature > prototype.default_temperature then
            label_caption = {"", prototype.localised_name, " (", math.floor(fluid.temperature), " °C)"}
        end

        local button = flow.add {type = "sprite-button", name = "fluid_sprite_button", style = "transparent_slot"}
        button.sprite = sprite
        button.elem_tooltip = {type = "fluid", name = fluid.name}

        flow.add {type = "label", style = "clickable_squashable_label", caption = label_caption}
        flow.add {type = "empty-widget"}.style.horizontally_stretchable = true
        flow.add {type = "label", caption = util.format_number(fluid.amount, true), tooltip = tostring(fluid.amount)}
        flow.add {type = "sprite-button", name = "py_caravan_flush_button", style = "tool_button_red", sprite = "utility/trash", tooltip = {"caravan-gui.flush-contents", prototype.localised_name}}
    else
        flow.style.horizontally_stretchable = true
        flow.style.horizontal_align = "center"
        flow.add {type = "label", style = "semibold_label", caption = "Empty"}
        flow.add {type = "sprite-button", style = "transparent_slot"}.sprite = "utility/fluid_icon"
    end
end

function P.build_cargo_flow(parent, player, caravan_data, enabled)
    local flow = parent.add {type = "flow", direction = "vertical", name = "cargo_flow", enabled = enabled}
    flow.style.vertical_spacing = 8
    flow.add {type = "label", caption = "Food"}
    inv.build_fuel_inventory(flow, caravan_data)
    flow.add {type = "line", style = "inside_shallow_frame_with_padding_line"}.style.horizontally_stretchable = true

    if caravan_data.entity.name:find("^fluidavan") then
        flow.add {type = "label", caption = {"caravan-gui.tank-label"}}
        P.build_fluid_flow(flow, caravan_data)
    else
        flow.add {type = "label", caption = {"entity-name.caravan"}}
        inv.build_caravan_inventory(flow, caravan_data)
    end
    flow.add {type = "line", style = "inside_shallow_frame_with_padding_line"}.style.horizontally_stretchable = true
    flow.add {type = "label", caption = "Character"}
    inv.build_character_inventory(flow, player, caravan_data)
end

function P.build_cargo_tab(parent, player, caravan_data, enabled)
    local cargo_tab = parent.add {type = "tab", name = "cargo_tab", caption = "Cargo"}
    local pane = parent.add {type = "scroll-pane", name = "cargo_pane", style = "scroll_pane_under_subheader"}
    pane.style.horizontally_stretchable = true
    pane.style.left_padding = 12
    pane.vertical_scroll_policy = "auto"
    pane.horizontal_scroll_policy = "never"


    P.build_cargo_flow(pane, player, caravan_data, enabled)

    parent.add_tab(cargo_tab, pane)
    return cargo_tab
end

function P.update_cargo_pane(player)
    local gui = player.gui.screen.caravan_gui
    if not gui then return end

    local caravan_data = storage.caravans[gui.tags.unit_number]
    local cargo_pane = gui.entity_frame.tabbed_pane_frame.tabbed_pane.cargo_pane
    local enabled = cargo_pane.cargo_flow.enabled

    cargo_pane.cargo_flow.destroy()
    P.build_cargo_flow(cargo_pane, player, caravan_data, enabled)
end

gui_events[defines.events.on_gui_click]["py_caravan_flush_button"] = function(event)
    local player = game.get_player(event.player_index)
    local gui = player.gui.screen.caravan_gui
    local unit_number = gui.tags.unit_number

    local caravan = storage.caravans[unit_number]
    caravan.fluid = nil
    Impl.destroy_altmode_icon(caravan)
    P.update_cargo_pane(player)
end

return P
