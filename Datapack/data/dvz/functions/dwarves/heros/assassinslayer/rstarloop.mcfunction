# -------------------------------------------
# Called By: dvz:dwarves/heros/assassinslayer/regrowthstar/rstar_crouch
#            dvz:dwarves/heros/assassinslayer/regrowthstar/rstar_not
# File Name: rstarloop
# File Purpose: Regrowth Star loop for raycasting
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments: Distance is 32 blocks away from the Assassin Slayer
# -------------------------------------------

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
execute as @s at @s if block ~ ~ ~ #dvz:gothrough run particle minecraft:nautilus ~ ~ ~ .1 .1 .1 .3 100 force
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @a[tag=assassinslayer,distance=..32] unless entity @p[tag=dwarves,tag=!hero,distance=..2] run function dvz:dwarves/heros/assassinslayer/rstarloop