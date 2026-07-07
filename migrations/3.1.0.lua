-- farming changes
storage.farms = storage.farms or {}
storage.farm_count = storage.farm_count or 0
storage.alerts = storage.alerts or {}
storage.alert_count = storage.alert_count or 0
for _, entity in pairs(storage.disabled_farm_buildings) do
    entity.disabled_by_script = false
    entity.custom_status = nil
    storage.farms[entity.unit_number] = {entity = entity}
    Farming.process(storage.farms[entity.unit_number])
    storage.farm_count = storage.farm_count + 1
end
for _, entity in pairs(storage.enabled_farm_buildings) do
    storage.farms[entity.unit_number] = {entity = entity}
    storage.farm_count = storage.farm_count + 1
end

storage.disabled_farm_buildings = nil
storage.enabled_farm_buildings = nil
storage.next_farm_index = nil

-- slaughterhouse UI
-- remove old storage references (different data types)
storage.opened_slaughterhouses = nil
storage.watched_buildings = nil
storage.watch_buildings = nil