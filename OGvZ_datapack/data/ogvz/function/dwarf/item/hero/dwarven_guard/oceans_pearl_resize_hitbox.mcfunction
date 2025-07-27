#> Description: Resize the ocean's pearl hitbox.
#> Comment: This is used because the slime used as the hitbox is visible for a few ticks even when summon with invisibility.

# Scale the hitbox size using an attribute.
execute as @e[type=minecraft:slime,tag=ogvz.oceans_pearl_hitbox.resize] run attribute @s minecraft:scale base set 1.5

# Remove the resize tag from the pearl's hitbox.
tag @e[type=minecraft:slime,tag=ogvz.oceans_pearl_hitbox.resize] remove ogvz.oceans_pearl_hitbox.resize
