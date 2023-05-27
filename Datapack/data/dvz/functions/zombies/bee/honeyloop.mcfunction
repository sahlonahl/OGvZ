# -------------------------------------------
# Called By: dvz:zombies/bee/honey
# File Name: honeyloop
# File Purpose: Raycasting loop
# Created By: Zaffre
# 
# Created On: 2022.06.30
# Last Modified On: 2022.08.24
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: To BEE or not to BEE, that is the question
# -------------------------------------------

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
execute as @s at @s run particle dripping_honey ~ ~ ~ 0 0 0 0.01 2 normal
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @p[tag=bee,scores={DVZ.honey.cool=0},distance=..45] unless entity @p[tag=!bee,distance=..2] run function dvz:zombies/bee/honeyloop