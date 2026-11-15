scoreboard players operation #cur_id mc_const = @s mc_id
execute as @e[type=minecraft:marker,tag=mc_tracker] if score @s mc_id = #cur_id mc_const run function moincombat:pop_storage_item
