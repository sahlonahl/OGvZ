#> Description: Raycast to determine if an explosion can hit the player.

# Summons a marker at player's feet and gives it a temporary tag.
execute positioned ~ ~0.01 ~ summon minecraft:marker run tag @s add temp.ray

# Rotate the marker so it faces the area effect cloud.
rotate @n[type=minecraft:marker,tag=temp.ray] facing entity @n[type=minecraft:area_effect_cloud,tag=temp.center]

# Starts the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/chicken_nugget/eggsplosive_egg_loop

# Put a temporary tag on the player if the ray has reached the area effect cloud.
execute at @n[type=minecraft:marker,tag=temp.ray] if entity @e[type=minecraft:area_effect_cloud,tag=temp.center,distance=..0.1] run tag @s add temp.hit

# Kill the ray marker.
kill @e[type=minecraft:marker,tag=temp.ray]
