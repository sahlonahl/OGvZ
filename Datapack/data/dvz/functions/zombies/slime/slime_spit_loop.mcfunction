# -------------------------------------------
# Called By: dvz:tick
# File Name: slime_spit_loop
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

tp @s ^ ^ ^1
scoreboard players add @s bullet_age 1
particle dust 0.412 1.000 0.471 2 ~ ~1 ~ 0.25 0.25 0.25 0.1 3
particle minecraft:sneeze ~ ~1 ~ 0.25 0.25 0.25 0.1 3
execute as @s at @s positioned ~ ~1 ~ unless block ^ ^ ^ #dvz:gothrough run function dvz:zombies/slime/slime_spit_hit
execute as @s at @s positioned ~ ~1 ~ unless block ^ ^1 ^ #dvz:gothrough run function dvz:zombies/slime/slime_spit_hit
execute as @s at @s positioned ~-0.5 ~0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0,tag=dwarves] run function dvz:zombies/slime/slime_spit_hit
execute as @s at @s positioned ~ ~1 ~ if entity @s[scores={bullet_age=24..}] run function dvz:zombies/slime/slime_spit_hit