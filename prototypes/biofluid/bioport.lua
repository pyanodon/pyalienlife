RECIPE {
    type = "recipe",
    name = "bioport",
    energy_required = 200,
    enabled = false,
    category = "creature-chamber",
    ingredients = {
        {type = "item",  name = "megadar",              amount = 1},
        {type = "item",  name = "earth-generic-sample", amount = 5},
        {type = "item",  name = "cdna",                 amount = 5},
        {type = "item",  name = "resveratrol",          amount = 10},
        {type = "item",  name = "alien-sample-02",      amount = 5},
        {type = "item",  name = "bio-sample",           amount = 20},
        {type = "fluid", name = "water-saline",         amount = 200},
        {type = "fluid", name = "fetal-serum",          amount = 100},
        {type = "fluid", name = "coal-slurry",          amount = 100},
    },
    results = {
        {type = "item", name = "bioport", amount = 1}
    }
}:add_unlock {"biofluid-mk01"}

ITEM {
    type = "item",
    name = "bioport",
    icon = "__pyalienlifegraphics2__/graphics/icons/o-roboport.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-biofluid-network",
    order = "a",
    place_result = "bioport",
    stack_size = 10
}

data:extend {{
    name = "biofluid",
    type = "recipe-category",
    hidden = true
}}

local recipe = RECIPE {
    type = "recipe",
    name = "bioport-hidden-recipe",
    enabled = false,
    allow_inserter_overload = false,
    hidden = true,
    ingredients = {
        {"gobachov", data.raw.item["gobachov"].stack_size},
        {"huzu",     data.raw.item["huzu"].stack_size},
        {"chorkok",  data.raw.item["chorkok"].stack_size},
    },
    results = {
        {"guano",        data.raw.item["guano"].stack_size},
        {type = "fluid", name = mods.pyalternativeenergy and "void" or "parameter-0", count = 1},
    },
    energy_required = 100,
    category = "biofluid",
    icon = "__pyalienlifegraphics2__/graphics/icons/o-roboport.png",
    icon_size = 64,
    subgroup = "py-alienlife-biofluid-network",
}

for name, _ in pairs(Biofluid.favorite_foods) do
    recipe:add_ingredient {name = name, amount = data.raw.item[name].stack_size, type = "item"}
end

ENTITY {
    type = "assembling-machine",
    name = "bioport",
    bottleneck_ignore = true,
    icon = "__pyalienlifegraphics2__/graphics/icons/o-roboport.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "bioport"},
    selection_priority = 49,
    fixed_recipe = "bioport-hidden-recipe",
    max_health = 500,
    allowed_effects = {"consumption", "pollution"},
    module_slots = 1,
    corpse = "big-remnants",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    forced_symmetry = "diagonal-pos",
    dying_explosion = "medium-explosion",
    crafting_speed = 1,
    energy_usage = "1W",
    crafting_categories = {"biofluid"},
    energy_source = {type = "void"},
    show_recipe_icon = false,
    fluid_boxes_off_when_no_fluid_recipe = false,
    fluid_boxes = {
        {
            production_type = "output",
            max_pipeline_extent = 2000000, -- The radius of nauvis
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -2.0}, direction = defines.direction.north, connection_category = "biofluid"}}
        },
    },
    impact_category = "metal-large",
    graphics_set = {
        integration_patch = {
            layers = {
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/bots/roboport/raw.png",
                    priority = "extra-high",
                    width = 351,
                    height = 365,
                    shift = util.by_pixel(16.75, -38.75 - 32 - 9),
                    scale = 0.5,
                    frame_count = 1
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/bots/roboport/glow.png",
                    priority = "extra-high",
                    width = 351,
                    height = 365,
                    shift = util.by_pixel(16.75, -38.75 - 32 - 9),
                    draw_as_glow = true,
                    scale = 0.5,
                    frame_count = 1
                },
                {
                    filename = "__pyalienlifegraphics2__/graphics/entity/bots/roboport/sh.png",
                    priority = "extra-high",
                    draw_as_shadow = true,
                    width = 352,
                    height = 232,
                    shift = {1.5, 1.5 - 9 / 32},
                    scale = 0.5,
                    frame_count = 1
                }
            }
        },
        integration_patch_render_layer = "higher-object-under"
    }
}

local function random_order(l)
    local order = {}
    local i = 1
    for _, elem in pairs(l) do
        table.insert(order, math.random(1, i), elem)
        i = i + 1
    end
    return order
end

local frame_offset = 0
local function add_creature_animations(animations, animation_order, name)
    animation_order = random_order(animation_order)
    for i, _ in pairs(animation_order) do
        local layers = {}
        for j = 1, i do
            local layer_data = animation_order[j]
            local shift = util.by_pixel(layer_data[1] / 2 - 62, layer_data[2] / 2 - 113.75 - 32)
            if name == "chorkok" then shift[2] = shift[2] + 0.16 end
            layers[#layers + 1] = table.deepcopy(animations[layer_data[3]])
            layers[#layers].shift = shift
        end
        table.sort(layers, function(a, b) return a.priority < b.priority end)
        for _, layer in pairs(layers) do
            layer.priority = "medium"
            for _ = 0, frame_offset do
                table.insert(layer.frame_sequence, 1, layer.frame_sequence[#layer.frame_sequence])
                layer.frame_sequence[#layer.frame_sequence] = nil
            end
            frame_offset = frame_offset + 13
        end
        data:extend {{
            type = "animation",
            name = "bioport-animation-" .. name .. "-" .. i,
            layers = layers,
        }}
    end
end

add_creature_animations(
    {
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/bots/roboport/g1.png",
            height = 64,
            width = 64,
            frame_count = 30,
            line_length = 6,
            priority = 0,
            scale = 0.75,
            frame_sequence = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30}
        },
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/bots/roboport/g2.png",
            height = 64,
            width = 32,
            frame_count = 30,
            line_length = 6,
            priority = 0,
            scale = 0.75,
            frame_sequence = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30}
        },
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/bots/roboport/g3.png",
            height = 64,
            width = 32,
            frame_count = 30,
            line_length = 6,
            priority = 0,
            scale = 0.75,
            frame_sequence = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30}
        },
    },
    {{30, 69, 1}, {200, 35, 1}, {178, 127, 1}, {152, 25, 2}, {71, 59, 2}, {221, 105, 2}, {125, 143, 2}, {97, 19, 3}, {179, 78, 3}, {99, 131, 3}},
    "gobachov"
)

