# -------------------------------------------
# Called By: dvz:tick
# File Name: evoker_bolt_hit
# File Purpose: controls bullet_hit
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.07.01
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
execute as @a[tag=dwarves,distance=..3.5] at @s run damage @s 7 magic by @a[limit=1,sort=nearest,tag=evoker]
execute as @a[tag=dwarves,distance=..3.5] at @s run scoreboard players set @s evoker_curse 140
execute as @a[tag=dwarves,distance=..3.5] at @s run effect give @s slowness 7 0 true
execute as @a[tag=dwarves,distance=..3.5] at @s run effect give @s weakness 7 0 true
execute as @a[tag=dwarves,distance=..3.5] at @s run effect give @s mining_fatigue 7 0 true
execute as @a[tag=dwarves,distance=..3.5] at @s run attribute @s minecraft:generic.armor modifier add 234559fa-29af-4c00-91dd-dad35afbb73d evoker_curse -4 add
kill @s