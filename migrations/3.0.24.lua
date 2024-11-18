for _, surface in pairs(game.surfaces) do
  for _, ass in ipairs({"automated-factory-mk01", "automated-factory-mk02", "automated-factory-mk03", "automated-factory-mk04"}) do
    for _, assembler in pairs(surface.find_entities_filtered{name=ass}) do
      local recipe = assembler.get_recipe()
      if recipe and recipe.name and recipe.name == "korlex-food-01" then        
        local result = assembler.rotate {reverse = true}
        local result = assembler.rotate {reverse = true}
        log("Rotating " .. assembler.unit_number .. " at ".. assembler.gps_tag .. "was " .. (result and "successful" or "unsuccessful"))
      end
    end
  end
end
