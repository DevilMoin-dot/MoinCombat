scoreboard objectives add mc_combat dummy
scoreboard objectives add mc_deaths deathCount
scoreboard objectives add mc_seen dummy
scoreboard objectives add mc_seconds dummy
scoreboard objectives add mc_const dummy
scoreboard objectives add mc_id dummy
scoreboard objectives add mc_next_id dummy
scoreboard objectives add mc_opp_id dummy
scoreboard objectives add mc_has_other dummy
scoreboard objectives add mc_pending_clear dummy
scoreboard players set #20 mc_const 20
scoreboard players add #counter mc_next_id 0
gamerule minecraft:keep_inventory true
tellraw @a ["",{"text":"[MoinCombat] ","color":"gold","bold":true},{"text":"Datapack loaded. PvP combat lasts 30 seconds.","color":"yellow"}]
