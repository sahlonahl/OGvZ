# -------------------------------------------
# Called By: tick.mcfunction
# File Name: slime_spit_hit
# File Purpose: controls bullet_hit
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.27
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 1
particle minecraft:dust 0 0 0 2.5 ~ ~ ~ 1 1 1 0 75
particle minecraft:end_rod ~ ~ ~ 1 1 1 0 75
execute as @a[tag=dwarves,distance=..3.5] at @s run xp add @s -25 levels
execute as @a[tag=dwarves,distance=..3.5] at @s run scoreboard players set @s evoker_curse 140
kill @s