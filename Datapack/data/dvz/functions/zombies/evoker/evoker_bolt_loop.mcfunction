# -------------------------------------------
# Called By: dvz:tick
# File Name: evoker_bolt_loop
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

tp @s ^ ^ ^1.25
scoreboard players add @s bullet_age 1
particle minecraft:dust 0 0 0 2.5 ~ ~1 ~ 0.15 0.15 0.15 0 4
particle minecraft:end_rod ~ ~1 ~ 0.15 0.15 0.15 0 4
execute as @s at @s positioned ~ ~1 ~ unless block ^ ^ ^ #dvz:gothrough run function dvz:zombies/evoker/evoker_bolt_hit
execute as @s at @s positioned ~ ~1 ~ unless block ^ ^1 ^ #dvz:gothrough run function dvz:zombies/evoker/evoker_bolt_hit
execute as @s at @s positioned ~-0.5 ~0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0,tag=dwarves] run function dvz:zombies/evoker/evoker_bolt_hit
execute as @s at @s positioned ~ ~1 ~ if entity @s[scores={bullet_age=10..}] run function dvz:zombies/evoker/evoker_bolt_hit