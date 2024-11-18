local function has_value (hay_stack, needle)
  for _, value in ipairs(hay_stack) do
      if value == needle then
          return true
      end
  end

  return false
end

recipes_to_check = {"korlex-food-01", "korlex-food-02", "dhilmos-food-02", "simik-food-02", "dingrits-food-01", "dingrits-food-02", "zipir-food-02"}

for _, surface in pairs(game.surfaces) do
  for _, ass in ipairs({"automated-factory-mk01", "automated-factory-mk02", "automated-factory-mk03", "automated-factory-mk04"}) do
    for _, assembler in pairs(surface.find_entities_filtered{name=ass}) do
      local recipe = assembler.get_recipe()
      if recipe and recipe.name and has_value(recipes_to_check, recipe.name) then        
        assembler.rotate {reverse = true}
        local result = assembler.rotate {reverse = true}
        log("Rotating " .. assembler.unit_number .. " at ".. assembler.gps_tag .. "was " .. (result and "successful" or "unsuccessful"))
      end
    end
  end
end
