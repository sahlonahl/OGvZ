#> Description: Animation for creating the middle circle.

# Create middle circle
fill ~-1 ~-1 ~-1 ~1 ~-2 ~1 minecraft:end_stone
fill ~-1 ~-1 ~3 ~1 ~-1 ~3 minecraft:end_stone
fill ~3 ~-1 ~-1 ~3 ~-1 ~1 minecraft:end_stone
fill ~-1 ~-1 ~-3 ~1 ~-1 ~-3 minecraft:end_stone
fill ~-3 ~-1 ~-1 ~-3 ~-1 ~1 minecraft:end_stone
fill ~-2 ~-1 ~-2 ~-2 ~-1 ~-2 minecraft:end_stone
fill ~-2 ~-1 ~2 ~-2 ~-1 ~2 minecraft:end_stone
fill ~2 ~-1 ~-2 ~2 ~-1 ~-2 minecraft:end_stone
fill ~2 ~-1 ~2 ~2 ~-1 ~2 minecraft:end_stone

# Play sound and show particles.
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 4 1.2
particle minecraft:block_crumble{block_state:"minecraft:end_stone"} ~ ~0.1 ~ 2 0 2 1 360
