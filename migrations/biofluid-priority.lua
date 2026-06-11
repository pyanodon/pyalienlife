for _, metadata in pairs(storage.biofluid_providers) do
    metadata.priority = metadata.priority or 0
end

for _, metadata in pairs(storage.biofluid_requesters) do
    metadata.priority = metadata.priority or 0
end