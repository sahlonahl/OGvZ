# -------------------------------------------
# Called By: dvz:tick
# File Name: fireflytest
# File Purpose: Teleports blaze, controls timer, and removes firefly early if needed
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.24
# Last Modified By: Galactic
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s at @s if entity @s[tag=!vex] if block ^ ^ ^2 #dvz:gothrough run tp @s ^ ^ ^0.8
execute as @s at @s if entity @s[tag=!vex] if block ^ ^ ^2 #dvz:gothrough run particle minecraft:flame ~ ~1 ~ 0 0 0 0.01 4
execute as @s at @s if entity @s[tag=!vex] if block ^ ^ ^2 #dvz:gothrough run damage @p[tag=dwarves,distance=..2] 6 minecraft:on_fire by @s from @s
execute as @s at @s if entity @s[tag=!vex] if block ^ ^ ^2 #dvz:gothrough run playsound minecraft:entity.generic.extinguish_fire player @a ~ ~ ~ 0.5 2
execute as @s at @s if entity @s[tag=!vex] unless block ^ ^ ^2 #dvz:gothrough run tag @s add fireflyremove
execute as @s at @s if entity @s[tag=vex] run gamemode adventure @s
execute as @s at @s if entity @s[tag=vex] run effect give @s resistance 1 4 true
execute as @s at @s if entity @s[tag=vex] run tp @s ^ ^ ^0.8
execute as @s at @s if entity @s[tag=vex] run effect give @a[tag=dwarves,distance=..2] instant_damage
execute as @s at @s if entity @s[tag=vex] run playsound minecraft:entity.vex.ambient player @a ~ ~ ~ 0.5 2
execute as @s at @s if entity @s[tag=vex] run effect give @s glowing 3 0 true
execute as @s at @s run scoreboard players add @s DVZ.ffly.airtime 1