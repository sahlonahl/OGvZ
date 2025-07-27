#> Description: Raycasting for spider's web ability.

# Stops ray casting if ray is inside a solid block, is too far from the origin or has hit a player.
execute unless block ~ ~ ~ #ogvz:go_through run return 0
execute unless entity @n[tag=temp.ray_origin,distance=..16] run return 0
execute if entity @a[tag=temp.hit] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

# Show particles at the ray.
execute if entity @p[tag=temp.ray_origin,distance=2..] run particle minecraft:block_crumble{block_state:"minecraft:cobweb"} ~ ~ ~ 0 0 0 0 1

# When ray gets close to a player, it determines their hitbox size depending on their eye height.
# Standing player eye height: 1.62
# Sneaking player eye height: 1.27
# Crawling/Swimming/Flying player eye height: 0.4
execute as @a[distance=..2.5,tag=!temp.ray_origin,tag=!temp.big_hitbox,tag=!temp.medium_hitbox,tag=!temp.small_hitbox] at @s anchored eyes positioned ^ ^ ^ if entity @s[distance=1.45..] run tag @s add temp.big_hitbox
execute as @a[distance=..2.5,tag=!temp.ray_origin,tag=!temp.big_hitbox,tag=!temp.medium_hitbox,tag=!temp.small_hitbox] at @s anchored eyes positioned ^ ^ ^ if entity @s[distance=0.84..] run tag @s add temp.medium_hitbox
execute as @a[distance=..2.5,tag=!temp.ray_origin,tag=!temp.big_hitbox,tag=!temp.medium_hitbox,tag=!temp.small_hitbox] run tag @s add temp.small_hitbox

# Checks if the ray is inside the player's inflated hitbox.
# Standing hitbox size: 0.6 * 1.8 * 0.6 -> 1.1 * 2.3 * 1.1
# Sneaking hitbox size: 0.6 * 1.5 * 0.6 -> 1.1 * 2.0 * 1.1
# Crawling/Swimming/Flying hitbox size: 0.6 * 0.6 * 0.6 -> 1.1 * 1.1 * 1.1
execute as @a[distance=..2.5,tag=!temp.ray_origin,tag=!temp.hit,tag=temp.big_hitbox] at @s positioned ~-0.55 ~-0.25 ~-0.55 if entity @e[type=minecraft:marker,tag=temp.ray,dx=0.1,dy=1.3,dz=0.1] run tag @s add temp.hit
execute as @a[distance=..2.5,tag=!temp.ray_origin,tag=!temp.hit,tag=temp.medium_hitbox] at @s positioned ~-0.55 ~-0.25 ~-0.55 if entity @e[type=minecraft:marker,tag=temp.ray,dx=0.1,dy=1.0,dz=0.1] run tag @s add temp.hit
execute as @a[distance=..2.5,tag=!temp.ray_origin,tag=!temp.hit,tag=temp.small_hitbox] at @s positioned ~-0.55 ~-0.25 ~-0.55 if entity @e[type=minecraft:marker,tag=temp.ray,dx=0.1,dy=0.1,dz=0.1] run tag @s add temp.hit

# Repeat ray casting loop.
execute as @s at @s run function ogvz:zombie/ability/spider/web_loop
