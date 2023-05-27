# -------------------------------------------
# Called By: dvz:zombies/zlguardian/beam
# File Name: beamloop
# File Purpose: Raycasting loop
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.10.15
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
execute as @s at @s if block ~ ~ ~ #dvz:gothrough run particle dust_color_transition 0.000 1.000 0.600 2 0.400 0.000 0.600 ~ ~ ~ 0.05 0.05 0.05 0.1 10 normal
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @a[tag=zlguardian,distance=..32] unless entity @p[tag=dwarves,distance=..2] run function dvz:zombies/zlguardian/beamloop