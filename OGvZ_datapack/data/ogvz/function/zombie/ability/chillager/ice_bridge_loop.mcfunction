#> Description: Ray casting loop for placing down ice blocks.

# Stops ray casting if ray is inside a solid block, is too far from the origin or has hit a player.
execute unless block ~ ~ ~ #ogvz:go_through unless block ~ ~ ~ minecraft:packed_ice run return 0
execute unless entity @n[tag=temp.ray_origin,distance=..8] run return 0

# Show snowflake particles.
particle minecraft:snowflake ~ ~ ~ 0.5 0.5 0.5 0 3 normal

# Place an ice marker on the center of the block the ray is currently inside if there isn't one yet.
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=minecraft:marker,tag=temp.ice,distance=..0.1] summon minecraft:marker run tag @s add temp.ice

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

# Repeat ray casting loop.
execute as @s at @s run function ogvz:zombie/ability/chillager/ice_bridge_loop
