# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: beam
# File Purpose: Dwarven Guard beam raycasting
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments: Distance is 32 blocks from the Dwarven Guard
# -------------------------------------------

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
execute as @s at @s if block ~ ~ ~ #dvz:gothrough run particle minecraft:enchanted_hit ~ ~ ~ .2 .2 .2 0 20 force
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @a[tag=guardian,distance=..32] unless entity @p[tag=zombies,distance=..2] run function dvz:dwarves/heros/dwarvenguard/beamloop