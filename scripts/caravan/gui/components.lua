require "__core__/lualib/util"

local mod = {}

local main_frame_components = require("main_frame")
local schedule_tab_components = require("schedule_tab")
local cargo_tab_components = require("cargo_tab")
local actions_components = require("actions")
local number_selection_components = require("action_widgets/number_selection")
local comparator_components = require("action_widgets/comparator")

mod = table.merge(mod, main_frame_components)
mod = table.merge(mod, schedule_tab_components)
mod = table.merge(mod, cargo_tab_components)
mod = table.merge(mod, actions_components)
mod = table.merge(mod, number_selection_components)
mod = table.merge(mod, comparator_components)

---@class CaravanGuiComponents
---@field update_schedule_pane function
---@field get_slider_frame function
---@field build_main_frame function
---@field build_subheader_frame function
---@field build_status_flow function
---@field build_camera_frame function
---@field build_tabbed_pane_frame function
---@field build_schedule_tab function
---@field build_cargo_tab function
---@field update_status_flow function
---@field update_cargo_pane function
CaravanGuiComponents = mod

return mod--[[@as CaravanGuiComponents]]
