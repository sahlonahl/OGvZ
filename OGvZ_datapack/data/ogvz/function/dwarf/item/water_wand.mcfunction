#> Description: Shoot a ray that replaces cauldrons with fully filled cauldrons.

# Display a use message.
title @s actionbar [ \
  "", \
  {text:"[Water Wand]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play a sound.
playsound minecraft:item.bucket.empty player @a ~ ~ ~ 1 1

# Summon 2 markers at players feet and gives them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Start the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:dwarf/item/water_wand_loop

# Replace a Cauldron with a fully filled Water Cauldron.
execute as @s at @n[type=minecraft:marker,tag=temp.ray] if block ~ ~ ~ minecraft:cauldron run setblock ~ ~ ~ minecraft:water_cauldron[level=3] replace
execute as @s at @n[type=minecraft:marker,tag=temp.ray] if block ~ ~ ~ minecraft:water_cauldron run setblock ~ ~ ~ minecraft:water_cauldron[level=3] replace

# Play a sound at the Cauldron.
execute as @s at @n[type=minecraft:marker,tag=temp.ray] if block ~ ~ ~ minecraft:water_cauldron run playsound minecraft:item.bucket.fill block @a ~ ~ ~ 1 1

# Get rid of the markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]
