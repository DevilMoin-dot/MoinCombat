execute as @a unless score @s mc_id matches 1.. run function moincombat:assign_id
execute as @a[scores={mc_combat=1..}] run function moincombat:check_rejoin_combat_log
execute as @a[scores={mc_combat=1..}] run function moincombat:sync_tracker
execute as @a[scores={mc_pending_clear=1}] unless data entity @s {Health:0.0f} run function moincombat:finish_respawn_clear

execute as @a unless score @s mc_seen matches 0.. run scoreboard players set @s mc_seen 0
execute as @a if score @s mc_deaths > @s mc_seen run function moincombat:on_death

execute as @e[type=minecraft:marker,tag=mc_tracker] run function moincombat:check_combat_log

execute as @e[type=minecraft:ender_pearl] at @s on origin if score @s mc_combat matches 1.. run tellraw @s ["",{"text":"[MoinCombat] ","color":"gold","bold":true},{"text":"You can't throw an ender pearl while you're in combat!","color":"red"}]
execute as @e[type=minecraft:ender_pearl] at @s on origin if score @s mc_combat matches 1.. run kill @e[type=minecraft:ender_pearl,distance=..1,limit=1]

execute as @a[scores={mc_combat=1..}] run scoreboard players remove @s mc_combat 1
execute as @a[scores={mc_combat=0}] run function moincombat:check_natural_expiry

execute as @a[scores={mc_combat=1..}] run scoreboard players operation @s mc_seconds = @s mc_combat
execute as @a[scores={mc_combat=1..}] run scoreboard players operation @s mc_seconds /= #20 mc_const
execute as @a[scores={mc_combat=1..}] run scoreboard players add @s mc_seconds 1
execute as @a[scores={mc_combat=1..}] run title @s actionbar [{"text":"COMBAT: ","color":"red","bold":true},{"score":{"name":"@s","objective":"mc_seconds"},"color":"yellow"},{"text":"s","color":"yellow"}]
