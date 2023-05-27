# -------------------------------------------
# Called By: dvz:zombies/phantom/steal
# File Name: stealloop
# File Purpose: Raycasting loop 
# Created By: Zaffre
# 
# Created On: 2022.08.17
# Last Modified On: 2022.08.17
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
execute as @s at @s run particle firework ~ ~ ~ 0 0 0 0.01 1 force
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @p[tag=phantom,scores={DVZ.steal.cool=0},distance=..20] unless entity @p[tag=dwarves,distance=..2] run function dvz:zombies/phantom/stealloop