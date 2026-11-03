RECIPE {
    type = "recipe",
    name = "hmas",
    categories = {"genlab"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "nano-cellulose",    amount = 1},
        {type = "item",  name = "lignin",            amount = 3},
        {type = "item",  name = "ticocr-alloy",      amount = 1},
        {type = "item",  name = "niobium-plate",     amount = 2},
        {type = "item",  name = "chimeric-proteins", amount = 1},
        {type = "item",  name = "magnetic-beads",    amount = 5},
        {type = "item",  name = "skin",              amount = 10},
        {type = "item",  name = "flask",             amount = 1},
        {type = "fluid", name = "diborane",          amount = 100},
    },
    results = {
        {type = "item", name = "hmas", amount = 15},
    },
    allow_productivity = true,
}:add_unlock("phytomining-mk03")


RECIPE {
    type = "recipe",
    name = "yotoi-to-chelator",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "yotoi",         amount = 1},
        {type = "fluid", name = "oleochemicals", amount = 50},
    },
    results = {
        {type = "fluid", name = "chelator", amount = 100},
    },
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "fawogae-to-chelator",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "fawogae",       amount = 5},
        {type = "fluid", name = "oleochemicals", amount = 50},
    },
    results = {
        {type = "fluid", name = "chelator", amount = 50},
    },
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "yeadols-to-chelator",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "yaedols",       amount = 1},
        {type = "fluid", name = "oleochemicals", amount = 50},
    },
    results = {
        {type = "fluid", name = "chelator", amount = 75},
    },
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "phytoplankton-to-chelator",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "phytoplankton", amount = 50},
        {type = "fluid", name = "oleochemicals", amount = 50},
    },
    results = {
        {type = "fluid", name = "chelator", amount = 50},
    },
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "seaweed-to-chelator",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "seaweed", amount = 20},
        {type = "item", name = "moss",    amount = 10},
    },
    results = {
        {type = "fluid", name = "chelator", amount = 100},
    },
}:add_unlock("phytomining-mk02")


-------PLANTS EXTRACTION MK01----------

