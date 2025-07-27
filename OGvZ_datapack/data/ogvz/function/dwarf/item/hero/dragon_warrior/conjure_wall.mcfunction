#> Description: Places a box of stone bricks where you are looking at.

# Display a fail message and return if the player doesn't have enough mana.
execute unless entity @s[level=8..] run title @s actionbar [ \
  "", \
  {text:"[Conjure Wall]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"8 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=8..] run return 0

# Summon two markers at the players feet and give them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Start the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:dwarf/item/hero/dragon_warrior/conjure_wall_loop

# Display an activation message.
execute at @n[type=minecraft:marker,tag=temp.ray] unless block ~ ~ ~ #ogvz:go_through run title @s actionbar [ \
  "", \
  {text:"[Conjure Wall]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Remove mana if the ray has hit a block.
execute at @n[type=minecraft:marker,tag=temp.ray] unless block ~ ~ ~ #ogvz:go_through run scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 8

# Make a 3 * 3 * 3 stone brick wall around the marker one step before it hit a block, but only if the ray hit a block (so it doesn't create a wall in air).
execute at @n[type=minecraft:marker,tag=temp.ray] unless block ~ ~ ~ #ogvz:go_through positioned ^ ^ ^-0.001 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:stone_bricks replace #ogvz:go_through

# Make a sound at the location of the placed wall.
execute at @n[type=minecraft:marker,tag=temp.ray] unless block ~ ~ ~ #ogvz:go_through positioned ^ ^ ^-0.001 run playsound minecraft:block.nether_bricks.break block @a ~ ~ ~ 1 0.5
execute at @n[type=minecraft:marker,tag=temp.ray] unless block ~ ~ ~ #ogvz:go_through positioned ^ ^ ^-0.001 run playsound minecraft:block.nether_bricks.break block @a ~ ~ ~ 1 1.0
execute at @n[type=minecraft:marker,tag=temp.ray] unless block ~ ~ ~ #ogvz:go_through positioned ^ ^ ^-0.001 run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.5
execute at @n[type=minecraft:marker,tag=temp.ray] unless block ~ ~ ~ #ogvz:go_through positioned ^ ^ ^-0.001 run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 1.0

# Show particles at the location of the placed wall.
execute at @n[type=minecraft:marker,tag=temp.ray] unless block ~ ~ ~ #ogvz:go_through positioned ^ ^ ^-0.001 run particle block{block_state:"minecraft:stone"} ~ ~ ~ 1 1 1 1 100

# Remove temporary markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]
