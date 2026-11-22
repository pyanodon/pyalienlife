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

CaravanGuiComponents = mod

return mod
