local collision_mask_util = require "__core__/lualib/collision-mask-util"

RECIPE {
    type = "recipe",
    name = "provider-tank",
    energy_required = 40,
    category = "creature-chamber",
    enabled = false,
    ingredients = {
        {type = "item",  name = "earth-generic-sample", amount = 1},
        {type = "item",  name = "cdna",                 amount = 1},
        {type = "item",  name = "alien-sample01",       amount = 2},
        {type = "fluid", name = "water-saline",         amount = 50},
        {type = "fluid", name = "fetal-serum",          amount = 10},
        {type = "fluid", name = "coal-slurry",          amount = 50},
    },
    results = {
        {type = "item", name = "provider-tank", amount = 1}
    }
}:add_unlock("biofluid-mk01")

ITEM {
    type = "item",
    name = "provider-tank",
    icon = "__pyalienlifegraphics__/graphics/icons/chest-provider.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-biofluid-network",
    order = "c",
    place_result = "provider-tank",
    stack_size = 50
}

local graphic = {
    layers = {{
        filename = "__pyalienlifegraphics2__/graphics/entity/bots/tank/provider-tank.png",
        priority = "high",
        width = 69,
        height = 67,
        shift = util.by_pixel(1.75, 0),
        scale = 0.5
    }}
}

ENTITY {
    name = "provider-tank",
    type = "furnace",
    bottleneck_ignore = true,
    minable = {mining_time = 0.2, result = "provider-tank"},
    icon = "__pyalienlifegraphics__/graphics/icons/chest-provider.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation", "placeable-neutral", "placeable-enemy"},
    corpse = "small-remnants",
    max_health = data.raw["pipe"]["pipe"].max_health,
    resistances = data.raw["pipe"]["pipe"].resistances,
    fast_replaceable_group = "vessel",
    collision_box = data.raw["pipe"]["pipe"].collision_box,
    selection_box = data.raw["pipe"]["pipe"].selection_box,
    forced_symmetry = "diagonal-pos",
    working_sound = nil, -- TODO
    fluid_boxes = {
        {
            volume = Biofluid.tank_size,
            pipe_covers = _G.pipecoverspictures(),
            pipe_connections = {
                {flow_direction = "input", position = {0, 0}, direction = defines.direction.north, connection_category = "default"},
            },
            production_type = "input"
        },
        {
            volume = 1,
            max_pipeline_extent = 2000000, -- The radius of nauvis
            pipe_covers = _G.pipecoverspictures(),
            pipe_connections = {
                {flow_direction = "output", position = {0, 0}, direction = defines.direction.south, connection_category = "biofluid"},
            },
            production_type = "output"
        }
    },
    graphics_set = {
        animation = {
            north = graphic,
            east = graphic,
            south = graphic,
            west = graphic,
        },
    },
    show_recipe_icon = false,
    crafting_speed = 1,
    result_inventory_size = 0,
    source_inventory_size = 0,
    crafting_categories = {"biofluid"},
    energy_source = {type = "void"},
    energy_usage = "1W",
    show_recipe_icon_on_map = false,
    circuit_connector = circuit_connector_definitions["py-valves"],
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    collision_mask = collision_mask_util.get_default_mask("furnace")
}
