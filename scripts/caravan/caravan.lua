---@namespace PyAlienLife
---@type PyAlienLifeStorage
storage = storage --[[@as PyAlienLifeStorage]]

Caravan = {}

require "event-handlers/global"
require "event-handlers/destination"
require "event-handlers/action"
require "event-handlers/subheader_buttons"
require "event-handlers/interrupts"

require "manager"

---@class CaravanEntity:LuaEntity
---@field name CaravanName

---@class Caravan
---@field itemised nil
---@field unit_number int
---@field entity CaravanEntity
---@field schedule table?
---@field map_tag LuaCustomChartTag?
---@field schedule_id int?
---@field interrupts table[]
---@field action_id int?
---@field fluid Fluid?
---@field inventory LuaInventory?
---@field fuel_inventory LuaInventory?

---@class (partial) PyAlienLifeStorage
---@field caravans table<integer, Caravan>
---@field interrupts table
---@field last_opened table
---@field last_opened_tab table
---@field make_operable_next_tick table
---@field edited_interrupts table
---@field gui_locations table

py.on_event(py.events.on_init(), function()
    storage.caravans = storage.caravans or {}
    storage.interrupts = storage.interrupts or {}
    storage.last_opened = storage.last_opened or {}
    storage.last_opened_tab = storage.last_opened_tab or {}
    storage.make_operable_next_tick = storage.make_operable_next_tick or {}
    storage.edited_interrupts = storage.edited_interrupts or {}
    storage.gui_locations = storage.gui_locations or {}
end)

-- clear UI location storage if a player changes their display settings
py.on_event({
    defines.events.on_player_display_resolution_changed,
    defines.events.on_player_display_scale_changed,
    defines.events.on_player_display_density_scale_changed},
    function(event)
        storage.gui_locations[event.player_index] = {}
    end
)