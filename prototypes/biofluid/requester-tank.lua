RECIPE {
    type = 'recipe',
    name = 'requester-tank',
    energy_required = 1,
    enabled = false,
    ingredients = {
        {'steel-plate', 50},
        {'glass', 40},
        {'titanium-plate', 100},
        {'duralumin', 50},
        {'electronic-circuit', 30},
        {'iron-gear-wheel', 50},
    },
    results = {
        {'requester-tank', 1}
    }
}:add_unlock('biofluid-mk01')

ITEM {
    type = 'item',
    name = 'requester-tank',
    icon = '__pyalienlifegraphics__/graphics/icons/chest-request.png',
    icon_size = 64,
    flags = {},
    subgroup = 'py-alienlife-biofluid-network',
    order = 'c',
    place_result = 'requester-tank',
    stack_size = 10
}

ENTITY {
    type = 'container',
    name = 'requester-tank',
    icon = '__pyalienlifegraphics__/graphics/icons/chest-request.png',
    icon_size = 32,
    flags = {'placeable-neutral', 'player-creation'},
    minable = {mining_time = 0.1, result = 'requester-tank'},
    max_health = 100,
    corpse = 'wooden-chest-remnants',
    collision_box = {{-1, -1}, {1, 1}},
    fast_replaceable_group = 'container',
    selection_box = {{-1, -1}, {1, 1}},
    inventory_size = 16,
    open_sound = { filename = '__base__/sound/wooden-chest-open.ogg' },
    close_sound = { filename = '__base__/sound/wooden-chest-close.ogg' },
    vehicle_impact_sound =  { filename = '__base__/sound/car-wood-impact.ogg', volume = 1.0 },
    picture = {
        layers =
            {
                {
                    filename = '__pyalienlifegraphics2__/graphics/entity/land-beetle/chest-request.png',
                    priority = 'high',
                    width = 69,
                    height = 67,
                    shift = util.by_pixel(3, 1)
                },
            }
    },
    --circuit_wire_max_distance = 9,
    --circuit_connector_sprites = connectors.sprites({0.75, 0.55}),
    --circuit_wire_connection_point = connectors.points({0.64, 0.13})
  }
