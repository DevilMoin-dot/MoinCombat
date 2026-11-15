function moincombat:drop_from_tracker
tellraw @a ["",{"text":"[MoinCombat] ","color":"gold","bold":true},{"text":"A player logged out during PvP combat and dropped all their items!","color":"red"}]
scoreboard players operation #dead_id mc_const = @s mc_id
execute as @a[scores={mc_combat=1..}] if score @s mc_opp_id = #dead_id mc_const run function moincombat:end_combat
kill @s
