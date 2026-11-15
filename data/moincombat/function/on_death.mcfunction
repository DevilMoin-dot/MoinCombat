scoreboard players operation @s mc_seen = @s mc_deaths
execute if score @s mc_combat matches 1.. run function moincombat:drop_inventory
