execute if data entity @s data.equipment.head.id run data modify storage moincombat:temp item set from entity @s data.equipment.head
execute if data entity @s data.equipment.head.id at @s run summon minecraft:item ~ ~0.2 ~ {PickupDelay:20,Tags:["mc_new_item"],Item:{id:"minecraft:stone",count:1}}
execute if data entity @s data.equipment.head.id as @e[type=minecraft:item,tag=mc_new_item,limit=1] run data modify entity @s Item set from storage moincombat:temp item
tag @e[type=minecraft:item,tag=mc_new_item] remove mc_new_item

execute if data entity @s data.equipment.chest.id run data modify storage moincombat:temp item set from entity @s data.equipment.chest
execute if data entity @s data.equipment.chest.id at @s run summon minecraft:item ~ ~0.2 ~ {PickupDelay:20,Tags:["mc_new_item"],Item:{id:"minecraft:stone",count:1}}
execute if data entity @s data.equipment.chest.id as @e[type=minecraft:item,tag=mc_new_item,limit=1] run data modify entity @s Item set from storage moincombat:temp item
tag @e[type=minecraft:item,tag=mc_new_item] remove mc_new_item

execute if data entity @s data.equipment.legs.id run data modify storage moincombat:temp item set from entity @s data.equipment.legs
execute if data entity @s data.equipment.legs.id at @s run summon minecraft:item ~ ~0.2 ~ {PickupDelay:20,Tags:["mc_new_item"],Item:{id:"minecraft:stone",count:1}}
execute if data entity @s data.equipment.legs.id as @e[type=minecraft:item,tag=mc_new_item,limit=1] run data modify entity @s Item set from storage moincombat:temp item
tag @e[type=minecraft:item,tag=mc_new_item] remove mc_new_item

execute if data entity @s data.equipment.feet.id run data modify storage moincombat:temp item set from entity @s data.equipment.feet
execute if data entity @s data.equipment.feet.id at @s run summon minecraft:item ~ ~0.2 ~ {PickupDelay:20,Tags:["mc_new_item"],Item:{id:"minecraft:stone",count:1}}
execute if data entity @s data.equipment.feet.id as @e[type=minecraft:item,tag=mc_new_item,limit=1] run data modify entity @s Item set from storage moincombat:temp item
tag @e[type=minecraft:item,tag=mc_new_item] remove mc_new_item

execute if data entity @s data.equipment.offhand.id run data modify storage moincombat:temp item set from entity @s data.equipment.offhand
execute if data entity @s data.equipment.offhand.id at @s run summon minecraft:item ~ ~0.2 ~ {PickupDelay:20,Tags:["mc_new_item"],Item:{id:"minecraft:stone",count:1}}
execute if data entity @s data.equipment.offhand.id as @e[type=minecraft:item,tag=mc_new_item,limit=1] run data modify entity @s Item set from storage moincombat:temp item
tag @e[type=minecraft:item,tag=mc_new_item] remove mc_new_item
