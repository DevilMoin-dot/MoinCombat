clear @s
scoreboard players set @s mc_combat 0
scoreboard players set @s mc_opp_id 0
title @s actionbar ""
tellraw @s ["",{"text":"[MoinCombat] ","color":"gold","bold":true},{"text":"You logged out during PvP combat and died!","color":"red"}]
damage @s 1000.0 minecraft:generic
