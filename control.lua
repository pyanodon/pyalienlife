require "__pypostprocessing__.lib"

---@param favorite_foods table
---@param locale string
---@return LocalisedString
py.generate_favorite_food_tooltip = function(favorite_foods, locale)
    ---@type LocalisedString
    local favorites = {""}
    for food, actions in pairs(favorite_foods) do
        favorites[#favorites + 1] = {locale .. ".favorite-foods-sub", "[item=" .. food .. "]", prototypes.item[food].localised_name, actions}
        favorites[#favorites + 1] = "\n"
    end
    favorites[#favorites] = nil
    return {locale .. ".favorite-foods-main", favorites}
end

require "scripts.wiki.text-pages"
require "scripts.caravan.caravan"
require "scripts.digosaurus.digosaurus"
require "scripts.ocula.ocula"
---@diagnostic disable-next-line: different-requires
require "scripts.farming.farming"
require "scripts.smart-farm.smart-farm"
require "scripts.worm.worm"
require "scripts.turd.turd"
require "scripts.vatbrain.vatbrain"
require "scripts.ulric.ulric"
require "scripts.biofluid.biofluid"
require "scripts.mounts.mounts"

local function discoscience()
    if remote.interfaces["DiscoScience"] and remote.interfaces["DiscoScience"]["setIngredientColor"] then
        remote.call("DiscoScience", "setIngredientColor", "py-science-pack-1", {r = 178, g = 88, b = 1})
        remote.call("DiscoScience", "setIngredientColor", "py-science-pack-2", {r = 246, g = 125, b = 45})
        remote.call("DiscoScience", "setIngredientColor", "py-science-pack-3", {r = 213, g = 134, b = 23})
        remote.call("DiscoScience", "setIngredientColor", "py-science-pack-4", {r = 192, g = 75, b = 23})
        remote.call("DiscoScience", "setIngredientColor", "automation-secience-pack", {r = 158, g = 129, b = 100})
    end
end

local function pickerdollies()
    if remote.interfaces["PickerDollies"] then
        remote.call("PickerDollies", "add_blacklist_name", "caravan", true)
        remote.call("PickerDollies", "add_blacklist_name", "flyavan", true)
        remote.call("PickerDollies", "add_blacklist_name", "outpost", true)
        remote.call("PickerDollies", "add_blacklist_name", "outpost-aerial", true)
        remote.call("PickerDollies", "add_blacklist_name", "mega-farm", true)
        remote.call("PickerDollies", "add_blacklist_name", "pydrive", true)
        remote.call("PickerDollies", "add_blacklist_name", "ipod", true)
        remote.call("PickerDollies", "add_blacklist_name", "vat-brain", true)
        remote.call("PickerDollies", "add_blacklist_name", "dino-dig-site", true)
        remote.call("PickerDollies", "add_blacklist_name", "bioport", true)
        remote.call("PickerDollies", "add_blacklist_name", "provider-tank", true)
        remote.call("PickerDollies", "add_blacklist_name", "requester-tank", true)
        remote.call("PickerDollies", "add_blacklist_name", "vessel", true)
        remote.call("PickerDollies", "add_blacklist_name", "vessel-to-ground", true)
        remote.call("PickerDollies", "add_blacklist_name", "gobachov", true)
        remote.call("PickerDollies", "add_blacklist_name", "huzu", true)
        remote.call("PickerDollies", "add_blacklist_name", "chorkok", true)
        remote.call("PickerDollies", "add_blacklist_name", "tailings-pond", true)

        for i = 1, 5 do
            for j = 1, 5 do
                remote.call("PickerDollies", "add_blacklist_name", "beacon-AM" .. i .. "-FM" .. j, true)
                remote.call("PickerDollies", "add_blacklist_name", "diet-beacon-AM" .. i .. "-FM" .. j, true)
            end
        end
    end
end

py.on_event(py.events.on_init(), function()
    discoscience()
    pickerdollies()
    if remote.interfaces["freeplay"] then
        local created_items = remote.call("freeplay", "get_created_items")
        created_items["firearm-magazine"] = 500
        remote.call("freeplay", "set_created_items", created_items)

        local ship_items = remote.call("freeplay", "get_ship_items")
        ship_items["iron-chest"] = 5
        remote.call("freeplay", "set_ship_items", ship_items)
    end
end)

py.on_event(py.events.on_built(), function(event)
    Digosaurus.events.on_built(event)
    Farming.events.on_built(event)
    Smart_Farm.events.on_built(event)
    Worm.events.on_built(event)
    Turd.events.on_built(event)
    Mounts.events.on_built(event)
end)

py.on_event(defines.events.on_ai_command_completed, function(event)
    Digosaurus.events.on_ai_command_completed(event)
end)

py.on_event(py.events.on_destroyed(), function(event)
    Digosaurus.events.on_destroyed(event)
    Turd.events.on_destroyed(event)
    Mounts.events.on_destroyed(event)
    Smart_Farm.events.on_destroyed(event)
end)

py.on_event(defines.events.on_player_removed_equipment, function(event)
    Mounts.events.on_player_removed_equipment(event)
end)

py.on_event(defines.events.on_gui_opened, function(event)
    Digosaurus.events.on_gui_opened(event)
end)

py.on_event({defines.events.on_gui_closed, defines.events.on_player_changed_surface}, function(event)
    Digosaurus.events.close_gui(event)
end)

py.on_event(defines.events.on_rocket_launched, Smart_Farm.events.on_rocket_launched)

py.on_event(defines.events.on_object_destroyed, function(event)
    Farming.events.on_object_destroyed(event)
    Worm.events.on_object_destroyed(event)
end)

py.register_on_nth_tick(59, "Farming59", "pyal", Farming.events[59])
py.register_on_nth_tick(121, "Farming121", "pyal", Farming.events[121])
py.register_on_nth_tick(239, "Mounts", "pyal", Mounts.events[239])
py.register_on_nth_tick(397, "Ulric", "pyal", Ulric.events[397])
py.register_on_nth_tick(123, "Turd", "pyal", Turd.events[123])

py.register_on_nth_tick(7, "update-guis", "pyal", function()
    for _, player in pairs(game.connected_players) do
        local gui = player.gui.relative.digosaurus_gui
        if gui then
            Digosaurus.update_gui(gui); goto continue
        end
        gui = Caravan.get_caravan_gui(player)
        if gui then
            Caravan.update_gui(gui, true, player); goto continue
        end
        gui = player.gui.relative.bioport_gui
        if gui then
            Biofluid.update_bioport_gui(player, gui); goto continue
        end
        ::continue::
    end
end)

script.on_event(defines.events.on_player_cursor_stack_changed, Digosaurus.events.on_player_cursor_stack_changed)
script.on_event(defines.events.on_research_finished, Turd.events.on_research_finished)
script.on_event(defines.events.on_research_reversed, Turd.events.on_research_reversed)
script.on_event(defines.events.on_selected_entity_changed, Turd.events.on_selected_entity_changed)
script.on_event(defines.events.on_player_used_capsule, Ulric.events.used_capsule)

remote.add_interface("pyal", {
    ---@param func string
    execute_on_nth_tick = function(func)
        py.mod_nth_tick_funcs[func]()
    end
})

py.finalize_events()
