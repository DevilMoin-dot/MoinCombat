execute store result score #stored_id mc_const run data get storage moincombat:data combat_loggers[0]
execute if score #stored_id mc_const = #cur_id mc_const run function moincombat:punish_rejoin_combat_log
execute unless score #stored_id mc_const = #cur_id mc_const run data modify storage moincombat:temp remaining append value 0
execute unless score #stored_id mc_const = #cur_id mc_const as @e[type=minecraft:marker,limit=1] run data modify storage moincombat:temp remaining[-1] set from storage moincombat:data combat_loggers[0]
data remove storage moincombat:data combat_loggers[0]
execute if data storage moincombat:data combat_loggers[] run function moincombat:filter_combat_loggers
