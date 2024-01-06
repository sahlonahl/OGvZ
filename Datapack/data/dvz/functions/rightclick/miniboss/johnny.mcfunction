# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: johnny
# File Purpose: Spawn items for johnny class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.09.08
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

team leave @s[tag=!selectedclass]
tag @s[tag=!selectedclass] add miniboss
#title @a subtitle ["",{"selector":"@s[tag=miniboss]","color":"red"},{"text":" is the Horseless Headless Horseman!","color":"red"}]
title @a subtitle ["",{"selector":"@s[tag=miniboss]","color":"red"},{"text":" is Johnny!","color":"red"}]
title @a title ""
#tellraw @a ["",{"selector":"@s[tag=miniboss]","color":"red"},{"text":" is the Horseless Headless Horseman!","color":"red","bold":true}]
tellraw @a ["",{"selector":"@s[tag=miniboss]","color":"red"},{"text":" is Johnny!","color":"red","bold":true}]
playsound event.raid.horn master @a ~ ~ ~ 200 0.8
playsound entity.vindicator.celebrate master @a ~ ~ ~ 200

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add johnny
team join zJOHNNY @s[tag=johnny,tag=!selectedclass]
clear @s[tag=!selectedclass]

give @s[tag=johnny,tag=!selectedclass] cooked_beef 64
#give @s[tag=johnny,tag=!selectedclass] iron_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"text":"Horseless Headless Horseman\'s Axe","color":"red"}'},Enchantments:[{id:"sharpness",lvl:5}]}
give @s[tag=johnny,tag=!selectedclass] iron_axe{CustomModelData:1,Unbreakable:1b,display:{Name:'{"text":"Johnny\'s Axe","color":"red"}'},Enchantments:[{id:"sharpness",lvl:8}]}
give @s[tag=johnny,tag=!selectedclass] carrot_on_a_stick{CustomModelData:65,Unbreakable:1b,display:{Name:'{"text":"Vindication","color":"gold"}',Lore:['[{"text":"Buffs monsters and teleports zombies to you."}]']}} 1
give @s[tag=johnny,tag=!selectedclass] crossbow{display:{Name:'{"text":"Madman\'s Crossbow","color":"red"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:multishot",lvl:1s},{id:"minecraft:piercing",lvl:4s},{id:"minecraft:quick_charge",lvl:4s}]} 1
give @s[tag=johnny,tag=!selectedclass] splash_potion{Potion:"minecraft:strong_healing"} 4
give @s[tag=johnny,tag=!selectedclass] potion{Potion:"minecraft:strong_leaping"} 1
give @s[tag=johnny,tag=!selectedclass] tipped_arrow{Potion:"minecraft:strong_slowness"} 128

effect give @s[tag=johnny,tag=!selectedclass] regeneration infinite 0 true
effect give @s[tag=johnny,tag=!selectedclass] speed infinite 1 true
effect give @s[tag=johnny,tag=!selectedclass] strength infinite 2 true
effect give @s[tag=johnny,tag=!selectedclass] health_boost infinite 4 true
effect give @s[tag=johnny,tag=!selectedclass] haste infinite 2 true

item replace entity @s[tag=johnny,tag=!selectedclass] armor.head with firework_star{CustomModelData:16,display:{Name:'{"text":"Johnny\'s Head","italic":false}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1},{id:"protection",lvl:3}],AttributeModifiers:[{Slot:"head",AttributeName:"generic.armor", Name:"generic.armor", Amount:2.0, Operation:0, UUID:[I; -64585, 64804, 64804, 64804]}]}
item replace entity @s[tag=johnny,tag=!selectedclass] armor.chest with leather_chestplate{display: {color: 2895973}, Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 3}], AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 6.0d, Operation: 0, UUID: [I; 64585, -64804, 64804, 64804]}]}
item replace entity @s[tag=johnny,tag=!selectedclass] armor.legs with leather_leggings{display: {color: 2895973}, Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 3}], AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 5.0d, Operation: 0, UUID: [I; 64585, 64804, -64804, 64804]}]}
item replace entity @s[tag=johnny,tag=!selectedclass] armor.feet with iron_boots{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 3}], AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 2.0d, Operation: 0, UUID: [I; 64585, 64804, 64804, -64804]}]}

tag @s add selectedclass
tag @e[tag=dvztimer,tag=!miniboss] add miniboss