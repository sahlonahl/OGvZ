# -------------------------------------------
# Called By: dvz:rightclick\zombie
# File Name: zombie
# File Purpose: Spawn items for zombie class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.08.04
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
team join zMONSTER @s[tag=zombie,tag=!selectedclass]
clear @s[tag=!selectedclass]

give @s[tag=zombie,tag=!selectedclass] cooked_beef 64
give @s[tag=zombie,tag=!selectedclass] iron_sword{Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:2}]}
give @s[tag=zombie,tag=!selectedclass] iron_axe{Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:2}]}
give @s[tag=zombie,tag=!selectedclass] splash_potion{Potion:"minecraft:strong_healing"} 2
loot give @s[tag=zombie,tag=!selectedclass] loot dvz:classes/zombiepotion
loot give @s[tag=zombie,tag=!selectedclass] loot dvz:classes/zombietoys

item replace entity @s[tag=zombie,tag=!selectedclass] weapon.offhand with shield
#item replace entity @s[tag=zombie,tag=!selectedclass] armor.head with pumpkin{Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "head", AttributeName: "generic.armor", Name: "generic.armor", Amount: 2.0d, Operation: 0, UUID: [I; -64585, 64804, 64804, 64804]}]}
item replace entity @s[tag=zombie,tag=!selectedclass] armor.head with zombie_head{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "head", AttributeName: "generic.armor", Name: "generic.armor", Amount: 2.0d, Operation: 0, UUID: [I; -64585, 64804, 64804, 64804]}]}
item replace entity @s[tag=zombie,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 44975}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 6.0d, Operation: 0, UUID: [I; 64585, -64804, 64804, 64804]}]}
item replace entity @s[tag=zombie,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 4602533}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 5.0d, Operation: 0, UUID: [I; 64585, 64804, -64804, 64804]}]}
item replace entity @s[tag=zombie,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 4602533}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 2.0d, Operation: 0, UUID: [I; 64585, 64804, 64804, -64804]}]}

execute as @s[tag=zombie] if predicate dvz:natchance run loot give @s loot dvz:mob_natures