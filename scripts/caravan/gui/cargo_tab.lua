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
    -- TODO localise
    local cargo_tab = parent.add {type = "tab", name = "cargo_tab", caption = "Cargo"}
    local pane = parent.add {type = "scroll-pane", name = "cargo_pane", style = "scroll_pane_under_subheader"}
    pane.style.horizontally_stretchable = true
    pane.vertical_scroll_policy = "auto"
    pane.horizontal_scroll_policy = "never"

    P.build_cargo_flow(pane, player, caravan_data)

    parent.add_tab(cargo_tab, pane)
    return cargo_tab
end

-- TODO merge with Cargo tab, and either show the caravan inventory or the fluidavan fluid contents, or an empty label!
function P.build_fluid_cargo_tab(parent)
    local cargo_tab = parent.add {type = "tab", caption = "Fluid cargo"}
    local pane = parent.add {type = "scroll-pane", style = "scroll_pane_under_subheader"}
    pane.style.horizontally_stretchable = true
    pane.vertical_scroll_policy = "auto"
    pane.horizontal_scroll_policy = "never"

    pane.add {type = "label", caption = "Food", style = "semibold_label"}
    local food_flow = pane.add {type = "flow", direction = "horizontal", style = "player_input_horizontal_flow"}
    food_flow.style.vertical_align = "center"
    local slot_flow = food_flow.add {type = "flow", direction = "horizontal", style = "packed_horizontal_flow"}

    slot_flow.add {type = "sprite-button", style = "inventory_slot", sprite = "slot_icon_fuel"}
    slot_flow.add {type = "sprite-button", style = "inventory_slot", sprite = "slot_icon_fuel"}
    food_flow.add {type = "progressbar", style = "burning_progressbar"}.style.horizontally_stretchable = true

    pane.add {type = "line", style = "inside_shallow_frame_with_padding_line"}.style.horizontally_stretchable = true

    pane.add {type = "label", caption = "Fluid contents", style = "semibold_label"}

    local fluid_flow = pane.add {type = "flow", name = "fluid_flow", direction = "horizontal"}

    local has_fluid = true
    if has_fluid then
        fluid_flow.style.vertical_align = "center"
        fluid_flow.style.horizontal_spacing = 8
        fluid_flow.add {type = "sprite-button", name = "fluid_sprite_button", style = "transparent_slot"}.sprite = "fluid/flue-gas"
        fluid_flow.add {type = "label", style = "clickable_squashable_label", caption = "Flue gas"}
        fluid_flow.add {type = "empty-widget"}.style.horizontally_stretchable = true
        fluid_flow.add {type = "label", caption = "60k"}
        fluid_flow.add {type = "sprite-button", name = "py_caravan_flush_contents", style = "tool_button_red", sprite = "utility/trash"}
    else
        fluid_flow.style.horizontally_stretchable = true
        fluid_flow.style.horizontal_align = "center"
        fluid_flow.add {type = "sprite-button", style = "transparent_slot"}.sprite = "utility/fluid_icon"
    end

    pane.add {type = "line", style = "inside_shallow_frame_with_padding_line"}.style.horizontally_stretchable = true

    P.build_inventory(pane, "Character", 80)

    parent.add_tab(cargo_tab, pane)
    return cargo_tab
end

function P.update_cargo_pane(player)
    local gui = player.gui.screen.caravan_new_gui
    if not gui then return end

    local caravan_data = storage.caravans[gui.tags.unit_number]
    local cargo_pane = gui.entity_frame.tabbed_pane_frame.tabbed_pane.cargo_pane 

    cargo_pane.cargo_flow.destroy()
    P.build_cargo_flow(cargo_pane, player, caravan_data)
end

return P
