# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: spawn
# File Purpose: "Magma Cream" item that lets the dwarves spawn in
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

team join dDWARVES @s

tag @s remove builder
tag @s remove alchemist
tag @s remove baker
tag @s remove blacksmith
tag @s remove enchanter
tag @s remove tailor

tag @s remove dragon

tag @s remove zombies
tag @s remove zombie
tag @s remove skeleton
tag @s remove creeper
tag @s remove spider
tag @s remove wolf
tag @s remove ocelot
tag @s remove silverfish
tag @s remove pigman
tag @s remove pig1
tag @s remove pig2
tag @s remove pig3
tag @s remove blaze
tag @s remove enderman
tag @s remove ePortal

tag @s add nomana
#give @s[tag=!dwarves] carrot_on_a_stick{CustomModelData:1,Unbreakable:1b,display:{Name:'{"text":"Mark for mob","color":"red"}',Lore:['[{"text":"Become a monster when the boss arrives!"}]']}} 1
loot give @s[tag=!dwarves] loot dvz:dwarves
tag @s add dwarves
clear @s minecraft:carrot_on_a_stick{CustomModelData:13,Unbreakable:1b} 1
effect give @s instant_health 10 30 true
effect give @s saturation 10 30 true

execute as @s at @e[type=marker,tag=dSpawn,limit=1] positioned ~ ~3 ~ run tp @s ~ ~ ~ facing entity @e[type=marker,tag=zSpawn,limit=1]
# old tp commands have differences between tower shrine and non-tower shrine, which could be causing the issues
#execute as @s at @e[type=marker,tag=dSpawn,limit=1] positioned ~ ~3 ~ unless entity @e[tag=tower] run tp @s ~ ~ ~ facing entity @e[type=marker,tag=zSpawn,limit=1]
#execute as @s at @e[type=marker,tag=dSpawn,limit=1] positioned ~ ~ ~ if entity @e[tag=tower] run tp @s ~4.5 ~-20 ~ facing entity @e[type=marker,tag=zSpawn,limit=1]