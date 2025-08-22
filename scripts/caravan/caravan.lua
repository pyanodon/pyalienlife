Caravan = {}

require "event-handlers/global"
require "event-handlers/destination"
require "event-handlers/action"
require "event-handlers/subheader_buttons"
require "event-handlers/interrupts"

require "manager"

py.on_event(py.events.on_init(), function()
    ---@type table<integer, Caravan>
    storage.caravans = storage.caravans or {}
    storage.interrupts = storage.interrupts or {}
    -- Table of gui elements indexed by their name. Not necessary, but better than hardcoding the realtive paths
    storage.gui_elements_by_name = storage.gui_elements_by_name or {}
    storage.last_opened = storage.last_opened or {}
    storage.last_opened_tab = storage.last_opened_tab or {}
    storage.make_operable_next_tick = storage.make_operable_next_tick or {}
    storage.edited_interrupt = storage.edited_interrupt or nil
    storage.caravan_gui_last_location = nil
    storage.edit_interrupt_gui_last_location = nil
end)
