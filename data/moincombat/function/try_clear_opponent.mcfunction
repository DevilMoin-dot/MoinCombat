scoreboard players operation #target_id mc_const = @s mc_id
scoreboard players set @s mc_has_other 0
tag @s add mc_checking_other
execute as @a[tag=!mc_checking_other,scores={mc_combat=1..}] if score @s mc_opp_id = #target_id mc_const run scoreboard players set @p[tag=mc_checking_other] mc_has_other 1
tag @s remove mc_checking_other
execute if score @s mc_has_other matches 0 run function moincombat:end_combat
