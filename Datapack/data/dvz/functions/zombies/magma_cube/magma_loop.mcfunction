# -------------------------------------------
# Called By: dvz:tick
# File Name: magma_loop
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

particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0 3
execute at @s unless block ~ ~ ~ #dvz:gothrough run function dvz:zombies/magma_cube/magma_grenade
execute at @s unless block ~ ~-1 ~ #dvz:gothrough run function dvz:zombies/magma_cube/magma_grenade
execute as @s positioned ~-0.5 ~0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0,tag=dwarves] run function dvz:zombies/magma_cube/magma_grenade