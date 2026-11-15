tag @s add mc_syncing
scoreboard players operation #cur_id mc_const = @s mc_id
scoreboard players set #found_tracker mc_const 0
execute as @e[type=minecraft:marker,tag=mc_tracker] if score @s mc_id = #cur_id mc_const run scoreboard players set #found_tracker mc_const 1
execute if score #found_tracker mc_const matches 0 at @s run summon minecraft:marker ~ ~ ~ {Tags:["mc_tracker"]}
execute if score #found_tracker mc_const matches 0 at @s as @e[type=minecraft:marker,tag=mc_tracker,distance=..1,limit=1] run scoreboard players operation @s mc_id = #cur_id mc_const

execute at @s as @e[type=minecraft:marker,tag=mc_tracker] if score @s mc_id = #cur_id mc_const run tp @s ~ ~ ~
execute as @e[type=minecraft:marker,tag=mc_tracker] if score @s mc_id = #cur_id mc_const run data modify entity @s data.Inventory set from entity @p[tag=mc_syncing] Inventory
execute as @e[type=minecraft:marker,tag=mc_tracker] if score @s mc_id = #cur_id mc_const run data modify entity @s data.equipment set from entity @p[tag=mc_syncing] equipment
tag @s remove mc_syncing
