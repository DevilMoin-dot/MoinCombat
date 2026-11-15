scoreboard players operation #cur_id mc_const = @s mc_id
scoreboard players set #has_trk mc_const 0
execute as @e[type=minecraft:marker,tag=mc_tracker] if score @s mc_id = #cur_id mc_const run scoreboard players set #has_trk mc_const 1
execute if score @s mc_combat matches 1.. if score #has_trk mc_const matches 0 run function moincombat:punish_rejoin_combat_log
