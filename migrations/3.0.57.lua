local util = require '__core__.lualib.util'
local SECONDS = 60
-- recreate beacons to reflect the new radius

local migrated_storage = {}

local function search_area(surface, position, square_width)
    if storage.skip_vatbrain_check then return {} end
    local radius = square_width / 2
    local top_left = {position.x - radius, position.y - radius}
    local bottom_right = {position.x + radius, position.y + radius}
    return surface.find_entities_filtered{
        area = {top_left, bottom_right},
        type = "lab"
    }
end

local haschanged = false

for _, unit_number in pairs(storage.vatbrains) do
    local beacon = unit_number.beacon
    local vatbrain = unit_number.vatbrain

    if beacon and beacon.valid and vatbrain and vatbrain.valid then
        local surface = vatbrain.surface
        -- Store the old beacon list for reference below
        local old_receivers = {}
        for _, recipient in pairs(search_area(surface, beacon.position, 25)) do
            if recipient.valid then
                old_receivers[recipient.unit_number] = recipient
            end
        end
        local new_beacon = surface.create_entity {
            name = "hidden-beacon",
            position = vatbrain.position,
            force = vatbrain.force,
        }
        -- Remove any still-present recipients from the table
        for _, recipient in pairs(new_beacon.get_beacon_effect_receivers()) do
            if recipient.valid then
                old_receivers[recipient.unit_number] = nil
            end
        end
        -- If there is any difference between the two lists, print a warning listing the vatbrain and affected labs
        if next(old_receivers) then
            haschanged = true
            local printstr = string.format("[entity=vat-brain]%s [color=yellow]no longer covers:[/color]", vatbrain.gps_tag)
            for _, recipient in pairs(old_receivers) do
                printstr = string.format("%s %s", printstr, recipient.gps_tag)
            end
            game.print(printstr)
        end
        storage.vatbrains[beacon.unit_number] = nil
        beacon.destroy()
        migrated_storage[new_beacon.unit_number] = {beacon = new_beacon, vatbrain = vatbrain}
    end
end

if table_size(migrated_storage) ~= 0 then
    local conditionalmsg = haschanged and "Any labs with changed coverage are noted above." or "None of your existing labs have changed coverage."
    game.print({"command-output.update-note", {"mod-name.pyalienlife"}, "[entity=vat-brain] had their off-center coverage fixed in this update. " .. conditionalmsg})
end

storage.vatbrains = migrated_storage
storage.skip_vatbrain_check = nil -- no longer need the flag