RECIPE {
    type = 'recipe',
    name = 'bioport',
    energy_required = 200,
    enabled = false,
    category = 'creature-chamber',
    ingredients = {
        {'megadar', 1},
        {'earth-generic-sample', 5},
        {'cdna', 5},
        {'resveratrol', 10},
        {'alien-sample-02', 5},
        {'bio-sample', 20},
        {type = 'fluid', name = 'water-saline', amount = 200},
        {type = 'fluid', name = 'fetal-serum', amount = 100},
        {type = 'fluid', name = 'coal-slurry', amount = 100},
    },
    results = {
        {'bioport', 1}
    }
}:add_unlock{'biofluid-mk01'}

ITEM {
    type = 'item',
    name = 'bioport',
    icon = '__pyalienlifegraphics2__/graphics/icons/o-roboport.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'a',
    place_result = 'bioport',
    stack_size = 10
}

data:extend{{
    name = 'biofluid',
    type = 'recipe-category',
    hidden = true
}}

local recipe = RECIPE {
    type = 'recipe',
    name = 'bioport-hidden-recipe',
    enabled = false,
    hidden = true,
    ingredients = {
        {'gobachov', data.raw.item['gobachov'].stack_size},
        {'huzu', data.raw.item['huzu'].stack_size},
        {'chorkok', data.raw.item['chorkok'].stack_size},
    },
    results = {
        {'guano', data.raw.item['guano'].stack_size},
    },
    energy_required = 100,
    category = 'biofluid',
    icon = '__pyalienlifegraphics2__/graphics/icons/o-roboport.png',
    icon_size = 64,
    subgroup = 'py-alienlife-biofluid-network',
}

for name, _ in pairs(Biofluid.favorite_foods) do
    recipe:add_ingredient{name = name, amount = data.raw.item[name].stack_size, type = 'item'}
end

ENTITY {
    type = 'assembling-machine',
    name = 'bioport',
    icon = '__pyalienlifegraphics2__/graphics/icons/o-roboport.png',
    icon_size = 64,
    flags = {'placeable-player', 'player-creation'},
    minable = {mining_time = 1, result = 'bioport'},
    selection_priority = 49,
    fixed_recipe = 'bioport-hidden-recipe',
    max_health = 500,
    corpse = 'big-remnants',
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    dying_explosion = 'medium-explosion',
    collision_mask = {'object-layer'},
    crafting_speed = 1,
    energy_usage = '1W',
    crafting_categories = {'biofluid'},
    energy_source = {
        connections = {{
            direction = 4,
            position = {0, 2},
        }},
        max_temperature = 0,
        default_temperature = 0,
        min_working_temperature = 0,
        max_transfer = '1W',
        specific_heat = '1W',
        type = 'heat',
        pipe_covers = require('__pyalienlife__/prototypes/biofluid/pipe-cover'),
        heat_pipe_covers = require('__pyalienlife__/prototypes/biofluid/pipe-cover'),
    },
    show_recipe_icon = false,
    vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
    animation = {
        layers = {
            {
                filename = '__pyalienlifegraphics2__/graphics/entity/bots/roboport/raw.png',
                priority = 'extra-high',
                width = 175,
                height = 182,
                shift = util.by_pixel(16.75, -38.75),
                hr_version = {
                    filename = '__pyalienlifegraphics2__/graphics/entity/bots/roboport/hr-raw.png',
                    priority = 'extra-high',
                    width = 351,
                    height = 365,
                    shift = util.by_pixel(16.75, -38.75),
                    scale = 0.5,
                    frame_count = 1
                },
                frame_count = 1
            },
            {
                filename = '__pyalienlifegraphics2__/graphics/entity/bots/roboport/sh.png',
                priority = 'extra-high',
                draw_as_shadow = true,
                width = 176,
                height = 116,
                shift = {1, 2},
                hr_version = {
                    filename = '__pyalienlifegraphics2__/graphics/entity/bots/roboport/hr-sh.png',
                    priority = 'extra-high',
                    draw_as_shadow = true,
                    width = 352,
                    height = 232,
                    shift = {1, 2},
                    scale = 0.5,
                    frame_count = 1
                },
                frame_count = 1
            }
        }
    }
}

data.raw['utility-sprites'].default.heat_exchange_indication.filename = '__pyalienlifegraphics2__/graphics/entity/bots/connection-icon.png'