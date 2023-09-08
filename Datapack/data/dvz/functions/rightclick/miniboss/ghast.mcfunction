# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: ghast
# File Purpose: Spawn items for ghast class
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
title @a subtitle ["",{"selector":"@s[tag=miniboss]","color":"red"},{"text":" is a ghast!","color":"red"}]
title @a title ""
tellraw @a ["",{"selector":"@s[tag=miniboss]","color":"red"},{"text":" is a Ghast!","color":"red","bold":true}]
playsound event.raid.horn master @a ~ ~ ~ 200 0.8
playsound entity.ghast.scream master @a ~ ~ ~ 200

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add ghast
execute if entity @s[tag=ghast,tag=!selectedclass] run tag @s add ghastflight
team join zMONSTER @s[tag=ghast,tag=!selectedclass]
clear @s[tag=!selectedclass]

give @s[tag=ghast,tag=!selectedclass] bread 64
give @s[tag=ghast,tag=!selectedclass] stick{CustomModelData:70,Levitate:1b,display:{Name:'[{"text":"Levitate","color":"green"}]',Lore:['[{"text":"Place in offhand to use."}]']}} 1
give @s[tag=ghast,tag=!selectedclass] stick{CustomModelData:36,Descend:1b,display:{Name:'[{"text":"Descend","color":"red"}]',Lore:['[{"text":"Place in offhand to use."}]']}} 1
give @s[tag=ghast,tag=!selectedclass] carrot_on_a_stick{CustomModelData:64,Unbreakable:1b,display:{Name:'{"text":"Fireball","color":"gold"}',Lore:['[{"text":"Fires 1 HUGE fireball."}]','[{"text":"5 second cooldown!","color":"red"}]']}} 1

#effect give @s[tag=ghast,tag=!selectedclass] regeneration 1000000 0 true
effect give @s[tag=ghast,tag=!selectedclass] health_boost 1000000 4 true
#effect give @s[tag=ghast,tag=!selectedclass] jump_boost 1000000 255 true

item replace entity @s[tag=ghast,tag=!selectedclass] armor.head with firework_star{CustomModelData:5,display:{Name:'{"text":"Ghast Head","italic":false}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:20},{id:"binding_curse",lvl:1},{id:"protection",lvl:2}],AttributeModifiers:[{Slot:"head",AttributeName:"generic.armor", Name:"generic.armor", Amount:2.0, Operation:0, UUID:[I; -64585, 64804, 64804, 64804]}]}
item replace entity @s[tag=ghast,tag=!selectedclass] armor.chest with iron_chestplate{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 20}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 6.0d, Operation: 0, UUID: [I; 64585, -64804, 64804, 64804]}]}
item replace entity @s[tag=ghast,tag=!selectedclass] armor.legs with iron_leggings{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 20}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 5.0d, Operation: 0, UUID: [I; 64585, 64804, -64804, 64804]}]}
item replace entity @s[tag=ghast,tag=!selectedclass] armor.feet with iron_boots{Unbreakable: 1b, Enchantments: [{id: "feather_falling", lvl: 100}, {id: "blast_protection", lvl: 20}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 2.0d, Operation: 0, UUID: [I; 64585, 64804, 64804, -64804]}]}

tag @s add selectedclass
tag @e[tag=dvztimer,tag=!miniboss] add miniboss
