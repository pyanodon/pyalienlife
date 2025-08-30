local Utils = require("scripts.caravan.utils")
local function process_schedule(schedule)
    for _, action in pairs(schedule.actions or {}) do
        Utils.ensure_item_count(action)
    end
end
for _, caravan_data in pairs(storage.caravans or {}) do
    for _, schedule in pairs(caravan_data.schedule or {}) do
        process_schedule(schedule)
    end
end
storage.interrupts = storage.interrupts or {}
storage.interrupts[ "" ] = nil
for _, interrupt_data in pairs(storage.interrupts or {}) do
    process_schedule(interrupt_data.schedule)
    for _, condition in pairs(interrupt_data.conditions or {}) do
        Utils.ensure_item_count(condition)
    end
end
