#> Description: Evolve the player into a hoglin.

# Summon a lightning bolt high into the air.
summon minecraft:lightning_bolt ~ 20000 ~

# Change the player into a hoglin.
execute as @s at @s run function ogvz:zombie/disc/hoglin
