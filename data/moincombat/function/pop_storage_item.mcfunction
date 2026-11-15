data modify storage moincombat:temp item set from entity @s data.Inventory[0]
data remove storage moincombat:temp item.slot
data remove storage moincombat:temp item.Slot
execute at @s run summon minecraft:item ~ ~0.2 ~ {PickupDelay:20,Tags:["mc_new_item"],Item:{id:"minecraft:stone",count:1}}
execute as @e[type=minecraft:item,tag=mc_new_item,limit=1] run data modify entity @s Item set from storage moincombat:temp item
tag @e[type=minecraft:item,tag=mc_new_item] remove mc_new_item
data remove entity @s data.Inventory[0]
execute if data entity @s data.Inventory[0] run function moincombat:pop_storage_item
