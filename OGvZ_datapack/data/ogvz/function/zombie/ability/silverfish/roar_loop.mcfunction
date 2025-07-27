#> Description: Loop for hatching silverfish for every hatched infested block.

# Summon an ai silverfish at a random dwarf in range.
execute at @r[tag=ogvz.dwarf,distance=..64] run summon minecraft:silverfish ~ ~ ~

# Summon an ai silverfish at the player silverfish if there is no dwarf in range.
execute unless entity @a[tag=ogvz.dwarf,distance=..64] run summon minecraft:silverfish ~ ~ ~

# Decrement infested block count scoreboard by 1.
scoreboard players remove @s temp.infested_block_count 1

# Repeat the loop untill every infested block is accounted for.
execute as @s[scores={temp.infested_block_count=1..}] at @s run function ogvz:zombie/ability/silverfish/roar_loop