RECIPE {
    type = "recipe",
    name = "grod-pb",
    categories = {"grod"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "grod",              amount = 1},
    },
    results = {
        {type = "item",  name = "pb-biomass",  amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "pb-biomass",
    icons = py.composite_icon("pb-biomass", "grod")
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "grod-sn",
    categories = {"grod"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "grod",              amount = 1},
    },
    results = {
        {type = "item",  name = "sn-biomass",  amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "sn-biomass",
    icons = py.composite_icon("sn-biomass", "grod")
}:add_unlock("phytomining")

RECIPE {
    type = "recipe",
    name = "grod-al",
    categories = {"grod"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "grod",              amount = 1},
    },
    results = {
        {type = "item",  name = "al-biomass",  amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "al-biomass",
    icons = py.composite_icon("al-biomass", "grod")
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "bhodos-ag",
    categories = {"bhoddos"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "bhoddos",           amount = 1},
    },
    results = {
        {type = "item",  name = "ag-biomass",  amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "ag-biomass",
    icons = py.composite_icon("ag-biomass", "bhoddos")
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "seaweed-ag",
    categories = {"seaweed"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200},
        {type = "item",  name = "seaweed",           amount = 40},
    },
    results = {
        {type = "item",  name = "ag-biomass",  amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "ag-biomass",
    icons = py.composite_icon("ag-biomass", "seaweed")
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "moss-zn",
    categories = {"moss"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "moss",              amount = 30},
    },
    results = {
        {type = "item",  name = "zn-biomass",  amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "zn-biomass",
    icons = py.composite_icon("zn-biomass", "moss")
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "navens-au",
    categories = {"navens"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "navens",            amount = 1},
    },
    results = {
        {type = "item",  name = "au-biomass",  amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "au-biomass",
    icons = py.composite_icon("au-biomass", "navens")
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "navens-fe",
    categories = {"navens"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "navens",            amount = 2},
    },
    results = {
        {type = "item",  name = "fe-biomass",  amount = 8},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "fe-biomass",
    icons = py.composite_icon("fe-biomass", "navens")
}:add_unlock("phytomining")

RECIPE {
    type = "recipe",
    name = "rennea-cu",
    categories = {"rennea"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "rennea",            amount = 3},
    },
    results = {
        {type = "item",  name = "cu-biomass",  amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "cu-biomass",
    icons = py.composite_icon("cu-biomass", "rennea")
}:add_unlock("phytomining")

RECIPE {
    type = "recipe",
    name = "rennea-co",
    categories = {"rennea"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "rennea",            amount = 3},
    },
    results = {
        {type = "item",  name = "co-biomass",  amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "co-biomass",
    icons = py.composite_icon("co-biomass", "rennea")
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "ralesia-ni",
    categories = {"ralesia"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "ralesia",           amount = 3},
    },
    results = {
        {type = "item",  name = "ni-biomass",  amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "ni-biomass",
    icons = py.composite_icon("ni-biomass", "ralesia")
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "tuuphra-nacl",
    categories = {"tuuphra"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "tuuphra",           amount = 1},
    },
    results = {
        {type = "item",  name = "nacl-biomass", amount = 10},
        {type = "fluid", name = "waste-water",  amount = 50},
    },
    main_product = "nacl-biomass",
    icons = py.composite_icon("nacl-biomass", "tuuphra")
}:add_unlock("phytomining")

RECIPE {
    type = "recipe",
    name = "yaedols-ti",
    categories = {"yaedols"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "yaedols",           amount = 1},
    },
    results = {
        {type = "item",  name = "ti-biomass",  amount = 10},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "ti-biomass",
    icons = py.composite_icon("ti-biomass", "yaedols")
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "yotoi-fe",
    categories = {"yotoi"},
    enabled = false,
    energy_required = 100,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "yotoi",             amount = 1},
    },
    results = {
        {type = "item",  name = "fe-biomass",  amount = 15},
        {type = "fluid", name = "waste-water", amount = 50},
    },
    main_product = "fe-biomass",
    icons = py.composite_icon("fe-biomass", "yotoi")
}:add_unlock("phytomining")


-------PLANTS EXTRACTION MK02----------

RECIPE {
    type = "recipe",
    name = "grod-pb-2",
    categories = {"grod"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "grod",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "pb-biomass",  amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "pb-biomass",
    icons = py.composite_icon("pb-biomass", "grod", nil, "chelator", nil)
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "grod-sn-2",
    categories = {"grod"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "grod",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "sn-biomass",  amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "sn-biomass",
    icons = py.composite_icon("sn-biomass", "grod", nil, "chelator", nil)
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "grod-al-2",
    categories = {"grod"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "grod",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "al-biomass",  amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "al-biomass",
    icons = py.composite_icon("al-biomass", "grod", nil, "chelator", nil)
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "bhodos-ag-2",
    categories = {"bhoddos"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "bhoddos",           amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "ag-biomass",  amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "ag-biomass",
    icons = py.composite_icon("ag-biomass", "bhoddos", nil, "chelator", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "seaweed-ag-2",
    categories = {"seaweed"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200},
        {type = "item",  name = "seaweed",           amount = 40},
        {type = "fluid", name = "chelator",          amount = 50},
    },
    results = {
        {type = "item",  name = "ag-biomass",  amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "ag-biomass",
    icons = py.composite_icon("ag-biomass", "seaweed", nil, "chelator", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "moss-zn-2",
    categories = {"moss"},
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "moss",              amount = 30},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "zn-biomass",  amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "zn-biomass",
    icons = py.composite_icon("zn-biomass", "moss", nil, "chelator", nil)
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "navens-au-2",
    categories = {"navens"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "navens",            amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "au-biomass",  amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "au-biomass",
    icons = py.composite_icon("au-biomass", "navens", nil, "chelator", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "navens-fe-2",
    categories = {"navens"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "navens",            amount = 2},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "fe-biomass",  amount = 16},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "fe-biomass",
    icons = py.composite_icon("fe-biomass", "navens", nil, "chelator", nil)
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "rennea-cu-2",
    categories = {"rennea"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "rennea",            amount = 3},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 3},
    },
    results = {
        {type = "item",  name = "cu-biomass",  amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "cu-biomass",
    icons = py.composite_icon("cu-biomass", "rennea", nil, "chelator", nil)
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "rennea-co-2",
    categories = {"rennea"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "rennea",            amount = 3},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 3},
    },
    results = {
        {type = "item",  name = "co-biomass",  amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "co-biomass",
    icons = py.composite_icon("co-biomass", "rennea", nil, "chelator", nil)
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "ralesia-ni-2",
    categories = {"ralesia"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "ralesia",           amount = 3},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "ni-biomass",  amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "ni-biomass",
    icons = py.composite_icon("ni-biomass", "ralesia", nil, "chelator", nil)
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "tuuphra-nacl-2",
    categories = {"tuuphra"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "tuuphra",           amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 3},
    },
    results = {
        {type = "item",  name = "nacl-biomass", amount = 20},
        {type = "fluid", name = "waste-water",  amount = 80},
    },
    main_product = "nacl-biomass",
    icons = py.composite_icon("nacl-biomass", "tuuphra", nil, "chelator", nil)
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "yaedols-ti-2",
    categories = {"yaedols"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "yaedols",           amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "ti-biomass",  amount = 20},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "ti-biomass",
    icons = py.composite_icon("ti-biomass", "yaedols", nil, "chelator", nil)
}:add_unlock("phytomining-mk02")

RECIPE {
    type = "recipe",
    name = "yotoi-fe-2",
    categories = {"yotoi"},
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "yotoi",             amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "fe-biomass",  amount = 30},
        {type = "fluid", name = "waste-water", amount = 80},
    },
    main_product = "fe-biomass",
    icons = py.composite_icon("fe-biomass", "yotoi", nil, "chelator", nil)
}:add_unlock("phytomining-mk02")



-------PLANTS EXTRACTION MK03----------

RECIPE {
    type = "recipe",
    name = "grod-pb-3",
    categories = {"grod"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "grod",              amount = 1},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "pb-biomass",  amount = 80},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "pb-biomass",
    icons = py.composite_icon("pb-biomass", "grod", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "grod-sn-3",
    categories = {"grod"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "grod",              amount = 1},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "sn-biomass",  amount = 80},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "sn-biomass",
    icons = py.composite_icon("sn-biomass", "grod", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "grod-al-3",
    categories = {"grod"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "grod",              amount = 1},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "al-biomass",  amount = 80},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "al-biomass",
    icons = py.composite_icon("al-biomass", "grod", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "bhodos-ag-3",
    categories = {"bhoddos"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "bhoddos",           amount = 1},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "ag-biomass",  amount = 80},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "ag-biomass",
    icons = py.composite_icon("ag-biomass", "bhoddos", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "seaweed-ag-3",
    categories = {"seaweed"},
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200},
        {type = "item",  name = "seaweed",           amount = 40},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50},
    },
    results = {
        {type = "item",  name = "ag-biomass",  amount = 80},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "ag-biomass",
    icons = py.composite_icon("ag-biomass", "seaweed", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "moss-zn-3",
    categories = {"moss"},
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "moss",              amount = 30},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "zn-biomass",  amount = 80},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "zn-biomass",
    icons = py.composite_icon("zn-biomass", "moss", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "navens-au-3",
    categories = {"navens"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "navens",            amount = 1},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "au-biomass",  amount = 80},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "au-biomass",
    icons = py.composite_icon("au-biomass", "navens", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "navens-fe-3",
    categories = {"navens"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "navens",            amount = 2},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "fe-biomass",  amount = 60},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "fe-biomass",
    icons = py.composite_icon("fe-biomass", "navens", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "rennea-cu-3",
    categories = {"rennea"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "rennea",            amount = 3},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 3},
    },
    results = {
        {type = "item",  name = "cu-biomass",  amount = 80},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "cu-biomass",
    icons = py.composite_icon("cu-biomass", "rennea", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "rennea-co-3",
    categories = {"rennea"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "rennea",            amount = 3},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 3},
    },
    results = {
        {type = "item",  name = "co-biomass",  amount = 80},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "co-biomass",
    icons = py.composite_icon("co-biomass", "rennea", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "ralesia-ni-3",
    categories = {"ralesia"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "ralesia",           amount = 3},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "ni-biomass",  amount = 80},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "ni-biomass",
    icons = py.composite_icon("ni-biomass", "ralesia", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "tuuphra-nacl-3",
    categories = {"tuuphra"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "tuuphra",           amount = 1},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 3},
    },
    results = {
        {type = "item",  name = "nacl-biomass", amount = 80},
        {type = "fluid", name = "waste-water",  amount = 100},
    },
    main_product = "nacl-biomass",
    icons = py.composite_icon("nacl-biomass", "tuuphra", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "yaedols-ti-3",
    categories = {"yaedols"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "yaedols",           amount = 1},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "ti-biomass",  amount = 80},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "ti-biomass",
    icons = py.composite_icon("ti-biomass", "yaedols", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "yotoi-fe-3",
    categories = {"yotoi"},
    enabled = false,
    energy_required = 50,
    ingredients = {
        {type = "fluid", name = "tailings", amount = 200, fluidbox_index = 1},
        {type = "item",  name = "yotoi",             amount = 1},
        {type = "item",  name = "hmas",              amount = 1},
        {type = "fluid", name = "chelator",          amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "fe-biomass",  amount = 90},
        {type = "fluid", name = "waste-water", amount = 100},
    },
    main_product = "fe-biomass",
    icons = py.composite_icon("fe-biomass", "yotoi", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")









-------BIOMASS EXTRACTION----------

RECIPE {
    type = "recipe",
    name = "pb-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "pb-biomass", amount = 10},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item", name = "ore-lead", amount = 15},
        {type = "item", name = "biomass",  amount = 5},
    },
    main_product = "ore-lead",
    icons = py.composite_icon("ore-lead", "pb-biomass")
}:add_unlock("phytomining-mk02"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "sn-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "sn-biomass", amount = 10},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 250},
    },
    results = {
        {type = "item", name = "ore-tin", amount = 15},
        {type = "item", name = "biomass", amount = 5},
    },
    main_product = "ore-tin",
    icons = py.composite_icon("ore-tin", "sn-biomass")
}:add_unlock("phytomining"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "al-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "al-biomass", amount = 10},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item", name = "ore-aluminium", amount = 15},
        {type = "item", name = "biomass",       amount = 5},
    },
    main_product = "ore-aluminium",
    icons = py.composite_icon("ore-aluminium", "al-biomass")
}:add_unlock("phytomining-mk02"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "ag-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "ag-biomass", amount = 20},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item", name = "lead-refined-dust-03", amount = 6},
        {type = "item", name = "biomass",              amount = 5},
    },
    main_product = "lead-refined-dust-03",
    icons = py.composite_icon("lead-refined-dust-03", "ag-biomass")
}:add_unlock("phytomining-mk03"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "au-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "au-biomass", amount = 30},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item", name = "gold-concentrate", amount = 1},
        {type = "item", name = "biomass",          amount = 5},
    },
    main_product = "gold-concentrate",
    icons = py.composite_icon("gold-concentrate", "au-biomass")
}:add_unlock("phytomining-mk03"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "zn-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "zn-biomass", amount = 10},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item", name = "ore-zinc", amount = 15},
        {type = "item", name = "biomass",  amount = 5},
    },
    main_product = "ore-zinc",
    icons = py.composite_icon("ore-zinc", "zn-biomass")
}:add_unlock("phytomining-mk02"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "cu-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "cu-biomass", amount = 10},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 250},
    },
    results = {
        {type = "item", name = "copper-ore", amount = 20},
        {type = "item", name = "biomass",    amount = 5},
    },
    main_product = "copper-ore",
    icons = py.composite_icon("copper-ore", "cu-biomass")
}:add_unlock("phytomining"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "co-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "co-biomass", amount = 25},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item", name = "cobalt-extract", amount = 2},
        {type = "item", name = "biomass",        amount = 5},
    },
    main_product = "cobalt-extract",
    icons = py.composite_icon("cobalt-extract", "co-biomass")
}:add_unlock("phytomining-mk02"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "nacl-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "nacl-biomass", amount = 15},
        {type = "fluid", name = "steam",        amount = 100, minimum_temperature = 250},
    },
    results = {
        {type = "item", name = "salt",    amount = 30},
        {type = "item", name = "biomass", amount = 5},
    },
    main_product = "salt",
    icons = py.composite_icon("salt", "nacl-biomass")
}:add_unlock("phytomining"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "ti-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "ti-biomass", amount = 10},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item", name = "ore-titanium", amount = 15},
        {type = "item", name = "biomass",      amount = 5},
    },
    main_product = "ore-titanium",
    icons = py.composite_icon("ore-titanium", "ti-biomass")
}:add_unlock("phytomining-mk02"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "fe-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "fe-biomass", amount = 10},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 250},
    },
    results = {
        {type = "item", name = "iron-ore", amount = 20},
        {type = "item", name = "biomass",  amount = 5},
    },
    main_product = "iron-ore",
    icons = py.composite_icon("iron-ore", "fe-biomass")
}:add_unlock("phytomining"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "ni-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "ni-biomass", amount = 10},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item", name = "ore-nickel", amount = 15},
        {type = "item", name = "biomass",    amount = 5},
    },
    main_product = "ore-nickel",
    icons = py.composite_icon("ore-nickel", "ni-biomass")
}:add_unlock("phytomining-mk02"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "nb-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "nb-biomass", amount = 10},
        {type = "fluid", name = "steam",      amount = 100, minimum_temperature = 500},
    },
    results = {
        {type = "item", name = "niobium-ore", amount = 10},
        {type = "item", name = "biomass",     amount = 5},
    },
    main_product = "niobium-ore",
    icons = py.composite_icon("niobium-ore", "nb-biomass")
}:add_unlock("phytomining-mk02"):replace_category("biofactory", "pulp")

