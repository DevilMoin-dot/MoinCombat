tag @s add mc_attacker
execute as @p[tag=mc_victim] if score @s mc_combat matches 1.. run tag @s add mc_was_in_combat
execute if score @s mc_combat matches 1.. run tag @s add mc_was_in_combat

scoreboard players operation @s mc_opp_id = @p[tag=mc_victim] mc_id
scoreboard players operation @p[tag=mc_victim] mc_opp_id = @s mc_id

scoreboard players set @s mc_combat 600
function moincombat:sync_tracker
execute as @p[tag=mc_victim] run scoreboard players set @s mc_combat 600
execute as @p[tag=mc_victim] run function moincombat:sync_tracker

execute as @p[tag=mc_victim,tag=!mc_was_in_combat] run tellraw @s ["",{"text":"[MoinCombat] ","color":"gold","bold":true},{"text":"You are now in combat with ","color":"red"},{"selector":"@p[tag=mc_attacker]","color":"yellow","bold":true},{"text":". If you die or log out, you will lose your items!","color":"red"}]
execute if entity @s[tag=!mc_was_in_combat] run tellraw @s ["",{"text":"[MoinCombat] ","color":"gold","bold":true},{"text":"You are now in combat with ","color":"red"},{"selector":"@p[tag=mc_victim]","color":"yellow","bold":true},{"text":". If you die or log out, you will lose your items!","color":"red"}]

tag @s remove mc_was_in_combat
execute as @p[tag=mc_victim] run tag @s remove mc_was_in_combat
tag @s remove mc_attacker
