require "caravan-gui-shared"

function Caravan.has_any_caravan_at_all()
    for _, caravan in pairs(storage.caravans) do
        if Caravan.validity_check(caravan) then return true end
    end
    return false
end

local function create_gui(gui, player)
    local has_any = Caravan.has_any_caravan_at_all()

    local table = gui.add {
        type = "table",
        name = "table",
        column_count = 4,
        style = "filter_group_table"
    }
    if has_any then
        for key, caravan_data in pairs(storage.caravans) do
            if Caravan.validity_check(caravan_data) and caravan_data.entity.force_index == player.force_index then
                Caravan.add_gui_row(caravan_data, key, table)
            end
        end
    else
        local gui = gui.add {type = "frame", style = "negative_subheader_frame", direction = "horizontal", name = "no_spacecrafts_frame", index = 1}
        gui.style.top_margin = -4
        gui.style.left_margin = -8
        gui.style.right_margin = -20
        gui = gui.add {type = "flow", direction = "horizontal", style = "centering_horizontal_flow"}
        gui.style.horizontally_stretchable = true
        local warning = gui.add {type = "label", caption = "[font=heading-1]⚠[/font]", style = "bold_label"}
        warning.style.top_margin = 4
        warning.style.bottom_margin = -4
        gui.add {type = "label", caption = {"caravan-gui.empty"}, style = "bold_label"}.style.single_line = false
        gui.add {type = "label", caption = {"caravan-gui.empty-2"}}.style.single_line = false
    end
    for i = 1, 4 do
        for i = 1, 2 do
            local ew = table.add {type = "empty-widget"}
            ew.style.vertically_stretchable = true
            ew.style.horizontally_stretchable = true
        end
    end
end

local function on_search(search_key, gui, player)
    search_key = search_key:lower()
    for _, child in pairs(gui.table.children) do
        if child.type == "frame" then
            local unit_number = child.tags.unit_number
            local caravan_data = storage.caravans[unit_number]
            if caravan_data then
                child.visible = search_key == "" or Caravan.get_name(caravan_data):lower():find(search_key, 1, true)
            end
        end
    end
end

remote.add_interface("pywiki_caravan_manager", {
    create_gui = create_gui,
    on_search = on_search,
})
