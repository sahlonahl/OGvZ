# -------------------------------------------
# Called By: dvz:rightclick\skeleton
# File Name: zlguardian
# File Purpose: Spawn items for guardian variant-skeleton class
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2024.05.03
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:"zl" in "zlguardian" stand for "zombie little" as opposed to "boss elder"
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
tag @s[tag=!selectedclass] add zlguardian
team join zGUARDIAN @s[tag=zlguardian,tag=!selectedclass]
clear @s[tag=!selectedclass]
effect give @s[tag=zlguardian,tag=!selectedclass] conduit_power 1000000 0

give @s[tag=zlguardian,tag=!selectedclass] cooked_beef 64
give @s[tag=zlguardian,tag=!selectedclass] carrot_on_a_stick{CustomModelData:51,Unbreakable:1b,display:{Name:'{"text":"Beam","italic":false,"color":"red"}'}}
give @s[tag=zlguardian,tag=!selectedclass] bow 1
give @s[tag=zlguardian,tag=!selectedclass] vine 24
give @s[tag=zlguardian,tag=!selectedclass] arrow 16


item replace entity @s[tag=zlguardian,tag=!selectedclass] armor.head with firework_star{CustomModelData:9,display:{Name:'{"text":"Guardian Head","italic":false}'},Unbreakable:1b,Enchantments:[{id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1}]}
item replace entity @s[tag=zlguardian,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 5287080}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "thorns", lvl: 2}]}
item replace entity @s[tag=zlguardian,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 5287080}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}
item replace entity @s[tag=zlguardian,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 15759144}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}, {id: "depth_strider", lvl: 3}]}

execute as @s[tag=zlguardian] if predicate dvz:natchance run loot give @s loot dvz:mob_natures
execute as @a[tag=zombies,tag=!natured,nbt={Inventory:[{tag:{Nature:1b}}]}] run function dvz:zombies/natures