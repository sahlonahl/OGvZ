#> Description: Raycasting loop for ocean's pearl buff.

# Stops ray casting if ray is inside a solid block, is too far from the origin or has hit a player.
execute unless block ~ ~ ~ #ogvz:go_through run return 0
execute unless entity @e[type=minecraft:marker,tag=temp.ray_origin,distance=..16] run return 0
execute if entity @a[tag=temp.hit] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

# Show particles at the ray.
execute if entity @a[tag=temp.target,distance=2..] run particle minecraft:dust_color_transition{from_color:[0.620,0.482,0.867],scale:1,to_color:[0.984,0.788,0.890]} ~ ~ ~ 0 0 0 0.01 1 force

# Checks if the ray is inside the player's hitbox. Because the smallest collision  check is a 1 * 1 * 1 cube, 2 hitboxes are used where the player's hitbox is exactly inside the intersection between the 2 hitboxes.
# Standing hitbox size: 0.6 * 1.8 * 0.6
# Sneaking hitbox size: 0.6 * 1.5 * 0.6
# Crawling/Swimming/Flying hitbox size: 0.6 * 0.6 * 0.6
execute as @a[tag=temp.target,distance=..1.9,tag=temp.big_hitbox] at @s positioned ~-0.3 ~ ~-0.3 if entity @e[type=minecraft:marker,tag=temp.ray,dy=0.8] at @s positioned ~-0.7 ~ ~-0.7 if entity @e[type=minecraft:marker,tag=temp.ray,dy=0.8] run tag @s add temp.hit
execute as @a[tag=temp.target,distance=..1.5,tag=temp.medium_hitbox] at @s positioned ~-0.3 ~ ~-0.3 if entity @e[type=minecraft:marker,tag=temp.ray,dy=0.5] at @s positioned ~-0.7 ~ ~-0.7 if entity @e[type=minecraft:marker,tag=temp.ray,dy=0.5] run tag @s add temp.hit
execute as @a[tag=temp.target,distance=..0.8,tag=temp.small_hitbox] at @s positioned ~-0.3 ~ ~-0.3 if entity @e[type=minecraft:marker,tag=temp.ray,dy=0.0] at @s positioned ~-0.7 ~-0.7 ~-0.7 if entity @e[type=minecraft:marker,tag=temp.ray,dy=0.0] run tag @s add temp.hit

# Repeat ray casting loop.
execute as @s at @s run function ogvz:dwarf/item/hero/dwarven_guard/oceans_pearl_buff_loop
