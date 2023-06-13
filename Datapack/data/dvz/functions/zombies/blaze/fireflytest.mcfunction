# -------------------------------------------
# Called By: dvz:tick
# File Name: fireflytest
# File Purpose: Teleports blaze, controls timer, and removes firefly early if needed
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.13
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s at @s if block ^ ^ ^2 #dvz:gothrough run tp @s ^ ^ ^0.8
execute as @s at @s if block ^ ^ ^2 #dvz:gothrough run particle minecraft:flame ~ ~1 ~ 0 0 0 0.01 4
execute as @s at @s if block ^ ^ ^2 #dvz:gothrough run damage @a[tag=dwarves,distance=..2] 3 on_fire by @s
execute as @s at @s if block ^ ^ ^2 #dvz:gothrough run playsound minecraft:entity.generic.extinguish_fire player @a ~ ~ ~ 0.5 2
execute as @s at @s unless block ^ ^ ^2 #dvz:gothrough run tag @s add fireflyremove
execute as @s at @s run scoreboard players add @s DVZ.ffly.airtime 1