#> Description: Gives the player a legendary item from a legendary book

# Remove one slab item from the player.
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={active_id:5100}] 1

# Clear the global active item/ability cooldown.
scoreboard players set @s ogvz.rclick.cooldown 0

# Summon two markers at the players feet and give them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Start the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:dwarf/item/builder_slab_loop

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Builder's Slab]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Make a 11 * 5 * 3 stone brick wall around the marker one step before it hits a block.
execute at @n[type=minecraft:marker,tag=temp.ray] positioned ^ ^ ^-0.001 run fill ^5 ^3 ^3 ^-5 ^-2 ^6 minecraft:end_stone_bricks replace #ogvz:go_through

# Play a sound.
execute at @n[type=minecraft:marker,tag=temp.ray] run playsound minecraft:block.anvil.destroy player @a ~ ~ ~ 1 0.5

# Show particles at the location of the placed wall.
execute at @n[type=minecraft:marker,tag=temp.ray] positioned ^ ^ ^-0.001 run particle block{block_state:"minecraft:end_stone_bricks"} ~ ~ ~ 1 1 1 1 100

# Remove temporary markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]



