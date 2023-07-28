# -------------------------------------------
# Called By: dvz:rightclick
# File Name: evoker
# File Purpose: Spawn items for evoker
# Created By: Zaffre
# 
# Created On: 2023.03.03
# Last Modified On: 2023.07.21
# Last Modified By: Wilkekids
#
# Credit to: MMMEEEEEEEEEEEEEEEE (Zaffre)
#
# Comments: The functions and disks that call this function have been disabled
# -------------------------------------------

tag @s[tag=!selectedclass] remove nopill
effect clear @s[tag=!selectedclass]
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add evoker
team join zMONSTER @s[tag=evoker,tag=!selectedclass]
clear @s[tag=!selectedclass]

give @s[tag=evoker,tag=!selectedclass] cooked_beef 64
#loot give @s[tag=evoker,tag=!selectedclass] loot dvz:classes/evokereggs
give @s[tag=evoker,tag=!selectedclass] carrot_on_a_stick{CustomModelData:79,Unbreakable:1b,display:{Name:'{"text":"Summoning Spell","color":"aqua"}',Lore:['[{"text":"Summons mobs and conjures spawn eggs."}]','[{"text":"X second cooldown!","color":"red"}]']}}
give @s[tag=evoker,tag=!selectedclass] carrot_on_a_stick{CustomModelData:80,Unbreakable:1b,display:{Name:'{"text":"Throwing Spell","color":"aqua"}',Lore:['[{"text":"Throws a spell that creates monsters on impact."}]','[{"text":"X second cooldown!","color":"red"}]']}}
loot give @s loot dvz:evoker_eggs

item replace entity @s[tag=evoker,tag=!selectedclass] armor.head with firework_star{CustomModelData:11,display:{Name:'{"text":"Evoker Head","italic":"false"}'},Unbreakable:1b,Enchantments:[{id: "protection", lvl: 1}, {id:"blast_protection",lvl:4},{id:"binding_curse",lvl:1}]}
item replace entity @s[tag=evoker,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 3355443}, Enchantments: [{id: "protection", lvl: 1}, {id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}
item replace entity @s[tag=evoker,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 3355443}, Enchantments: [{id: "protection", lvl: 1}, {id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]}



execute as @s[tag=evoker] if predicate dvz:natchance run loot give @s loot dvz:mob_natures