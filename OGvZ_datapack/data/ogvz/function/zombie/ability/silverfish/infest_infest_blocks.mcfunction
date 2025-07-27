#> Description: Checks and infests blocks.

# Hide custom bars for a bit.
scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20

# Decrement silverfish eggs by 1.
scoreboard players remove @s ogvz.silverfish.silverfish_egg.count 1

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Infest]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an infest sound and show particles.
execute align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:entity.silverfish.step player @a ~ ~ ~ 1 1
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:infested ~ ~ ~ 0.5 0.5 0.5 0 30

# Summon a infestation marker and give it a temporary tag.
execute summon minecraft:marker run tag @s add temp.processing

# Put tags on the newly summoned infestation marker.
tag @n[type=minecraft:marker,tag=temp.processing] add ogvz.infestation
tag @n[type=minecraft:marker,tag=temp.processing] add ogvz.kill_on_reload

# Summon 6 markers at the center of each face of the block the marker is inside.
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.5 ~ ~ summon minecraft:marker run tag @s add temp.direction
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-0.5 ~ ~ summon minecraft:marker run tag @s add temp.direction
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~0.5 ~ summon minecraft:marker run tag @s add temp.direction
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~-0.5 ~ summon minecraft:marker run tag @s add temp.direction
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~0.5 summon minecraft:marker run tag @s add temp.direction
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~-0.5 summon minecraft:marker run tag @s add temp.direction

# Tag the closest marker to determine which face of the block the player clicked.
execute positioned ^ ^ ^-0.001 run tag @n[type=minecraft:marker,tag=temp.direction] add temp.direction.closest

# Teleport the infestation marker to the center of the block it's in and make it face the center of the face of the block that was clicked by the player.
execute align xyz positioned ~0.5 ~0.5 ~0.5 facing entity @n[type=minecraft:marker,tag=temp.direction.closest] feet run tp @n[type=minecraft:marker,tag=temp.processing] ~ ~ ~ ~ ~

### Infest front facing blocks if they are dwarf blocks and don't have any solid blocks in front of them.
# Front blocks
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^ ^1 ^1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^1 ^1 ^1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^1 ^ ^1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^1 ^-1 ^1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^ ^-1 ^1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^-1 ^-1 ^1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^-1 ^ ^1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^-1 ^1 ^1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone

# Middle blocks
setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^ ^1 ^ if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^1 ^1 ^ if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^1 ^ ^ if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^1 ^-1 ^ if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^ ^-1 ^ if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^-1 ^-1 ^ if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^-1 ^ ^ if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^-1 ^1 ^ if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone

# Back blocks
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^ ^1 ^-1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through if block ^ ^ ^2 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^1 ^1 ^-1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through if block ^ ^ ^2 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^1 ^ ^-1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through if block ^ ^ ^2 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^1 ^-1 ^-1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through if block ^ ^ ^2 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^ ^-1 ^-1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through if block ^ ^ ^2 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^-1 ^-1 ^-1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through if block ^ ^ ^2 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^-1 ^ ^-1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through if block ^ ^ ^2 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone
execute at @n[type=minecraft:marker,tag=temp.processing] positioned ^-1 ^1 ^-1 if block ~ ~ ~ #ogvz:dwarf_blocks if block ^ ^ ^1 #ogvz:go_through if block ^ ^ ^2 #ogvz:go_through run setblock ~ ~ ~ minecraft:infested_stone

# Remove temporary tag.
tag @e[type=minecraft:marker,tag=temp.processing] remove temp.processing 

# Kill temporary markers.
kill @e[type=minecraft:marker,tag=temp.direction]
