# -------------------------------------------
# Called By: dvz:zombies/spider/web
# File Name: web
# File Purpose: Raycasting loop 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments: distance is 15 blocks or a dwarf within 2 blocks, whichever is first
# -------------------------------------------

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
execute as @s at @s if block ~ ~ ~ #dvz:gothrough run particle minecraft:block cobweb ~ ~ ~ 0 0 0 1 1 force
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @p[tag=spider,scores={DVZ.web.cool=0},distance=..15] unless entity @a[tag=dwarves,distance=..2] run function dvz:zombies/spider/webloop