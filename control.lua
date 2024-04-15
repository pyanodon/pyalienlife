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
local function process_gui_event(event)
	if event.element and event.element.valid then
		for pattern, f in pairs(gui_events[event.name]) do
			if event.element.name:match(pattern) then f(event); return end
		end
	end
end

for event, _ in pairs(gui_events) do
	script.on_event(event, process_gui_event)
end

_G.generate_favorite_food_tooltip = function(favorite_foods, locale)
	local favorites = {''}
	for food, actions in pairs(favorite_foods) do
		favorites[#favorites + 1] = {locale .. '.favorite-foods-sub', '[item=' .. food .. ']', game.item_prototypes[food].localised_name, actions}
		favorites[#favorites + 1] = '\n'
	end
	favorites[#favorites] = nil
	return {locale .. '.favorite-foods-main', favorites}
end

_G.generate_allowed_module_tooltip = function(allowed_modules)
	local favorites = {'', {'gui.module-description'}, '\n'}
	for module, _ in pairs(allowed_modules) do
		favorites[#favorites + 1] = {'', '[font=heading-2][item=' .. module .. '][/font]', ' ', game.item_prototypes[module].localised_name}
		favorites[#favorites + 1] = '\n'
	end
	favorites[#favorites] = nil
	return favorites
end

_G.draw_error_sprite = function(entity, sprite, time_to_live)
    rendering.draw_sprite{
        sprite = sprite,
        x_scale = 0.5,
        y_scale = 0.5,
        target = entity,
        surface = entity.surface,
        time_to_live = 30,
        render_layer = 'air-entity-info-icon'
    }
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
require 'scripts/ulric/ulric'
require 'scripts/biofluid/biofluid'
require 'scripts/mounts/mounts'

local function discoscience()
    if remote.interfaces['DiscoScience'] and remote.interfaces['DiscoScience']['setIngredientColor'] then
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-1', {r = 178, g = 88, b = 1})
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-2', {r = 246, g = 125, b = 45})
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-3', {r = 213, g = 134, b = 23})
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-4', {r = 192, g = 75, b = 23})
        remote.call('DiscoScience', 'setIngredientColor', 'automation-secience-pack', {r = 158, g = 129, b = 100})
    end
end

local function pickerdollies()
    if remote.interfaces['PickerDollies'] then
		remote.call('PickerDollies', 'add_blacklist_name', 'caravan', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'flyavan', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'outpost', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'outpost-aerial', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'mega-farm', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'pydrive', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'ipod', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'vat-brain', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'dino-dig-site', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'bioport', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'provider-tank', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'requester-tank', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'vessel', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'vessel-to-ground', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'gobachov', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'huzu', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'chorkok', true)
		remote.call('PickerDollies', 'add_blacklist_name', 'tailings-pond', true)

        for i = 1, 5 do
            for j = 1, 5 do
                remote.call('PickerDollies', 'add_blacklist_name', 'beacon-AM' .. i .. '-FM' .. j, true)
                remote.call('PickerDollies', 'add_blacklist_name', 'diet-beacon-AM' .. i .. '-FM' .. j, true)
            end
        end
	end
end

local function init()
    discoscience()
    pickerdollies()
    Caravan.events.init()
    Digosaurus.events.init()
    Oculua.events.on_init()
    Farming.events.on_init()
    Slaughterhouse.events.on_init()
    Worm.events.on_init()
    Wiki.events.on_init()
    Turd.events.on_init()
    Vatbrain.events.on_init()
    Ulric.events.on_init()
    Biofluid.events.on_init()
    Mounts.events.on_init()
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
    Biofluid.events.on_built(event)
    Mounts.events.on_built(event)
end)

script.on_event(defines.events.on_ai_command_completed, function(event)
    Caravan.events.ai_command_completed(event)
    Digosaurus.events.on_ai_command_completed(event)
    Oculua.events.on_ai_command_completed(event)
    Biofluid.events.on_ai_command_completed(event)
end)

local on_destroyed = {defines.events.on_player_mined_entity, defines.events.on_robot_mined_entity, defines.events.script_raised_destroy, defines.events.on_entity_died}
script.on_event(on_destroyed, function(event)
    Caravan.events.on_destroyed(event)
    Digosaurus.events.on_destroyed(event)
    Oculua.events.on_destroyed(event)
    Turd.events.on_destroyed(event)
    Vatbrain.events.on_destroyed(event)
    Biofluid.events.on_destroyed(event)
    Mounts.events.on_destroyed(event)
    Smart_Farm.events.on_destroyed(event)
end)

script.on_event(defines.events.on_player_removed_equipment, function(event)
    Mounts.events.on_player_removed_equipment(event)
end)

script.on_event(defines.events.on_gui_opened, function(event)
    Caravan.events.on_gui_opened_connected(event)
    Oculua.events.on_gui_opened(event)
    Digosaurus.events.on_gui_opened(event)
    Slaughterhouse.events.on_gui_opened(event)
    Biofluid.events.on_gui_opened(event)
end)

script.on_event({defines.events.on_gui_closed, defines.events.on_player_changed_surface}, function(event)
    Caravan.events.close_gui(event)
    Digosaurus.events.close_gui(event)
    Slaughterhouse.events.on_gui_closed(event)
    Biofluid.events.on_gui_closed(event)
end)

script.on_event(defines.events.on_rocket_launched, Smart_Farm.events.on_rocket_launched)

script.on_event(defines.events.on_entity_destroyed, function(event)
	Caravan.events.on_entity_destroyed(event)
	Farming.events.on_entity_destroyed(event)
    Slaughterhouse.events.on_entity_destroyed(event)
    Worm.events.on_entity_destroyed(event)
end)

script.on_event(defines.events.on_entity_settings_pasted, function(event)
    Caravan.events.on_entity_settings_pasted(event)
    Biofluid.events.on_entity_settings_pasted(event)
end)

script.on_nth_tick(41, Vatbrain.events[41])
script.on_nth_tick(43, Oculua.events[43])
script.on_nth_tick(59, Farming.events[59])
script.on_nth_tick(60, Caravan.events[60])
script.on_nth_tick(61, Digosaurus.events[61])
script.on_nth_tick(121, Farming.events[121])
script.on_nth_tick(143, Biofluid.events[143])
script.on_nth_tick(221, Oculua.events[221])
script.on_nth_tick(239, Mounts.events[239])
script.on_nth_tick(397, Ulric.events[397])
script.on_nth_tick(432000, Turd.events[432000])

script.on_nth_tick(7, function()
    for _, player in pairs(game.connected_players) do
		local gui = player.gui.relative.digosaurus_gui
		if gui then Digosaurus.update_gui(gui); goto continue end
        gui = Caravan.get_caravan_gui(player)
        if gui then Caravan.update_gui(gui, true); goto continue end
        gui = player.gui.relative.bioport_gui
        if gui then Biofluid.update_bioport_gui(player, gui); goto continue end
        ::continue::
	end
end)

script.on_event('open-gui', function(event)
    Caravan.events.on_open_gui(event)
    Caravan.events.used_capsule(event)
end)

script.on_event(defines.events.on_research_finished, Turd.events.on_research_finished)
script.on_event(defines.events.on_research_reversed, Turd.events.on_research_reversed)
script.on_event(defines.events.on_selected_entity_changed, Turd.events.on_selected_entity_changed)
script.on_event(defines.events.on_player_used_capsule, Ulric.events.used_capsule)
script.on_event(defines.events.on_player_rotated_entity, Biofluid.events.on_player_rotated_entity)
script.on_event(defines.events.on_player_setup_blueprint, Biofluid.events.on_player_setup_blueprint)
script.on_event(defines.events.on_player_fast_transferred, Biofluid.events.on_player_fast_transferred)