RECIPE {
    type = "recipe",
    name = "ipod",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "steel-plate",        amount = 50},
        {type = "item", name = "glass",              amount = 40},
        {type = "item", name = "titanium-plate",     amount = 100},
        {type = "item", name = "duralumin",          amount = 50},
        {type = "item", name = "electronic-circuit", amount = 30},
        {type = "item", name = "iron-gear-wheel",    amount = 50},
        {type = "item", name = "iron-plate",         amount = 1}
    },
    results = {
        {type = "item", name = "ipod", amount = 1}
    }
}:add_unlock("domestication-mk02")

ITEM {
    type = "item",
    name = "ipod",
    icon = "__pyalienlifegraphics__/graphics/icons/eye-pod.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-buildings-others",
    order = "c",
    place_result = "ipod",
    stack_size = 10
}

ENTITY {
    type = "container",
    name = "ipod",
    icon = "__pyalienlifegraphics__/graphics/icons/eye-pod.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "ipod"},
    max_health = 100,
    inventory_type = "with_filters_and_bar",
    enable_inventory_bar = false,
    corpse = "wooden-chest-remnants",
    collision_box = {{-1.45, -1.45}, {1.45, 1.45}},
    fast_replaceable_group = "container",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    inventory_size = 3,
    open_sound = {filename = "__base__/sound/wooden-chest-open.ogg"},
    close_sound = {filename = "__base__/sound/wooden-chest-close.ogg"},
    impact_category = "wood",
    picture =
    {
        layers =
        {
            {
                filename = "__pyalienlifegraphics2__/graphics/entity/ocula/eye-pod.png",
                priority = "extra-high",
                width = 100,
                height = 96,
                --shift = util.by_pixel(0.5, -2),
            },
        }
    }
}
