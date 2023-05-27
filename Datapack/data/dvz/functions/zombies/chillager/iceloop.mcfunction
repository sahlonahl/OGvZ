# -------------------------------------------
# Called By: dvz:zombies/chillager/ice
# File Name: iceloop
# File Purpose: Raycasting loop 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s at @s run tp @s ^ ^ ^0.5
execute as @s at @s if block ~ ~ ~ #dvz:gothrough run setblock ~ ~ ~ packed_ice
execute as @s at @s if block ~ ~ ~ packed_ice if entity @p[tag=chillager,scores={DVZ.icy.cool=0},distance=..8] run function dvz:zombies/chillager/iceloop