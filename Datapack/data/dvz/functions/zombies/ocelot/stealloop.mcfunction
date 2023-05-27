# -------------------------------------------
# Called By: dvz:zombies/ocelot/steal
# File Name: stealloop
# File Purpose: Raycasting loop 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.06.30
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
execute as @s at @s run particle firework ~ ~ ~ 0 0 0 0.01 1 force
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @p[tag=ocelot,scores={DVZ.steal.cool=0},distance=..20] unless entity @p[tag=dwarves,distance=..2] run function dvz:zombies/ocelot/stealloop