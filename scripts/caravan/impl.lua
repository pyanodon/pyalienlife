require "__core__/lualib/util"

---@class CaravanImpl
---@field stop_actions function
---@field begin_action function
---@field begin_schedule function
---@field select_destination function
---@field find_interrupt_to_trigger function
---@field remove_temporary_stops function
---@field insert_temporary_stops_into_schedule function
---@field instantiate_caravan function
---@field remove_alert function
---@field validity_check function
---@field advance_caravan_schedule_by_1 function
---@field add_alert function
---@field goto_entity function
---@field goto_position function
---@field destroy_altmode_icon function
---@field status_info function

local P = {}

local actions_components = require("impl/actions")
local control_components = require("impl/control")
local gui_components = require("impl/gui")
local schedule_components = require("impl/schedule")

P = table.merge(P, actions_components)
P = table.merge(P, control_components)
P = table.merge(P, gui_components)
P = table.merge(P, schedule_components)

return P--[[@as CaravanImpl]]
