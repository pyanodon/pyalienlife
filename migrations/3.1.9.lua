for _, biorobot in pairs(storage.biofluid_robots) do
  biorobot.fluid = biorobot.name
  biorobot.name = nil
end