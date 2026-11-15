advancement revoke @s only moincombat:player_hurt_by_player
tag @s add mc_victim
execute on attacker unless entity @s[tag=mc_victim] run function moincombat:engage_pair
tag @s remove mc_victim
