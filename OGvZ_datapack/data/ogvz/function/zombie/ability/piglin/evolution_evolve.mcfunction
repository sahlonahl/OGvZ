#> Description: Evolve the player into a hoglin.

# Update the evolution progress bar.
execute as @s at @s run function ogvz:zombie/ability/piglin/evolution_custom_bar_1

# Summon a lightning bolt high into the air.
summon minecraft:lightning_bolt ~ 20000 ~

# Change the player into a hoglin.
execute as @s at @s run function ogvz:zombie/disc/hoglin
