# -------------------------------------------
# Called By: dvz:rightclick\skeleton
# File Name: skeleton
# File Purpose: Spawn items for skeleton class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.03.05
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
team join zMONSTER @s[tag=skeleton,tag=!selectedclass]
clear @s[tag=!selectedclass]

give @s[tag=skeleton,tag=!selectedclass] cooked_beef 64
loot give @s[tag=skeleton,tag=!selectedclass] loot dvz:classes/skeletonbow
loot give @s[tag=skeleton,tag=!selectedclass] loot dvz:classes/skeletonhorse
give @s[tag=skeleton,tag=!selectedclass] vine 24
give @s[tag=skeleton,tag=!selectedclass] arrow 128

#item replace entity @s[tag=skeleton,tag=!selectedclass] armor.head with jack_o_lantern{Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}
item replace entity @s[tag=skeleton,tag=!selectedclass] armor.head with skeleton_skull{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}
item replace entity @s[tag=skeleton,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 11053475}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}
item replace entity @s[tag=skeleton,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 11053475}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}
item replace entity @s[tag=skeleton,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 11053475}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}

execute as @s[tag=skeleton] if predicate dvz:natchance run loot give @s loot dvz:mob_natures