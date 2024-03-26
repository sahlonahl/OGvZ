# -------------------------------------------
# Called By: dvz:rightclick\skeleton
# File Name: witherskeleton
# File Purpose: Spawn items for wither_skeleton variant-skeleton class
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
team join zWITHER_SKELETON @s[tag=witherskeleton,tag=!selectedclass]
clear @s[tag=!selectedclass]

give @s[tag=witherskeleton,tag=!selectedclass] cooked_beef 64
give @s[tag=witherskeleton,tag=!selectedclass] bow{Unbreakable:1b,Enchantments:[{id:"infinity",lvl:1},{id:"power",lvl:3}]} 1
give @s[tag=witherskeleton,tag=!selectedclass] stone_sword{Unbreakable:1b}
give @s[tag=witherskeleton,tag=!selectedclass] vine 24
give @s[tag=witherskeleton,tag=!selectedclass] splash_potion{CustomPotionEffects:[{Id:20b,Duration:200,Ambient:1b}],CustomPotionColor:6041600,display:{Name:'[{"text":"Splash Potion of Withering","italic":false}]'}} 2
give @s[tag=witherskeleton,tag=!selectedclass] tipped_arrow{CustomPotionColor:6041600,CustomPotionEffects:[{Id:20b,Duration:200,Ambient:1b}],display:{Name:'[{"text":"Arrow of Withering","italic":false}]'}} 16
give @s[tag=witherskeleton,tag=!selectedclass] arrow 1
loot give @s[tag=witherskeleton,tag=!selectedclass] loot dvz:classes/skeletonhorse

#item replace entity @s[tag=witherskeleton,tag=!selectedclass] armor.head with jack_o_lantern{Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}
item replace entity @s[tag=witherskeleton,tag=!selectedclass] armor.head with wither_skeleton_skull{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}
item replace entity @s[tag=witherskeleton,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 3684408}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}
item replace entity @s[tag=witherskeleton,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 3684408}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}
item replace entity @s[tag=witherskeleton,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 3684408}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}

execute as @s[tag=witherskeleton] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
execute as @a[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Nature:1b}}]}] run function dvz:zombies/natures