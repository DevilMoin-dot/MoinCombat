scoreboard players operation #marker_id mc_const = @s mc_id
scoreboard players set #owner_online mc_const 0
execute as @a if score @s mc_id = #marker_id mc_const run scoreboard players set #owner_online mc_const 1
execute if score #owner_online mc_const matches 0 run function moincombat:handle_combat_log
