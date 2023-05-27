# -------------------------------------------
# Called By: dvz:bosses/dragon/dragonbreath
# File Name: dragonbreath
# File Purpose: raycasting for the player dragon breath attack
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.08.19
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
execute as @s at @s if block ~ ~ ~ #dvz:gothrough run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 4
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @a[tag=playerboss,scores={DVZ.breath.cool=0},distance=..32] unless entity @p[tag=dwarves,distance=..0.5] run function dvz:bosses/dragon/dragonbreathloop