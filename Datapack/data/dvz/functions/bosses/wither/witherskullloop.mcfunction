# -------------------------------------------
# Called By: dvz:bosses/wither/witherskull
# File Name: witherskull
# File Purpose: raycasting for witherskull attack
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
execute as @s at @s if block ~ ~ ~ #dvz:gothrough run particle dust .2 .15 0 1 ~ ~ ~ .3 .3 .3 0.1 10 force
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @a[tag=playerboss,distance=..32] unless entity @p[tag=dwarves,distance=..1] run function dvz:bosses/wither/witherskullloop