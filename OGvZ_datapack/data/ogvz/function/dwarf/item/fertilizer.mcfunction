#> Description: Shoots a ray that replaces the biome around a grass block with the plains biome.

# Summon 2 markers at players feet and gives them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Start the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:dwarf/item/fertilizer_loop

# Replace biome if the block targeted is a Grass Block.
execute as @s at @n[type=minecraft:marker,tag=temp.ray] if block ~ ~ ~ minecraft:grass_block run fillbiome ~-5 ~-3 ~-5 ~5 ~3 ~5 minecraft:plains

# Play a sound at the Grass Block.
execute as @s at @n[type=minecraft:marker,tag=temp.ray] if block ~ ~ ~ minecraft:grass_block run playsound minecraft:block.composter.fill_success block @a ~ ~ ~ 1 1

# Remove the Fertilizer if it has been used.
execute as @s at @n[type=minecraft:marker,tag=temp.ray] if block ~ ~ ~ minecraft:grass_block run item replace entity @s[gamemode=!creative,tag=temp.use.mainhand] weapon.mainhand with minecraft:air
execute as @s at @n[type=minecraft:marker,tag=temp.ray] if block ~ ~ ~ minecraft:grass_block run item replace entity @s[gamemode=!creative,tag=temp.use.offhand] weapon.offhand with minecraft:air

# Get rid of the markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]
