#> Description: Ray casting loop for creating an ender portal above.

# Stops ray casting if ray is inside a solid block, is too far from the origin or has hit a player.
execute unless block ~ ~ ~ #ogvz:go_through run return 0
execute unless entity @n[tag=temp.ray_origin,distance=..32] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^1

# Repeat ray casting loop.
execute as @s at @s run function ogvz:zombie/ability/enderman/create_portal_above_loop
