#> Description: Ray scanning loop for water wand.

# Stops ray casting if ray is inside a solid block or is too far from the origin.
execute unless block ~ ~ ~ #ogvz:go_through run return 0
execute unless entity @e[type=minecraft:marker,tag=temp.ray_origin,distance=..4.5] run return 0

# Spawns water particles.
execute if entity @e[type=minecraft:marker,tag=temp.ray_origin,distance=0.5..] run particle minecraft:bubble_pop ~ ~ ~ 0 0 0 0 1 normal

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

# Repeat ray casting loop.
execute as @s at @s run function ogvz:dwarf/item/water_wand_loop
