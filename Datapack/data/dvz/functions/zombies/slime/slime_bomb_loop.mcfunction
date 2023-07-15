# -------------------------------------------
# Called By: dvz:tick
# File Name: slime_bomb_loop
# File Purpose: controls grenade
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

particle dust 0.412 1.000 0.471 2 ~ ~1 ~ 0.75 0.75 0.75 0.1 8
particle minecraft:sneeze ~ ~1 ~ 0.75 0.75 0.75 0.1 8
execute at @s unless block ~ ~ ~ #dvz:gothrough run function dvz:zombies/slime/slime_bomb_explode
execute at @s unless block ~ ~-1 ~ #dvz:gothrough run function dvz:zombies/slime/slime_bomb_explode
execute as @s positioned ~-0.5 ~0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0,tag=dwarves] run function dvz:zombies/slime/slime_bomb_explode