# -------------------------------------------
# Called By: dvz:zombies/snowman/iceshard
# File Name: iceshardloop
# File Purpose: Raycasting loop
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments: Distance is 32 blocks or the a dwarf within 2 blocks, whichever is first.
# -------------------------------------------

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
execute as @s at @s run particle spit ~ ~ ~ .2 .1 .2 0 10 force
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @a[tag=snowman,scores={DVZ.shard.cool=0},distance=..32] unless entity @p[tag=dwarves,distance=..2] run function dvz:zombies/snowman/iceshardloop