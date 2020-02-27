game.reload_script()

for _,player in pairs(game.players) do
   player.force.reset_recipes()
   player.force.reset_technologies()
   player.force.reset_technology_effects()
end