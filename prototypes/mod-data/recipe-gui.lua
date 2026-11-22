---@diagnostic disable-next-line: assign-type-mismatch
---@type pyModData
local mod_data = data.raw["mod-data"].pyanodons.data

---@class (partial) pyModData
---@field recipe_gui RecipeGUIData

mod_data.recipe_gui = {
    subgroups = {
        ["auog"] = true,
        ["ulric"] = true,
        ["mukmoux"] = true,
        ["arthurian"] = true,
        ["cottongut"] = true,
        ["dhilmos"] = true,
        ["scrondrix"] = true,
        ["phadai"] = true,
        ["fish"] = true,
        ["phagnot"] = true,
        ["kmauts"] = true,
        ["dingrits"] = true,
        ["xeno"] = true,
        ["arqad"] = true,
        ["cridren"] = true,
        ["trits"] = true,
        ["vonix"] = true,
        ["vrauks"] = true,
        ["xyhiphoe"] = true,
        ["zipir"] = true,
        ["korlex"] = true,
        ["simik"] = true,
        ["grod-super"] = true,
        ["ralesia-super"] = true,
        ["rennea-super"] = true,
        ["tuuphra-super"] = true,
        ["yotoi-super"] = true,
        ["yotoi-fruit-super"] = true,
        ["bioreserve-super"] = true,
    },
    machines = {
        ["slaughterhouse-mk01"] = true,
        ["slaughterhouse-mk02"] = true,
        ["slaughterhouse-mk03"] = true,
        ["slaughterhouse-mk04"] = true,
        ["rc-mk01"] = true,
        ["rc-mk02"] = true,
        ["rc-mk03"] = true,
        ["rc-mk04"] = true,
        ["mega-farm"] = true
    },
    alt_icons = {
        ["zipir"] = "zipir1",
        ["grod-super"] = "grod",
        ["ralesia-super"] = "ralesia",
        ["rennea-super"] = "rennea",
        ["tuuphra-super"] = "tuuphra",
        ["yotoi-super"] = "yotoi",
        ["yotoi-fruit-super"] = "yotoi-fruit",
        ["bioreserve-super"] = "native-flora",
    }
}
