# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: bee
# File Purpose: Spawn items for bee class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.09.08
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: flight items are controlled by "ghastflight" via dvz:tick
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add bee
execute if entity @s[tag=bee,tag=!selectedclass] run tag @s add ghastflight
team join zBEE @s[tag=bee,tag=!selectedclass]
clear @s[tag=!selectedclass]
gamemode adventure @s[tag=bee]

give @s[tag=bee,tag=!selectedclass] stick{CustomModelData:70,Levitate:1b,display:{Name:'[{"text":"Levitate","color":"green"}]',Lore:['[{"text":"Place in offhand to use."}]']}} 1
give @s[tag=bee,tag=!selectedclass] stick{CustomModelData:36,Descend:1b,display:{Name:'[{"text":"Descend","color":"red"}]',Lore:['[{"text":"Place in offhand to use."}]']}} 1
give @s[tag=bee,tag=!selectedclass] bow{display:{Name:'{"text":"Stinger Sling","color":"dark_green"}'},Unbreakable:1b,Enchantments:[{id:"infinity",lvl:1}]} 1
give @s[tag=bee,tag=!selectedclass] carrot_on_a_stick{CustomModelData:63,Unbreakable:1b,display:{Name:'{"text":"Honey","color":"gold"}',Lore:['[{"text":"Heals and reinforces mobs where you are looking."}]','[{"text":"10 second cooldown!","color":"red"}]']}} 1
give @s[tag=bee,tag=!selectedclass] cooked_beef 64
#give @s[tag=bee,tag=!selectedclass] splash_potion{CustomPotionColor:16776960,CustomPotionEffects:[{Id:6b,Duration:10,Amplifier:1},{Id:10b,Duration:200}],display:{Name:'[{"text":"Bee\'s Potion"}]'}} 8
#give @s[tag=bee,tag=!selectedclass] lingering_potion{CustomPotionColor:16776960,CustomPotionEffects:[{Id:6b,Duration:10,Amplifier:1},{Id:10b,Duration:200}],display:{Name:'[{"text":"Bee\'s Potion"}]'}} 8
summon item ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:8b,tag:{display:{Name:'{"text":"Bee Potion"}'},CustomPotionEffects:[{Id:6,Duration:10,Amplifier:1},{Id:10,Duration:200}],CustomPotionColor:16776960}}}
execute at @s[tag=bee] run data modify entity @e[type=minecraft:item,limit=1,sort=nearest] Owner set from entity @s[tag=bee] UUID
summon item ~ ~ ~ {Item:{id:"minecraft:lingering_potion",Count:8b,tag:{display:{Name:'{"text":"Bee Potion"}'},CustomPotionEffects:[{Id:6,Duration:10,Amplifier:1},{Id:10,Duration:200}],CustomPotionColor:16776960}}}
execute at @s[tag=bee] run data modify entity @e[type=minecraft:item,limit=1,sort=nearest] Owner set from entity @s[tag=bee] UUID
data modify entity @e[type=minecraft:item,limit=1,sort=nearest] Owner set from entity @s UUID
give @s[tag=bee,tag=!selectedclass] tipped_arrow{Potion:"minecraft:long_poison"} 16

item replace entity @s[tag=bee,tag=!selectedclass] armor.head with firework_star{CustomModelData:1,display:{Name:'{"text":"Bee Head","italic":false}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id: "protection", lvl: 1},{id:"binding_curse",lvl:1}]} 1
item replace entity @s[tag=bee,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 6238757}, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=bee,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 15582019}, Enchantments: [{id: "blast_protection", lvl: 4},{id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=bee,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 6238757}, Enchantments: [{id: "feather_falling", lvl: 100}, {id: "blast_protection", lvl: 4},{id: "protection", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1

#effect give @s[tag=bee,tag=!selectedclass] jump_boost 1000000 255 true

tag @s add selectedclass

execute as @s[tag=bee] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
execute as @a[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Nature:1b}}]}] run function dvz:zombies/natures

