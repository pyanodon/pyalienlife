data:extend { -- entities and things to manage farming buildings
    {
        type = "recipe-category",
        name = "pyfarm-filler-category",
        hidden = true,
        hidden_in_factoriopedia = true
    },
    { -- hidden recipe used to check if machine is working
        type = "recipe",
        name = "pyfarm-internal-recipe",
        icon = util.empty_icon().icon,
        category = "pyfarm-filler-category",
        ingredients = {{type = "item", name = "pyfarm-internal-item", amount = 1, ignored_by_stats = 1}},
        hidden = true,
        hidden_in_factoriopedia = true
    },
    { -- hidden item for recipe and signals, can use existing item but this one is garunteed to work
        type = "item",
        name = "pyfarm-internal-item",
        icon = util.empty_icon().icon,
        stack_size = 1,
        hidden = true,
        hidden_in_factoriopedia = true
    },
    { -- hidden assembling machine to craft the aforementioned recipe
        type = "assembling-machine",
        name = "pyfarm-internal-manager",
        icon = util.empty_icon().icon,
        collision_mask = {layers = {}},
        flags = {
            "placeable-off-grid",
            "not-repairable",
            "not-on-map",
            "not-blueprintable",
            "not-deconstructable",
            "no-copy-paste",
            "not-upgradable",
            "placeable-neutral",
            "no-automated-item-removal",
            "no-automated-item-insertion"
        },
        allow_copy_paste = false,
        selectable_in_game = false,
        energy_usage = "1W",
        energy_source = {type = "void"},
        crafting_categories = {"pyfarm-filler-category"},
        fixed_recipe = "pyfarm-internal-recipe",
        crafting_speed = 60,
        hidden = true,
        hidden_in_factoriopedia = true
    },
    { -- hidden proxy container to monitor module inventory
        type = "proxy-container",
        name = "pyfarm-internal-monitor",
        icon = util.empty_icon().icon,
        draw_inventory_content = false,
        collision_mask = {layers = {}},
        flags = {
            "not-rotatable",
            "placeable-neutral",
            "placeable-off-grid",
            "not-repairable",
            "not-on-map",
            "not-deconstructable",
            "not-blueprintable",
            "hide-alt-info",
            "not-upgradable"
        },
        allow_copy_paste = false,
        selectable_in_game = false,
        hidden = true,
        hidden_in_factoriopedia = true
    }
}
