#> Description: Perform several checks to see if a player can be teleported.

# Summon 6 markers at the center of each face of the block the ray is inside.
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~0.5 ~ ~ summon minecraft:marker run tag @s add temp.direction
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-0.5 ~ ~ summon minecraft:marker run tag @s add temp.direction
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~0.5 ~ summon minecraft:marker run tag @s add temp.direction
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~-0.5 ~ summon minecraft:marker run tag @s add temp.direction
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~0.5 summon minecraft:marker run tag @s add temp.direction
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~-0.5 summon minecraft:marker run tag @s add temp.direction

# Tag the closest marker to determine which face of the block the player clicked.
execute positioned ^ ^ ^-0.1 run tag @n[type=minecraft:marker,tag=temp.direction] add temp.direction.closest

# Teleport the infestation marker to the center of the block it's in and make it face the center of the face of the block that was clicked by the player.
execute align xyz positioned ~0.5 ~0.5 ~0.5 facing entity @n[type=minecraft:marker,tag=temp.direction.closest] feet run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~

# Kill temporary markers.
kill @e[type=minecraft:marker,tag=temp.direction]

### Perform 4 different checks to see if the player can be teleported. If a check passes, summon a teleport marker and return.
# Side of the hit block.
execute at @n[type=minecraft:marker,tag=temp.ray] positioned ^ ^ ^1 unless block ~ ~-1 ~ #ogvz:go_through if block ~ ~ ~ #ogvz:go_through if block ~ ~1 ~ #ogvz:go_through run return run summon minecraft:marker ~ ~ ~ {Tags:["temp.teleport"]}

# On top of the hit block.
execute at @n[type=minecraft:marker,tag=temp.ray] positioned ~ ~1 ~ unless block ~ ~-1 ~ #ogvz:go_through if block ~ ~ ~ #ogvz:go_through if block ~ ~1 ~ #ogvz:go_through run return run summon minecraft:marker ~ ~ ~ {Tags:["temp.teleport"]}

# On top of the block above the hit block.
execute at @n[type=minecraft:marker,tag=temp.ray] positioned ~ ~2 ~ unless block ~ ~-1 ~ #ogvz:go_through if block ~ ~ ~ #ogvz:go_through if block ~ ~1 ~ #ogvz:go_through run return run summon minecraft:marker ~ ~ ~ {Tags:["temp.teleport"]}

# On top of the block 2 blocks above the hit block.
execute at @n[type=minecraft:marker,tag=temp.ray] positioned ~ ~3 ~ unless block ~ ~-1 ~ #ogvz:go_through if block ~ ~ ~ #ogvz:go_through if block ~ ~1 ~ #ogvz:go_through run return run summon minecraft:marker ~ ~ ~ {Tags:["temp.teleport"]}