RECIPE {
    type = "recipe",
    name = "bhodos-ur",
    categories = {"bhoddos"},
    enabled = false,
    energy_required = 200,
    ingredients = {
        {type = "fluid", name = "pressured-steam", amount = 500, minimum_temperature = 3000},
        {type = "item",  name = "bhoddos",         amount = 10},
    },
    results = {
        {type = "item",  name = "ur-biomass", amount = 10},
        {type = "fluid", name = "steam",      amount = 500, temperature = 1000},
    },
    main_product = "ur-biomass",
    icons = py.composite_icon("ur-biomass", "bhoddos")
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "bhodos-ur-2",
    categories = {"bhoddos"},
    enabled = false,
    energy_required = 140,
    ingredients = {
        {type = "fluid", name = "pressured-steam", amount = 500, minimum_temperature = 3000, fluidbox_index = 1},
        {type = "item",  name = "bhoddos",         amount = 10},
        {type = "fluid", name = "chelator",        amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "ur-biomass", amount = 20},
        {type = "fluid", name = "steam",      amount = 500, temperature = 1000},
    },
    main_product = "ur-biomass",
    icons = py.composite_icon("ur-biomass", "bhoddos", nil, "chelator", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "bhodos-ur-3",
    categories = {"bhoddos"},
    enabled = false,
    energy_required = 80,
    ingredients = {
        {type = "fluid", name = "pressured-steam", amount = 500, minimum_temperature = 3000, fluidbox_index = 1},
        {type = "item",  name = "bhoddos",         amount = 10},
        {type = "item",  name = "hmas",            amount = 1},
        {type = "fluid", name = "chelator",        amount = 50,  fluidbox_index = 2},
    },
    results = {
        {type = "item",  name = "ur-biomass", amount = 80},
        {type = "fluid", name = "steam",      amount = 500, temperature = 1000},
    },
    main_product = "ur-biomass",
    icons = py.composite_icon("ur-biomass", "bhoddos", nil, "hmas", nil)
}:add_unlock("phytomining-mk03")

RECIPE {
    type = "recipe",
    name = "ur-biomass-extraction",
    categories = {"biofactory"},
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item",  name = "ur-biomass",    amount = 10},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
    },
    results = {
        {type = "item", name = "uranium-ore", amount = 5},
    },
    main_product = "uranium-ore",
    icons = py.composite_icon("uranium-ore", "ur-biomass")
}:add_unlock("phytomining-mk03"):replace_category("biofactory", "pulp")
