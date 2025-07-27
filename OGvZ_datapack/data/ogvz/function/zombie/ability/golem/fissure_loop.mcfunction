#> Description: Raycasting loop for golem's fissure.

# Return if the ray reached it's maximum range.
execute unless entity @n[tag=temp.ray_origin,distance=..11] run return 0

# Go up 1 or 2 blocks if the ray marker is inside a block.
execute at @s unless block ~ ~ ~ #ogvz:go_through run tp @s ~ ~1 ~
execute at @s unless block ~ ~ ~ #ogvz:go_through run tp @s ~ ~1 ~

# Go down 1 or 2 blocks if there is no solid blocks below the ray marker.
execute at @s if block ~ ~-1 ~ #ogvz:go_through run tp @s ~ ~-1 ~
execute at @s if block ~ ~-1 ~ #ogvz:go_through run tp @s ~ ~-1 ~

# Return if ray marker is still inside a block or there is no solid block below it.
execute at @s unless block ~ ~ ~ #ogvz:go_through run return 0
execute at @s if block ~ ~-1 ~ #ogvz:go_through run return 0

# Raise the ground up 3 blocks if there are no blocks in the way.
execute at @s positioned ~ ~0 ~ if block ~ ~ ~ #ogvz:go_through run function ogvz:zombie/ability/golem/fissure_raise
execute at @s positioned ~ ~1 ~ if block ~ ~ ~ #ogvz:go_through run function ogvz:zombie/ability/golem/fissure_raise
execute at @s positioned ~ ~2 ~ if block ~ ~ ~ #ogvz:go_through run function ogvz:zombie/ability/golem/fissure_raise

# Show particles.
execute at @s run particle minecraft:block{block_state:"minecraft:stone"} ~ ~1 ~ 0.25 1 0.25 0 20 normal

# Create temporary marker inside the block.
execute at @s align xyz summon minecraft:marker run tag @s add temp.fissure

# Raycast the ray forward.
execute as @s at @s run function ogvz:zombie/ability/golem/fissure_search

# Repeat the raycasting loop.
execute as @s at @s run function ogvz:zombie/ability/golem/fissure_loop
