#> Description: Raycasting loop for infest ability.

# Stops ray casting if ray is inside a solid block or is too far from the origin.
execute unless block ~ ~ ~ #ogvz:go_through run return 0
execute unless entity @e[type=minecraft:marker,tag=temp.ray_origin,distance=..2] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.001

# Repeat ray casting loop.
execute as @s at @s run function ogvz:zombie/ability/silverfish/infest_loop
