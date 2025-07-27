#> Description: Raycasting for dwarven guard's elder guardian eye for when they are inside water.

# Stops ray casting if ray is inside a solid block or is too far from the origin.
execute unless block ~ ~ ~ #ogvz:go_through run return 0
execute unless entity @a[tag=temp.ray_origin,distance=..36] run return 0

# Teleports the ray slightly forward.
tp @s ^ ^ ^0.1

# Show particles at the ray.
execute if entity @p[tag=temp.ray_origin,distance=2..] run particle minecraft:dust_color_transition{from_color:[0.0f,1.0f,0.6f],scale:2.0f,to_color:[0.4f,0.0f,0.6f]} ~ ~ ~ 0.05 0.05 0.05 0.1 3 force

# Spiraling particles.
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=0} ] positioned ^00.00 ^00.25 ^ run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=1} ] positioned ^-0.13 ^00.22 ^ run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=2} ] positioned ^-0.22 ^00.13 ^ run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=3} ] positioned ^-0.25 ^00.00 ^ run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=4} ] positioned ^-0.22 ^-0.13 ^ run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=5} ] positioned ^-0.13 ^-0.22 ^ run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=6} ] positioned ^00.00 ^-0.25 ^ run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=7} ] positioned ^00.13 ^-0.22 ^ run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=8} ] positioned ^00.22 ^-0.13 ^ run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=9} ] positioned ^00.25 ^00.00 ^ run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=10}] positioned ^00.22 ^00.13 ^ run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=11}] positioned ^00.13 ^00.22 ^ run particle minecraft:wax_off ~ ~ ~ 0 0 0 0 1 force

# Iterates the spin from 0 to 11 repeatedly.
scoreboard players add @p[tag=temp.ray_origin,distance=2..] temp.spin 1
execute as @p[tag=temp.ray_origin,distance=2..] if entity @s[scores={temp.spin=12..}] run scoreboard players set @s temp.spin 0 

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
execute as @s at @s run function ogvz:dwarf/item/hero/dwarven_guard/elder_guardian_eye_long_loop