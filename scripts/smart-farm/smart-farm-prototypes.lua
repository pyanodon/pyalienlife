---@diagnostic disable-next-line: assign-type-mismatch
---@type DigosaursData
local data = py.mod_data.digosaurus

py.assert_type (
    data,
    "table",
    "ERROR: pY mod data [digosaurus] is invalid"
)