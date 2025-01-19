Digosaurus.favorite_foods = {
    ["dried-meat"] = 1,
    ["guts"] = 1,
    ["meat"] = 2,
    ["workers-food"] = 8,
    ["workers-food-02"] = 16,
    ["workers-food-03"] = 32,
}

Digosaurus.minable_categories = {
    ["ore-nexelit"] = true
}

Digosaurus.valid_creatures = {
    ["digosaurus"] = 1,
    ["digosaurus-turd"] = 1,
    ["thikat"] = 2,
    ["thikat-turd"] = 2,
    ["work-o-dile"] = 3,
    ["work-o-dile-turd"] = 3,
}

Digosaurus.mining_proxies = {
    ["digosaurus"] = "digosaurus-mineable-proxy",
    ["thikat"] = "thikats-mineable-proxy",
    ["work-o-dile"] = "work-o-dile-mineable-proxy",
    ["digosaurus-turd"] = "digosaurus-mineable-proxy",
    ["thikat-turd"] = "thikats-mineable-proxy",
    ["work-o-dile-turd"] = "work-o-dile-mineable-proxy",
}

Digosaurus.mining_range = 12.5
Digosaurus.mining_range_offset = {
    [defines.direction.north] = {x = 0, y = -16},
    [defines.direction.south] = {x = 0, y = 16},
    [defines.direction.east] = {x = 16, y = 0},
    [defines.direction.west] = {x = -16, y = 0}
}

Digosaurus.digosaurus_spawn_point = {
    [defines.direction.north] = {x = 0, y = -2.5},
    [defines.direction.south] = {x = 0, y = 2.5},
    [defines.direction.east] = {x = 2.5, y = 0},
    [defines.direction.west] = {x = -2.5, y = 0}
}
