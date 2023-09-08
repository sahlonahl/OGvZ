# -------------------------------------------
# Called By: dvz:rightclick\skeleton
# File Name: pillager
# File Purpose: Spawn items for pillager variant-skeleton class
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

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
team join zMONSTER @s[tag=pillager,tag=!selectedclass]
clear @s[tag=!selectedclass]

give @s[tag=pillager,tag=!selectedclass] cooked_beef 64
loot give @s[tag=pillager,tag=!selectedclass] loot dvz:classes/pillagerbow
loot give @s[tag=pillager,tag=!selectedclass] loot dvz:classes/skeletonhorse
give @s[tag=pillager,tag=!selectedclass] vine 24
give @s[tag=pillager,tag=!selectedclass] arrow 128

#item replace entity @s[tag=pillager,tag=!selectedclass] armor.head with jack_o_lantern{display:{Name:'{"text":"Pillager Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1}]}
item replace entity @s[tag=pillager,tag=!selectedclass] armor.head with firework_star{CustomModelData:11,display:{Name:'{"text":"Pillager Head","italic":false}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1}]}
item replace entity @s[tag=pillager,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 4924973}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}
item replace entity @s[tag=pillager,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 1976874}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}
item replace entity @s[tag=pillager,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 6239777}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}

execute as @s[tag=pillager] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
execute as @a[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Nature:1b}}]}] run function dvz:zombies/natures