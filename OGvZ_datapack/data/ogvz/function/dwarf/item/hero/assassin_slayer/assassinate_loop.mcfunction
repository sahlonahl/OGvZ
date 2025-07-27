#> Description: Raycasting for assassin slayer's assassinate.

# Stops ray casting if ray is inside a solid block, is too far from the origin or has hit a player.
execute unless block ~ ~ ~ #ogvz:go_through run return 0
execute unless entity @e[type=minecraft:marker,tag=temp.ray_origin,distance=..2.5] run return 0
execute if entity @a[tag=temp.hit] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

# When ray gets close to a player, it determines their hitbox size depending on their eye height.
# Standing player eye height: 1.62
# Sneaking player eye height: 1.27
# Crawling/Swimming/Flying player eye height: 0.4
execute as @a[tag=!temp.ray_caster,distance=..1.9,tag=!temp.big_hitbox,tag=!temp.medium_hitbox,tag=!temp.small_hitbox] at @s anchored eyes positioned ^ ^ ^ if entity @s[distance=1.45..] run tag @s add temp.big_hitbox
execute as @a[tag=!temp.ray_caster,distance=..1.5,tag=!temp.big_hitbox,tag=!temp.medium_hitbox,tag=!temp.small_hitbox] at @s anchored eyes positioned ^ ^ ^ if entity @s[distance=0.84..] run tag @s add temp.medium_hitbox
execute as @a[tag=!temp.ray_caster,distance=..0.8,tag=!temp.big_hitbox,tag=!temp.medium_hitbox,tag=!temp.small_hitbox] run tag @s add temp.small_hitbox

# Checks if the ray is inside the player's hitbox. Because the smallest collision  check is a 1 * 1 * 1 cube, 2 hitboxes are used where the player's hitbox is exactly inside the intersection between the 2 hitboxes.
# Standing hitbox size: 0.6 * 1.8 * 0.6
# Sneaking hitbox size: 0.6 * 1.5 * 0.6
# Crawling/Swimming/Flying hitbox size: 0.6 * 0.6 * 0.6
execute as @a[tag=!temp.ray_caster,distance=..1.9,tag=temp.big_hitbox] at @s positioned ~-0.3 ~ ~-0.3 if entity @e[type=minecraft:marker,tag=temp.ray,dy=0.8] at @s positioned ~-0.7 ~ ~-0.7 if entity @e[type=minecraft:marker,tag=temp.ray,dy=0.8] run tag @s add temp.hit
execute as @a[tag=!temp.ray_caster,distance=..1.5,tag=temp.medium_hitbox] at @s positioned ~-0.3 ~ ~-0.3 if entity @e[type=minecraft:marker,tag=temp.ray,dy=0.5] at @s positioned ~-0.7 ~ ~-0.7 if entity @e[type=minecraft:marker,tag=temp.ray,dy=0.5] run tag @s add temp.hit
execute as @a[tag=!temp.ray_caster,distance=..0.8,tag=temp.small_hitbox] at @s positioned ~-0.3 ~ ~-0.3 if entity @e[type=minecraft:marker,tag=temp.ray,dy=0.0] at @s positioned ~-0.7 ~-0.7 ~-0.7 if entity @e[type=minecraft:marker,tag=temp.ray,dy=0.0] run tag @s add temp.hit

# Repeat ray casting loop.
execute as @s at @s run function ogvz:dwarf/item/hero/assassin_slayer/assassinate_loop
