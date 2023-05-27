# -------------------------------------------
# Called By: dvz:tick
# File Name: fireflytest
# File Purpose: Teleports chicken, controls timer, and removes firefly early if needed
# Created By: Zaffre
# 
# Created On: 2022.04.19
# Last Modified On: 2023.03.14
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s at @s if block ^ ^ ^2 #dvz:gothrough run tp @s ^ ^ ^0.8
execute as @s at @s if block ^ ^ ^2 #dvz:gothrough run particle minecraft:cloud ~ ~3 ~ 0 0 0 0.01 2
#execute as @s at @s if block ^ ^ ^2 #dvz:gothrough run playsound minecraft:entity.bat.takeoff player @a ~ ~ ~ 0.2 2
execute as @s at @s if block ^ ^ ^2 #dvz:gothrough run effect give @s levitation 1
execute as @s at @s if block ^ ^ ^2 #dvz:gothrough run effect give @s slow_falling 1
execute as @s at @s unless block ^ ^ ^2 #dvz:gothrough run tag @s add flyremove
execute as @s at @s run scoreboard players add @s DVZ.fly.airtime 1