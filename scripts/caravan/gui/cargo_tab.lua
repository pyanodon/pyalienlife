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
        inventory_table.add {type = "sprite-button", style = "inventory_slot"}
    end
end

function P.build_cargo_flow(parent, player, caravan_data)
    local flow = parent.add {type = "flow", direction = "vertical", name = "cargo_flow"}
    flow.style.vertical_spacing = 8
    flow.add {type = "label", caption = "Food"}
    inv.build_fuel_inventory(flow, caravan_data)
    flow.add {type = "line", style = "inside_shallow_frame_with_padding_line"}.style.horizontally_stretchable = true
    flow.add {type = "label", caption = "Caravan"}
    inv.build_caravan_inventory(flow, caravan_data)
    flow.add {type = "line", style = "inside_shallow_frame_with_padding_line"}.style.horizontally_stretchable = true
    flow.add {type = "label", caption = "Character"}
    inv.build_character_inventory(flow, player, caravan_data)
end

function P.build_cargo_tab(parent, player, caravan_data)
    local cargo_tab = parent.add {type = "tab", name = "cargo_tab", caption = "Cargo"}
    local pane = parent.add {type = "scroll-pane", name = "cargo_pane", style = "scroll_pane_under_subheader"}
    pane.style.horizontally_stretchable = true
    pane.style.left_padding = 12
    pane.vertical_scroll_policy = "auto"
    pane.horizontal_scroll_policy = "never"

    if player.controller_type == defines.controllers.character then
        P.build_cargo_flow(pane, player, caravan_data)
    else
        pane.add {type = "empty-widget"}.style.vertically_stretchable = true
    end

    parent.add_tab(cargo_tab, pane)
    return cargo_tab
end

function P.update_cargo_pane(player)
    local gui = player.gui.screen.caravan_gui
    if not gui then return end

    if player.controller_type ~= defines.controllers.character then return end

    local caravan_data = storage.caravans[gui.tags.unit_number]
    local cargo_pane = gui.entity_frame.tabbed_pane_frame.tabbed_pane.cargo_pane 

    cargo_pane.cargo_flow.destroy()
    P.build_cargo_flow(cargo_pane, player, caravan_data)
end

return P
