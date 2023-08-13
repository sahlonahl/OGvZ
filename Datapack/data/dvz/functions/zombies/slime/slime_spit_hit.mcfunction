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

playsound minecraft:entity.slime.squish master @a ~ ~ ~ 4 0.1
execute as @a[tag=dwarves,distance=..2.5] at @s run damage @s 3 minecraft:out_of_world
execute as @a[tag=dwarves,distance=..2.5] at @s run effect give @s minecraft:slowness 3 2 true
kill @s
