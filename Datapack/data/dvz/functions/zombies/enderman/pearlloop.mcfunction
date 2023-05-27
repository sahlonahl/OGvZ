# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: pearlloop
# File Purpose: Raycasting loop
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.02.06
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
#execute as @s at @s run particle minecraft:portal ~ ~ ~ 0 0 0 0.05 10 force
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @p[tag=enderman,scores={DVZ.pearl.cool=0},distance=..32] run function dvz:zombies/enderman/pearlloop