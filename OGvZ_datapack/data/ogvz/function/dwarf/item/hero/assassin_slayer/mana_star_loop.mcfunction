#> Description: Raycasting for assassin slayer's mana star.

# Stops ray casting if ray is inside a solid block, is too far from the origin or has hit a player.
execute unless block ~ ~ ~ #ogvz:go_through run return 0
execute unless entity @e[type=minecraft:marker,tag=temp.ray_origin,distance=..16] run return 0
execute if entity @a[tag=temp.hit] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

# Show particles at the ray's current location.
execute if entity @e[type=minecraft:marker,tag=temp.ray_origin,distance=2..] run particle minecraft:composter ~ ~ ~ 0 0 0 0 1 force

# When ray gets close to a player, it determines their hitbox size depending on their eye height.
# Standing player eye height: 1.62
# Sneaking player eye height: 1.27
# Crawling/Swimming/Flying player eye height: 0.4
execute as @a[tag=!temp.ray_caster,distance=..2.4,tag=!temp.big_hitbox,tag=!temp.medium_hitbox,tag=!temp.small_hitbox] at @s anchored eyes positioned ^ ^ ^ if entity @s[distance=1.45..] run tag @s add temp.big_hitbox
execute as @a[tag=!temp.ray_caster,distance=..2.1,tag=!temp.big_hitbox,tag=!temp.medium_hitbox,tag=!temp.small_hitbox] at @s anchored eyes positioned ^ ^ ^ if entity @s[distance=0.84..] run tag @s add temp.medium_hitbox
execute as @a[tag=!temp.ray_caster,distance=..1.4,tag=!temp.big_hitbox,tag=!temp.medium_hitbox,tag=!temp.small_hitbox] run tag @s add temp.small_hitbox

# Checks if the ray is inside the player's hitbox. The player's hitbox is inflated by 0.25 in every direction, which is the same as if the ray had a hitbox size of 0.5 * 0.5 * 0.5 (same as arrow).
# Standing hitbox size: 1.1 * 2.3 * 1.1
# Sneaking hitbox size: 1.1 * 2.0 * 1.1
# Crawling/Swimming/Flying hitbox size: 1.1 * 1.1 * 1.1
execute as @a[tag=!temp.ray_caster,distance=..2.4,tag=temp.big_hitbox] at @s positioned ~-0.25 ~-0.25 ~-0.25 if entity @e[type=minecraft:marker,tag=temp.ray,dx=0.1,dy=1.3,dz=0.1] run tag @s add temp.hit
execute as @a[tag=!temp.ray_caster,distance=..2.1,tag=temp.medium_hitbox] at @s positioned ~-0.25 ~-0.25 ~-0.25 if entity @e[type=minecraft:marker,tag=temp.ray,dx=0.1,dy=1.0,dz=0.1] run tag @s add temp.hit
execute as @a[tag=!temp.ray_caster,distance=..1.4,tag=temp.small_hitbox] at @s positioned ~-0.25 ~-0.25 ~-0.25 if entity @e[type=minecraft:marker,tag=temp.ray,dx=0.1,dy=0.1,dz=0.1] run tag @s add temp.hit

# Repeat ray casting loop.
execute as @s at @s run function ogvz:dwarf/item/hero/assassin_slayer/mana_star_loop
