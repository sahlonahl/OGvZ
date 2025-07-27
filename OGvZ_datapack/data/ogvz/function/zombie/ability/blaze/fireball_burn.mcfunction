#> Description: Sets area around the fireball marker ablaze.

# Set 3 * 3 * 3 area on fire.
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire replace #ogvz:non_solid_blocks

# Kill marker.
kill @s
