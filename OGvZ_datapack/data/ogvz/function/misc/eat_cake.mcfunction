#> Description: Gives regeneration after eating cake.

# Revoke the advancment so it can be granted again.
advancement revoke @s only ogvz:misc/eat_cake

# Give the player the regeneration effect.
effect give @s minecraft:regeneration 10 1

# Replace all cakes with only 1 bite left with air.
fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:air replace minecraft:cake[bites=6]
