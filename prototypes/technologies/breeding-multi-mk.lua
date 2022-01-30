local mk_packable_properties = {'unit'}
local function unpack_mk(tab, mk)
    for _, prop in ipairs(mk_packable_properties) do
        local val = tab[prop];
        if type(val) == 'table' and #val == 3 then
            tab[prop] = val[mk]
        end
    end
end

local function TECHNOLOGY_BREEDING_MK(original)
    if original.icons == nil then
        original.icons = { {icon = original.icon} }
        original.icon = nil
    end

    local copy = table.deepcopy(original)
    copy.name = original.name .. '-1'
    copy.prerequisites = {'selective-breeding'}
    table.insert(copy.icons, {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk02.png', icon_size = 64, scale = 0.5,shift = {35,35}})
    unpack_mk(copy, 1)
    TECHNOLOGY(copy)

    local copy = table.deepcopy(original)
    copy.name = original.name .. '-2'
    copy.prerequisites = {'artificial-breeding', original.name .. '-1'}
    table.insert(copy.icons, {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk03.png', icon_size = 64, scale = 0.5,shift = {35,35}})
    unpack_mk(copy, 2)
    TECHNOLOGY(copy)

    local copy = table.deepcopy(original)
    copy.name = original.name .. '-3'
    copy.prerequisites = {'biased-mutation', original.name .. '-2'}
    table.insert(copy.icons, {icon = '__pyalienlifegraphics__/graphics/icons/evolution-mk04.png', icon_size = 64, scale = 0.5,shift = {35,35}})
    unpack_mk(copy, 3)
    TECHNOLOGY(copy)
end

TECHNOLOGY_BREEDING_MK {
    type = "technology",
    name = "mukmoux-breeding",
    icon = "__pyalienlifegraphics__/graphics/technology/mukmoux.png",
    icon_size = 128,
    order = "c-a",
    effects = {},
    unit = {
        {
            count = 200,
            ingredients = {
                {"automation-science-pack", 1},
                {'logistic-science-pack', 2},
                {'py-science-pack-2', 3},
            },
            time = 50
        },
        {
            count = 200,
            ingredients = {
                {"automation-science-pack", 4},
                {'logistic-science-pack', 3},
                {'py-science-pack-2', 1},
            },
            time = 50
        },
        {
            count = 200,
            ingredients = {
                {"automation-science-pack", 3},
                {'logistic-science-pack', 4},
                {'py-science-pack-2', 1},
            },
            time = 50
        }
    }
}
