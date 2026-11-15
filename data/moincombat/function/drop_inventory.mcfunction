scoreboard players operation #cur_id mc_const = @s mc_id
execute as @e[type=minecraft:marker,tag=mc_tracker] if score @s mc_id = #cur_id mc_const run tag @s add mc_death_pos
execute at @e[type=minecraft:marker,tag=mc_death_pos,limit=1] run loot spawn ~ ~0.2 ~ loot moincombat:player_head
execute as @e[type=minecraft:marker,tag=mc_death_pos] run function moincombat:drop_from_tracker
kill @e[type=minecraft:marker,tag=mc_death_pos]

clear @s
scoreboard players set @s mc_pending_clear 1

scoreboard players operation #dead_id mc_const = @s mc_id
scoreboard players set @s mc_combat 0
scoreboard players set @s mc_opp_id 0
title @s actionbar ""
tellraw @s ["",{"text":"[MoinCombat] ","color":"gold","bold":true},{"text":"You died during PvP combat and lost your items!","color":"red"}]

execute as @a[scores={mc_combat=1..}] if score @s mc_opp_id = #dead_id mc_const run function moincombat:end_combat
