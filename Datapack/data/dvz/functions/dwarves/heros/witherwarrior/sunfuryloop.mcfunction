# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: sunfuryloop
# File Purpose: raycasting loop for the Sunfury item.
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments: Distance is 32 blocks from the Wither Warrior
# -------------------------------------------

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
execute as @s at @s if block ~ ~ ~ #dvz:gothrough run particle minecraft:ash ~ ~ ~ 0.2 0.1 0.2 0 100 force
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @a[tag=wither,distance=..32] unless entity @p[tag=zombies,distance=..2] run function dvz:dwarves/heros/witherwarrior/sunfuryloop