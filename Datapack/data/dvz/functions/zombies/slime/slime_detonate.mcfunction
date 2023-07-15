# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: slime_detonate
# File Purpose: Kills creeper and summons a creeper explosion
# Created By: Sahlonahl
# 
# Created On: 2023.06.27
# Last Modified On: 2023.06.27
# Last Modified By: Galactic
#
# Credit to:
#
# -------------------------------------------

execute as @s at @s run summon creeper ~ ~ ~ {Fuse:0,NoAI:1,Tags:["explode"]}
execute as @s at @s run particle cloud ^ ^1 ^ 1 0.25 1 0.5 50
playsound minecraft:block.slime_block.place master @a ~ ~ ~ 1 0.1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.1
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1 0.1
particle dust 0.412 1.000 0.471 3 ~ ~1 ~ 2.5 1 2.5 0.1 250
particle minecraft:sneeze ~ ~1 ~ 3 1 3 0.01 500
effect give @a[distance=..5,tag=dwarves] slowness 5 1 true
kill @s
kill @e[type=area_effect_cloud,distance=..2]