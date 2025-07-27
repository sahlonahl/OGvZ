#> Description: Raycasting loop for eggsplosive egg hit check.

# Stops ray casting if ray is inside a solid block or has reached the area effect cloud.
execute unless block ~ ~ ~ #ogvz:go_through run return 0
execute if entity @e[type=minecraft:area_effect_cloud,tag=temp.center,distance=..0.1] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

# Repeat ray casting loop.
execute as @s at @s run function ogvz:zombie/ability/chicken_nugget/eggsplosive_egg_loop
