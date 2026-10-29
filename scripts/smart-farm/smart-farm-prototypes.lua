local smart_farm = py.mod_data.smart_farm --[[@as SmartFarmData]]

py.assert_type (
    smart_farm,
    "table",
    "ERROR: pY mod data [smart_farm] is invalid"
)

py.assert_type (
    smart_farm.crops,
    "table",
    "ERROR: pY mod data [smart_farm] has invalid field crops"
)

SmartFarm = SmartFarm or {}
SmartFarm.crops = {}

for launch_item, crop_data in pairs(smart_farm.crops) do
    py.assert_type (
        launch_item,
        "string",
        "ERROR: pY mod data [smart_farm] SmartFarmCropData has invalid index"
    )
    py.assert(
        prototypes.item[launch_item],
        "ERROR: pY mod data [smart_farm] SmartFarmCropData [%s] launch item does not exist",
        launch_item
    )
    py.assert(
        prototypes.item[launch_item].send_to_orbit_mode == "automated",
        "ERROR: pY mod data [smart_farm] SmartFarmCropData [%s] launch item cannot be automatically launched",
        launch_item
    )
    py.assert_type (
        crop_data,
        "table",
        "ERROR: pY mod data [smart_farm] has invalid SmartFarmCropData [%s]",
        launch_item
    )
    py.assert_type (
        crop_data.resource,
        "string",
        "ERROR: pY mod data [smart_farm] SmartFarmCropData [%s] has invalid resource",
        launch_item
    )
    py.assert_type (
        crop_data.resource,
        "string",
        "ERROR: pY mod data [smart_farm] SmartFarmCropData [%s] resource [%s] does not exist",
        launch_item, crop_data.resource
    )
    py.assert_type (
        crop_data.recipes,
        "table",
        "ERROR: pY mod data [smart_farm] SmartFarmCropData [%s] has invalid recipes",
        launch_item
    )
    for recipe, yield in pairs(crop_data.recipes) do
        py.assert_type(
            recipe,
            "string",
            "ERROR: pY mod data [smart_farm] SmartFarmCropData [%s] has invalid recipe index",
            launch_item
        )
        if not prototypes.recipe[recipe] then
            py.log.info("recipe [" .. recipe .. "] does not exist", "pY mod data [smart_farm]")
        end
        py.assert_type(
            yield,
            {"number", "gtzero"},
            "ERROR: pY mod data [smart_farm] SmartFarmCropData [%s] has recipe [%s] has invalid yield",
            launch_item, recipe
        )
    end
    SmartFarm.crops[launch_item] = crop_data
end
