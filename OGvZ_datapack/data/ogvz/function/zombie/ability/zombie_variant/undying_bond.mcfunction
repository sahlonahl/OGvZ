#> Description: Give the player regeneration if there are other zombie variants near them.

execute if entity @a[tag=ogvz.zombie.class.zombie_variant,distance=0.01..8] run effect give @s minecraft:regeneration 1 1
