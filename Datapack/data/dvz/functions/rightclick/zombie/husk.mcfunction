# -------------------------------------------
# Called By: dvz:rightclick\zombie
# File Name: husk
# File Purpose: Spawn items for husk variant-zombie class
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
team join zMONSTER @s[tag=husk,tag=!selectedclass]
clear @s[tag=!selectedclass]

give @s[tag=husk,tag=!selectedclass] cooked_beef 64
give @s[tag=husk,tag=!selectedclass] stone_sword{Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:3}]}
give @s[tag=husk,tag=!selectedclass] stone_axe{Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:3}]}
give @s[tag=husk,tag=!selectedclass] splash_potion{Potion:"minecraft:strong_healing"} 1
loot give @s[tag=husk,tag=!selectedclass] loot dvz:classes/huskpotion
loot give @s[tag=husk,tag=!selectedclass] loot dvz:classes/zombietoys

item replace entity @s[tag=husk,tag=!selectedclass] weapon.offhand with shield
#item replace entity @s[tag=husk,tag=!selectedclass] armor.head with pumpkin{display:{Name:'{"text":"Husk Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1},{id:"protection",lvl:2}],AttributeModifiers:[{Slot:"head",AttributeName:"generic.armor", Name:"generic.armor", Amount:2.0, Operation:0, UUID:[I; -64585, 64804, 64804, 64804]}]}
item replace entity @s[tag=husk,tag=!selectedclass] armor.head with player_head{SkullOwner:"MHF_Husk",display:{Name:'{"text":"Husk Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1},{id:"protection",lvl:2}],AttributeModifiers:[{Slot:"head",AttributeName:"generic.armor", Name:"generic.armor", Amount:2.0, Operation:0, UUID:[I; -64585, 64804, 64804, 64804]}]}
item replace entity @s[tag=husk,tag=!selectedclass] armor.chest with leather_chestplate{display: {color: 13875325}, Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 6.0d, Operation: 0, UUID: [I; 64585, -64804, 64804, 64804]}]}
item replace entity @s[tag=husk,tag=!selectedclass] armor.legs with leather_leggings{display: {color: 3353113}, Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 5.0d, Operation: 0, UUID: [I; 64585, 64804, -64804, 64804]}]}
item replace entity @s[tag=husk,tag=!selectedclass] armor.feet with leather_boots{display: {color: 3353113}, Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "protection", lvl: 2}], AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 2.0d, Operation: 0, UUID: [I; 64585, 64804, 64804, -64804]}]}

execute as @s[tag=husk] if predicate dvz:natchance run loot give @s loot dvz:mob_natures