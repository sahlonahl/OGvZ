#> Description: Turn targeted dwarf blocks into infested stone.

# Display a fail message, hide custom bars for a bit and return if the player doens't have a silverfish egg.
execute unless entity @s[scores={ogvz.silverfish.silverfish_egg.count=1..}] run title @s actionbar [ \
  "", \
  {text:"[Infest]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"1 Silverfish Egg",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[scores={ogvz.silverfish.silverfish_egg.count=1..}] run scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20
execute unless entity @s[scores={ogvz.silverfish.silverfish_egg.count=1..}] run return 0

# Terrain modifying abilities cannot be used when the player is in adventure mode.
execute if entity @s[gamemode=adventure] run title @s actionbar [ \
  "", \
  {text:"[Infest]",bold:true,color:"red"}, \
  {text:" You cannnot use this ability right now!",color:"red"} \
]
execute if entity @s[gamemode=adventure] run return 0

# Summon two markers at the players feet and give them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Start the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/silverfish/infest_loop

# Infest surrounding blocks if the ray has hit a dwarf block. 
execute at @n[type=minecraft:marker,tag=temp.ray] if block ~ ~ ~ #ogvz:dwarf_blocks run function ogvz:zombie/ability/silverfish/infest_infest_blocks

# Remove temporary markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]