add_creature_animations(
    {
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/bots/roboport/c1.png",
            height = 64,
            width = 32,
            frame_count = 50,
            repeat_count = 3,
            line_length = 10,
            priority = 0,
            scale = 0.75,
            frame_sequence = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50}
        },
        {
            filename = "__pyalienlifegraphics2__/graphics/entity/bots/roboport/c2.png",
            height = 64,
            width = 128,
            frame_count = 70,
            line_length = 10,
            priority = 1,
            scale = 0.75,
            frame_sequence = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1}
        }
    },
    {{5, 164, 1}, {29, 188, 1}, {52, 201, 2}, {83, 210, 1}, {112, 214, 1}, {147, 215, 1}, {182, 209, 2}, {208, 201, 1}, {233, 186, 1}, {253, 164, 1}},
    "chorkok"
)

-- START OF FLOOR PIPE ANIMATION

local direction_inversion = {
    north = "south",
    east = "west",
    south = "north",
    west = "east"
}

local idle_animation = {}
for _, direction in pairs {"north", "east", "south", "west"} do
    idle_animation[direction_inversion[direction]] = {
        layers = {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/vessel/vessel-port-" .. direction .. ".png",
                priority = "high",
                width = 640 / 5,
                height = 768 / 6,
                frame_count = 5 * 6,
                line_length = 5,
                shift = {0, 0},
                scale = 0.335,
                animation_speed = 0.5
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/vessel/vessel-port-" .. direction .. "-glow.png",
                priority = "high",
                width = 640 / 5,
                height = 768 / 6,
                frame_count = 5 * 6,
                line_length = 5,
                shift = {0, 0},
                scale = 0.335,
                animation_speed = 0.5,
                draw_as_glow = true
            },
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/vessel/vessel-port-" .. direction .. "-shadow.png",
                priority = "high",
                width = 640 / 5,
                height = 768 / 6,
                frame_count = 5 * 6,
                line_length = 5,
                shift = {0, 0},
                scale = 0.335,
                animation_speed = 0.5,
                draw_as_shadow = true
            }
        }
    }
end
--[[
local function append_shifted(original, new_layers, shift)
    for _, layer in pairs(table.deepcopy(new_layers)) do
        if not layer.draw_as_light then
            layer.shift = layer.shift or {0, 0}
            layer.shift = {layer.shift[1] + shift[1], layer.shift[2] + shift[2]}
            original[#original + 1] = layer
        end
    end
end

local gap = data.raw["simple-entity-with-owner"]["vessel"].animations[3].layers[2]
local gap_glow = data.raw["simple-entity-with-owner"]["vessel"].animations[3].layers[4]

idle_animation["north"].layers[#idle_animation["north"].layers + 1] = gap
idle_animation["north"].layers[#idle_animation["north"].layers + 1] = gap_glow

append_shifted(idle_animation["north"].layers, data.raw["simple-entity-with-owner"]["vessel"].animations[3].layers, {0, 1})
append_shifted(idle_animation["north"].layers, data.raw["simple-entity-with-owner"]["vessel"].animations[1].layers, {0, 2})
append_shifted(idle_animation["east"].layers, data.raw["simple-entity-with-owner"]["vessel"].animations[2].layers, {-1, 0})
append_shifted(idle_animation["east"].layers, data.raw["simple-entity-with-owner"]["vessel"].animations[2].layers, {-2, 0})
append_shifted(idle_animation["west"].layers, data.raw["simple-entity-with-owner"]["vessel"].animations[2].layers, {1, 0})
append_shifted(idle_animation["west"].layers, data.raw["simple-entity-with-owner"]["vessel"].animations[2].layers, {2, 0})

local variants = {
    idle_animation.south,
    idle_animation.west,
    idle_animation.north,
    idle_animation.east,
    table.deepcopy(idle_animation.north),
}

append_shifted(variants[5].layers, {gap, gap_glow}, {0, 2})
--]]
ENTITY {
    type = "simple-entity-with-owner",
    name = "bioport-floor-animation",
    hidden = true,
    flags = {"placeable-neutral", "no-automated-item-insertion", "no-automated-item-removal", "not-flammable"},
    icon = data.raw.item["bioport"].icon,
    icon_size = data.raw.item["bioport"].icon_size,
    subgroup = data.raw.item["bioport"].subgroup,
    order = data.raw.item["bioport"].order,
    collision_box = data.raw["assembling-machine"]["bioport"].collision_box,
    collision_mask = {layers = {}},
    render_layer = "lower-object-above-shadow",
    animations = variants,
    selectable_in_game = false,
}
