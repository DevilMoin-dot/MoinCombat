scoreboard players operation #cur_id mc_const = @s mc_id
scoreboard players set #had_tracker mc_const 0
execute as @e[type=minecraft:marker,tag=mc_tracker] if score @s mc_id = #cur_id mc_const run scoreboard players set #had_tracker mc_const 1
execute if score #had_tracker mc_const matches 1 run function moincombat:end_combat
