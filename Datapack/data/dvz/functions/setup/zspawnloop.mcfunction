# -------------------------------------------
# Called By: dvz:setup/zspawnpoint
# File Name: zspawnloop
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

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
execute as @s at @s if block ~ ~ ~ #dvz:gothrough run particle minecraft:flame ~ ~ ~ 0 0 0 .01 10 force
execute as @s at @s if block ~ ~ ~ #dvz:gothrough run function dvz:setup/zspawnloop