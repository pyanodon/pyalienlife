-- Starting in 3.1.3, old digosaurs are missing their parent_id field, so they will never be able to find their dig site again.
-- This migration clears out all active digosaurs and their proxies, so that the dig sites can be refilled with new digosaurs that have the correct parent_id field.

storage.dig_sites = storage.dig_sites or {}

for _, dig_site in pairs(storage.dig_sites) do
    for _, digosaur_data in pairs(dig_site.active_digosaurs or {}) do
        if digosaur_data.proxy and digosaur_data.proxy.valid then
            digosaur_data.proxy.destroy()
        end

        if digosaur_data.entity and digosaur_data.entity.valid then
            digosaur_data.entity.destroy()
        end
    end

    dig_site.active_digosaurs = {}
end

storage.digosaurs = {}
