require 'caravan-gui-shared'

function Caravan.has_any_caravan_at_all()
	for _, caravan in pairs(global.caravans) do
		if Caravan.validity_check(caravan) then return true end
	end
	return false
end

local function create_gui(gui, player)
    if not Caravan.has_any_caravan_at_all() then
        gui = gui.add{type = 'flow', direction = 'vertical'}
        gui.style.horizontal_align = 'center'
        gui.style.horizontally_stretchable = true
        gui.add{type = 'label', caption = ''}
        gui.add{type = 'label', caption = {'caravan-global-gui.empty'}}.style.single_line = false
        gui.add{type = 'label', caption = {'caravan-global-gui.empty-2'}}.style.single_line = false
        return
    end
    local table = gui.add{
        type = 'table',
        name = 'table',
        column_count = 4
    }
    for key, caravan_data in pairs(global.caravans) do
        if Caravan.validity_check(caravan_data) and caravan_data.entity.force_index == player.force_index then
            Caravan.add_gui_row(caravan_data, key, table)
        end
    end
end

local function on_search(search_key, gui, player)
    search_key = search_key:lower()
    for _, child in pairs(gui.table.children) do
        if child.type == 'frame' then
            local unit_number = child.tags.unit_number
            local caravan_data = global.caravans[unit_number]
            if caravan_data then
                child.visible = search_key == '' or Caravan.get_name(caravan_data):lower():find(search_key, 1, true)
            end
        end
    end
end

remote.add_interface('pywiki_caravan_manager', {
	create_gui = create_gui,
    on_search = on_search,
})