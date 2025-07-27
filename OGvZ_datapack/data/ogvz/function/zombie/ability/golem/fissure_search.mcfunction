#> Description: Keeps moving the ray forward until it moves inside a new block.

# Teleport the ray forward.
execute at @s run tp @s ^ ^ ^0.1

# Return if there is no marker inside the block the ray is in.
execute at @s align xyz unless entity @e[type=minecraft:marker,tag=temp.fissure,distance=..0.1] run return 0

# Repeat the raycasting loop.
execute as @s at @s run function ogvz:zombie/ability/golem/fissure_search
