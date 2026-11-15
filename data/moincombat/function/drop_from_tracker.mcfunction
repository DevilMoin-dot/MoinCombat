execute if data entity @s data.Inventory[0] run function moincombat:pop_inv_item

scoreboard players operation #cur_id mc_const = @s mc_id
execute as @e[type=minecraft:marker,tag=mc_tracker] if score @s mc_id = #cur_id mc_const run function moincombat:drop_equipment_storage
