#> Description: Teleports the player to the shrine and gives them dwarf spawn discs.

# Clear the shrine if obstructed.
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~-0.5 ~-0.5 ~-0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~-0.5 ~-0.5 ~0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~-0.5 ~0.5 ~-0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~-0.5 ~0.5 ~0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~0.5 ~-0.5 ~-0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~0.5 ~-0.5 ~0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~0.5 ~0.5 ~-0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] positioned ~ ~3 ~ positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #ogvz:go_through run setblock ~ ~ ~ minecraft:air

# Teleport the player to the top of the shrine.
execute at @e[type=minecraft:marker,tag=ogvz.marker.shrine] run tp @s ~ ~2 ~

# Put the player on the dwarf team.
team join d1DWARF @s

# Give the player the dwarf tag.
tag @s add ogvz.dwarf

### Give discs to player.
# Builder class (100%)
execute as @s at @s run function ogvz:give/disc/dwarf/builder

# Non-Builder classes (50%)
execute if predicate {condition:"minecraft:random_chance",chance:0.5} as @s at @s run function ogvz:give/disc/dwarf/blacksmith
execute if predicate {condition:"minecraft:random_chance",chance:0.5} as @s at @s run function ogvz:give/disc/dwarf/tailor
execute if predicate {condition:"minecraft:random_chance",chance:0.5} as @s at @s run function ogvz:give/disc/dwarf/baker
execute if predicate {condition:"minecraft:random_chance",chance:0.5} as @s at @s run function ogvz:give/disc/dwarf/alchemist
execute if predicate {condition:"minecraft:random_chance",chance:0.5} as @s at @s run function ogvz:give/disc/dwarf/enchanter
