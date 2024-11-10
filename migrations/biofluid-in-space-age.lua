require "scripts.biofluid.biofluid"

storage.network_positions = nil
storage.biofluid_undergrounds = nil

storage.biofluid_robots = storage.biofluid_robots or {}
storage.biofluid_requesters = storage.biofluid_requesters or {}
storage.biofluid_providers = storage.biofluid_providers or {}
storage.biofluid_bioports = storage.biofluid_bioports or {}
storage.biofluid_networks = storage.biofluid_networks or {}

for _, network_data in pairs(storage.biofluid_networks) do
    local providers = network_data.providers
    for _, provider in pairs(providers or {}) do
        if provider.valid then
            storage.biofluid_providers[provider.unit_number] = {entity = provider}
        end
    end    
end

Biofluid.built_pipe()
