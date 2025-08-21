-- recreate beacons to reflect the new radius

local migrated_storage = {}

for _, unit_number in pairs(storage.vatbrains) do
    local beacon = unit_number.beacon
    local vatbrain = unit_number.vatbrain

    if beacon and beacon.valid and vatbrain and vatbrain.valid then

        local new_beacon = vatbrain.surface.create_entity {
            name = "hidden-beacon",
            position = vatbrain.position,
            force = vatbrain.force,
        }

        storage.vatbrains[beacon.unit_number] = nil
        beacon.destroy()
        migrated_storage[new_beacon.unit_number] = {beacon = new_beacon, vatbrain = vatbrain}
    end
end

storage.vatbrains = migrated_storage
