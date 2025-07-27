#> Description: Drops the player's armor.

# Store player's equipment and uuid into storage.
data modify storage ogvz:player equipment set from entity @s equipment
data modify storage ogvz:player uuid set from entity @s UUID

# Drop helmet.
execute if items entity @s armor.head * anchored eyes positioned ^ ^ ^ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick"},Tags:["temp.replace"]}
data modify entity @n[type=minecraft:item,tag=temp.replace] Item set from storage ogvz:player equipment.head
data modify entity @n[type=minecraft:item,tag=temp.replace] Owner set from storage ogvz:player uuid
tag @n[type=minecraft:item,tag=temp.replace] remove temp.replace
item replace entity @s armor.head with minecraft:air

# Drop chestplate.
execute if items entity @s armor.chest * anchored eyes positioned ^ ^ ^ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick"},Tags:["temp.replace"]}
data modify entity @n[type=minecraft:item,tag=temp.replace] Item set from storage ogvz:player equipment.chest
data modify entity @n[type=minecraft:item,tag=temp.replace] Owner set from storage ogvz:player uuid
tag @n[type=minecraft:item,tag=temp.replace] remove temp.replace
item replace entity @s armor.chest with minecraft:air

# Drop leggings.
execute if items entity @s armor.legs * anchored eyes positioned ^ ^ ^ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick"},Tags:["temp.replace"]}
data modify entity @n[type=minecraft:item,tag=temp.replace] Item set from storage ogvz:player equipment.legs
data modify entity @n[type=minecraft:item,tag=temp.replace] Owner set from storage ogvz:player uuid
tag @n[type=minecraft:item,tag=temp.replace] remove temp.replace
item replace entity @s armor.legs with minecraft:air

# Drop boots.
execute if items entity @s armor.feet * anchored eyes positioned ^ ^ ^ run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stick"},Tags:["temp.replace"]}
data modify entity @n[type=minecraft:item,tag=temp.replace] Item set from storage ogvz:player equipment.feet
data modify entity @n[type=minecraft:item,tag=temp.replace] Owner set from storage ogvz:player uuid
tag @n[type=minecraft:item,tag=temp.replace] remove temp.replace
item replace entity @s armor.feet with minecraft:air
