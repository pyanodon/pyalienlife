_G.gui_events = {
	[defines.events.on_gui_click] = {},
	[defines.events.on_gui_confirmed] = {},
	[defines.events.on_gui_text_changed] = {},
	[defines.events.on_gui_checked_state_changed] = {},
	[defines.events.on_gui_selection_state_changed] = {},
	[defines.events.on_gui_checked_state_changed] = {},
	[defines.events.on_gui_elem_changed] = {},
	[defines.events.on_gui_value_changed] = {},
	[defines.events.on_gui_location_changed] = {},
	[defines.events.on_gui_selected_tab_changed] = {},
	[defines.events.on_gui_switch_state_changed] = {}
}
function _G.process_gui_event(event)
	if event.element and event.element.valid then
		for pattern, f in pairs(gui_events[event.name]) do
			if event.element.name:match(pattern) then f(event); return end
		end
	end
end

for event, _ in pairs(gui_events) do
	script.on_event(event, process_gui_event)
end

require 'scripts/wiki/text-pages'
require 'scripts/caravan/caravan'
require 'scripts/digosaurus/digosaurus'
require 'scripts/ocula/ocula'
require 'scripts/farming/farming'
require 'scripts/slaughterhouse/slaughterhouse'
require 'scripts/smart-farm/smart-farm'
require 'scripts/worm/worm'
require 'scripts/turd/turd'
require 'scripts/vatbrain/vatbrain'

local function discoscience()
    if remote.interfaces['DiscoScience'] and remote.interfaces['DiscoScience']['setIngredientColor'] then
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-1', {r = 178, g = 88, b = 1})
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-2', {r = 246, g = 125, b = 45})
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-3', {r = 213, g = 134, b = 23})
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-4', {r = 192, g = 75, b = 23})
        remote.call('DiscoScience', 'setIngredientColor', 'automation-secience-pack', {r = 158, g = 129, b = 100})
    end
end

local function init()
    discoscience()
    Caravan.events.init()
    Digosaurus.events.init()
    Oculua.events.on_init()
    Farming.events.on_init()
    Slaughterhouse.events.on_init()
    Worm.events.on_init()
    Wiki.events.on_init()
    Turd.events.on_init()
    Vatbrain.events.on_init()
end

script.on_init(function()
    init()
    if remote.interfaces['freeplay'] then
        local created_items = remote.call('freeplay', 'get_created_items')
        created_items['firearm-magazine'] = 500
        remote.call('freeplay', 'set_created_items', created_items)

        local ship_items = remote.call('freeplay', 'get_ship_items')
        ship_items['iron-chest'] = 5
        remote.call('freeplay', 'set_ship_items', ship_items)
    end
end)
script.on_configuration_changed(init)

local on_built = {defines.events.on_built_entity, defines.events.on_robot_built_entity, defines.events.script_raised_revive, defines.events.script_raised_built}
script.on_event(on_built, function(event)
    Oculua.events.on_built(event)
    Caravan.events.on_built(event)
    Digosaurus.events.on_built(event)
    Farming.events.on_built(event)
    Smart_Farm.events.on_built(event)
    Worm.events.on_built(event)
    Turd.events.on_built(event)
    Vatbrain.events.on_built(event)
end)

script.on_event(defines.events.on_ai_command_completed, function(event)
    Caravan.events.ai_command_completed(event)
    Digosaurus.events.on_ai_command_completed(event)
    Oculua.events.on_ai_command_completed(event)
end)

local on_destroyed = {defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity, defines.events.script_raised_destroy, defines.events.on_entity_died}
script.on_event(on_destroyed, function(event)
    Caravan.events.on_destroyed(event)
    Digosaurus.events.on_destroyed(event)
    Oculua.events.on_destroyed(event)
    Turd.events.on_destroyed(event)
    Vatbrain.events.on_destroyed(event)
end)

script.on_event(defines.events.on_gui_opened, function(event)
    Oculua.events.on_gui_opened(event)
    Digosaurus.events.on_gui_opened(event)
    Slaughterhouse.events.on_gui_opened(event)
end)

script.on_event({defines.events.on_gui_closed, defines.events.on_player_changed_surface}, function(event)
    Caravan.events.close_gui(event)
    Digosaurus.events.close_gui(event)
    Slaughterhouse.events.on_gui_closed(event)
end)

script.on_event(defines.events.on_rocket_launched, Smart_Farm.events.on_rocket_launched)

script.on_event(defines.events.on_entity_destroyed, function(event)
	Caravan.events.on_entity_destroyed(event)
	Farming.events.on_entity_destroyed(event)
    Slaughterhouse.events.on_entity_destroyed(event)
    Worm.events.on_entity_destroyed(event)
end)

script.on_event(defines.events.on_entity_settings_pasted, Caravan.events.on_entity_settings_pasted)

script.on_nth_tick(60, function()
    Caravan.events[60]()
    Digosaurus.events[60]()
end)
script.on_nth_tick(121, Farming.events[121])
script.on_nth_tick(59, Farming.events[59])
script.on_nth_tick(221, Oculua.events[221])
script.on_nth_tick(71, Oculua.events[71])
script.on_nth_tick(41, Vatbrain.events[41])

script.on_nth_tick(4, function()
    for _, player in pairs(game.connected_players) do
		local gui = player.gui.relative.digosaurus_gui
		if gui then Digosaurus.update_gui(gui); goto continue end
        gui = Caravan.get_caravan_gui(player)
        if gui then Caravan.update_gui(gui, true) end
        ::continue::
	end
end)

script.on_event('open-gui', function(event)
    Caravan.events.on_open_gui(event)
    Caravan.events.used_capsule(event)
end)

script.on_event(defines.events.on_research_finished, function(event) Turd.events.on_research_finished(event) end)
script.on_event(defines.events.on_research_reversed, function(event) Turd.events.on_research_reversed(event) end)