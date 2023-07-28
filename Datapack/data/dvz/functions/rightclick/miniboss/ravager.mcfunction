# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: ravager
# File Purpose: Spawn items for ravager class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.02.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

team leave @s[tag=!selectedclass]
tag @s[tag=!selectedclass] add miniboss
title @a subtitle ["",{"selector":"@s[tag=miniboss]","color":"red"},{"text":" is a Ravager!","color":"red"}]
title @a title ""
tellraw @a ["",{"selector":"@s[tag=miniboss]","color":"red"},{"text":" is a Ravager!","color":"red","bold":true}]
playsound event.raid.horn master @a ~ ~ ~ 200 0.8
playsound entity.ravager.roar master @a ~ ~ ~ 200

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add ravager
team join zMONSTER @s[tag=ravager,tag=!selectedclass]
clear @s[tag=!selectedclass]

give @s[tag=ravager,tag=!selectedclass] cooked_beef 64
give @s[tag=ravager,tag=!selectedclass] carrot_on_a_stick{CustomModelData:66,Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand", AttributeName:"generic.attack_damage", Name:"generic.attack_damage", Amount:12.0, Operation:0, UUID:[I; 1, 1, -1, -1]}] , display:{Name:'{"text":"Smash","color":"gold"}',Lore:['[{"text":"Destroy bricks in front of you!"}]']}} 1
give @s[tag=ravager,tag=!selectedclass] splash_potion{Potion:"minecraft:strong_healing"} 2
loot give @s[tag=ravager,tag=!selectedclass] loot dvz:classes/zombiepotion

effect give @s[tag=ravager,tag=!selectedclass] regeneration 1000000 0 true
effect give @s[tag=ravager,tag=!selectedclass] slowness 1000000 1 true
#effect give @s[tag=ravager,tag=!selectedclass] strength 1000000 3 true
effect give @s[tag=ravager,tag=!selectedclass] resistance 1000000 2 true
effect give @s[tag=ravager,tag=!selectedclass] health_boost 1000000 9 true

item replace entity @s[tag=ravager,tag=!selectedclass] armor.head with firework_star{CustomModelData:12,display:{Name:'{"text":"Ravager Skull","italic":"false"}'},SkullOwner:{Id:[I;-988784499,1538476442,-1335897902,1631763943],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2QyMGJmNTJlYzM5MGEwNzk5Mjk5MTg0ZmM2NzhiZjg0Y2Y3MzJiYjFiZDc4ZmQxYzRiNDQxODU4ZjAyMzVhOCJ9fX0="}]}},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1},{id:"protection",lvl:2}],AttributeModifiers:[{Slot:"head",AttributeName:"generic.armor", Name:"generic.armor", Amount:2.0, Operation:0, UUID:[I; -64585, 64804, 64804, 64804]}]}
item replace entity @s[tag=ravager,tag=!selectedclass] armor.chest with netherite_chestplate{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 6.0d, Operation: 0, UUID: [I; 64585, -64804, 64804, 64804]},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.7,Operation:0,UUID:[I;2084593555,-841987119,-1103256485,-1930059247]}]}
item replace entity @s[tag=ravager,tag=!selectedclass] armor.legs with netherite_leggings{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 5.0d, Operation: 0, UUID: [I; 64585, 64804, -64804, 64804]}]}
item replace entity @s[tag=ravager,tag=!selectedclass] armor.feet with netherite_boots{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 2.0d, Operation: 0, UUID: [I; 64585, 64804, 64804, -64804]}]}

tag @s add selectedclass
tag @e[tag=dvztimer,tag=!miniboss] add miniboss