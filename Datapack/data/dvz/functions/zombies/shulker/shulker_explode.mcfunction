# -------------------------------------------
# Called By: tick.mcfunction
# File Name: shulker_explode
# File Purpose: Explodes explosive pillar
# Created By: Galactic
# 
# Created On: 2023.07.08
# Last Modified On: 2023.07.08
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

particle minecraft:explosion ~ ~ ~ 1 1 1 0.1 25
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0.1 2
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.1
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.3 250
particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 100
playsound minecraft:entity.shulker_bullet.hit master @a ~ ~ ~ 2 0.1
execute as @a[tag=dwarves,distance=..5.5] at @s run damage @s 30 explosion
effect give @a[distance=..5.5] minecraft:levitation 1 14 true
kill @s