#> Description: Loop for spawning an ai silverfish for every unused silverfish egg.

# Summon an ai silverfish.
summon minecraft:silverfish

# Decrement silverfish eggs by 1.
scoreboard players remove @s ogvz.silverfish.silverfish_egg.count 1

# Repeat the loop until no more silverfish eggs.
execute as @s[scores={ogvz.silverfish.silverfish_egg.count=1..}] at @s run function ogvz:zombie/ability/silverfish/roar_loop_2
