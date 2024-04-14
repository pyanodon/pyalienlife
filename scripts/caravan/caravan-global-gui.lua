require 'caravan-gui-shared'

function Caravan.has_any_caravan_at_all()
	for _, caravan in pairs(global.caravans) do
		if Caravan.validity_check(caravan) then return true end
	end
	return false
end

local function create_gui(gui, player)
    if not Caravan.has_any_caravan_at_all() then
        gui.add{type = 'label', caption = {'caravan-global-gui.empty'}}
        return
    end
    local table = gui.add{
        type = 'table',
        column_count = 2
    }
    for key, caravan_data in pairs(global.caravans) do
        if Caravan.validity_check(caravan_data) then
            Caravan.add_gui_row(caravan_data, key, table)
        end
    end
end

gui_events[defines.events.on_gui_click]['py_click_caravan_.'] = function(event)
    local player = game.get_player(event.player_index)
    local element = event.element
    local tags = element.tags
    local caravan_data = global.caravans[tags.unit_number]
    if Caravan.validity_check(caravan_data) then
        Caravan.build_gui(player, caravan_data.entity)
    end
end

remote.add_interface('pywiki_caravan_manager', {
	create_gui = create_gui
})