

RECIPE {
    type = "recipe",
    name = "sap-01",
    category = "sap",
    hidden = true,
    enabled = true,
    energy_required = 20,
    ingredients = {
    },
    results = {
        {type = 'item', name = 'saps', amount = 1}
    }
}

table.insert(data.raw.module["sap-tree-mk01"].limitation, "sap-01")

table.insert(data.raw.module["sap-tree-mk02"].limitation, "sap-01")

table.insert(data.raw.module["sap-tree-mk03"].limitation, "sap-01")

table.insert(data.raw.module["sap-tree-mk04"].limitation, "sap-01")
