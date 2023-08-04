# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: snowman
# File Purpose: Spawn items for snowman class
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
execute if entity @s[tag=zombies,tag=!selectedclass] run tag @s add snowman
team join zMONSTER @s[tag=snowman,tag=!selectedclass]
clear @s[tag=!selectedclass]
give @s[tag=snowman,tag=!selectedclass] cooked_beef 64
give @s[tag=snowman,tag=!selectedclass] carrot_on_a_stick{CustomModelData:52,Unbreakable:1b,display:{Name:'{"text":"Snowball Barrage","color":"aqua"}',Lore:['[{"text":"Long-range snowball barrage!"}]','[{"text":"8 second cooldown.","color":"red"}]']}} 1
give @s[tag=snowman,tag=!selectedclass] carrot_on_a_stick{CustomModelData:58,Unbreakable:1b,display:{Name:'{"text":"Ice Shard","color":"aqua"}',Lore:['[{"text":"Freezes dwarves temporarily."}]','[{"text":"30 second cooldown.","color":"red"}]']}} 1
item replace entity @s[tag=snowman,tag=!selectedclass] armor.head with carved_pumpkin{Unbreakable: 1b, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=snowman,tag=!selectedclass] armor.chest with leather_chestplate{Unbreakable: 1b, display: {color: 9004839}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=snowman,tag=!selectedclass] armor.legs with leather_leggings{Unbreakable: 1b, display: {color: 16777215}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "binding_curse", lvl: 1}]} 1
item replace entity @s[tag=snowman,tag=!selectedclass] armor.feet with leather_boots{Unbreakable: 1b, display: {color: 15663103}, Enchantments: [{id: "blast_protection", lvl: 4}, {id: "frost_walker", lvl: 1}, {id: "binding_curse", lvl: 1}]} 1
tag @s add selectedclass

execute as @s[tag=snowman] if predicate dvz:natchance run loot give @s loot dvz:mob_natures