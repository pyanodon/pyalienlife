require 'scripts/lib'
require 'scripts/caravan/caravan'
require 'scripts/digosaurus/digosaurus'
require 'scripts/ocula/ocula'
require 'scripts/farming/farming'
require 'scripts/slaughterhouse/slaughterhouse'
require 'scripts/smart-farm/smart-farm'
require 'scripts/worm/worm'

local bio_list = require('prototypes/items/biomass-convertion')

remote.add_interface('data_puller', {order_biolist = function()
    local bio = global.compostables.og_list
    local name_table = {}
    local input_table = {}
    local output_table = {}
    for i, item in pairs(bio) do
        table.insert(name_table, i)
        if input_table[item.item_amount] == nil then
            input_table[item.item_amount] = {i}
        else
            table.insert(input_table[item.item_amount], i)
        end
        if output_table[item.biomass_amount] == nil then
            output_table[item.biomass_amount] = {i}
        else
            table.insert(output_table[item.biomass_amount], i)
        end
    end
    table.sort(name_table)
    for k, v in pairs(input_table) do table.sort(v) end
    for k, v in pairs(output_table) do table.sort(v) end
    return bio, name_table, input_table, output_table
end})

local function init_discoscience()
    if remote.interfaces['DiscoScience'] and remote.interfaces['DiscoScience']['setIngredientColor'] then
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-1', {r = 178, g = 88, b = 1})
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-2', {r = 246, g = 125, b = 45})
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-3', {r = 213, g = 134, b = 23})
        remote.call('DiscoScience', 'setIngredientColor', 'py-science-pack-4', {r = 192, g = 75, b = 23})
        remote.call('DiscoScience', 'setIngredientColor', 'automation-secience-pack', {r = 158, g = 129, b = 100})
    end
end

local function init()
    --wiki info
    global.compostables = global.compostables or {
        og_list = bio_list,
        name_order = {},
        input_order = {},
        output_order = {}
    }

    global.vatbrains = global.vatbrains or {}

    init_discoscience()

    Caravan.events.init()
    Digosaurus.events.init()
    Oculua.events.on_init()
    Farming.events.on_init()
    Slaughterhouse.events.on_init()
    Worm.events.on_init()
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
script.on_nth_tick(30, Farming.events[30])
script.on_nth_tick(221, Oculua.events[221])

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