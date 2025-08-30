require("__core__/lualib/util")

local P = {}

local actions_components = require("impl/actions")
local control_components = require("impl/control")
local gui_components = require("impl/gui")
local schedule_components = require("impl/schedule")

P = table.merge(P, actions_components)
P = table.merge(P, control_components)
P = table.merge(P, gui_components)
P = table.merge(P, schedule_components)

return P
