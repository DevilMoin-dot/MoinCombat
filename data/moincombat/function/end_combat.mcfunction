scoreboard players set @s mc_combat 0
scoreboard players set @s mc_opp_id 0
title @s actionbar ""
tellraw @s ["",{"text":"[MoinCombat] ","color":"gold","bold":true},{"text":"Combat is over. You can now safely log out, use ender pearls, and keep your items on death.","color":"green"}]
function moincombat:remove_tracker
