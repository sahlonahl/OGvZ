#> Description: Animation for creating the outer circle.

# Create outer circle
fill ~-1 ~-1 ~-1 ~1 ~-3 ~1 minecraft:end_stone
fill ~-1 ~-1 ~3 ~1 ~-2 ~3 minecraft:end_stone
fill ~3 ~-1 ~-1 ~3 ~-2 ~1 minecraft:end_stone
fill ~-1 ~-1 ~-3 ~1 ~-2 ~-3 minecraft:end_stone
fill ~-3 ~-1 ~-1 ~-3 ~-2 ~1 minecraft:end_stone
fill ~-2 ~-1 ~-2 ~-2 ~-2 ~-2 minecraft:end_stone
fill ~-2 ~-1 ~2 ~-2 ~-2 ~2 minecraft:end_stone
fill ~2 ~-1 ~-2 ~2 ~-2 ~-2 minecraft:end_stone
fill ~2 ~-1 ~2 ~2 ~-2 ~2 minecraft:end_stone
fill ~-1 ~-1 ~5 ~1 ~-1 ~5 minecraft:end_stone
fill ~5 ~-1 ~-1 ~5 ~-1 ~1 minecraft:end_stone
fill ~-1 ~-1 ~-5 ~1 ~-1 ~-5 minecraft:end_stone
fill ~-5 ~-1 ~-1 ~-5 ~-1 ~1 minecraft:end_stone
fill ~-3 ~-1 ~4 ~-2 ~-1 ~4 minecraft:end_stone
fill ~2 ~-1 ~4 ~3 ~-1 ~4 minecraft:end_stone
fill ~-3 ~-1 ~-4 ~-2 ~-1 ~-4 minecraft:end_stone
fill ~2 ~-1 ~-4 ~3 ~-1 ~-4 minecraft:end_stone
fill ~-4 ~-1 ~2 ~-4 ~-1 ~3 minecraft:end_stone
fill ~-4 ~-1 ~-3 ~-4 ~-1 ~-2 minecraft:end_stone
fill ~4 ~-1 ~2 ~4 ~-1 ~3 minecraft:end_stone
fill ~4 ~-1 ~-3 ~4 ~-1 ~-2 minecraft:end_stone
fill ~-2 ~-3 ~-2 ~-2 ~-3 ~-2 minecraft:end_rod[facing=down]
fill ~-2 ~-3 ~2 ~-2 ~-3 ~2 minecraft:end_rod[facing=down]
fill ~2 ~-3 ~-2 ~2 ~-3 ~-2 minecraft:end_rod[facing=down]
fill ~2 ~-3 ~2 ~2 ~-3 ~2 minecraft:end_rod[facing=down]

# Play sound and show particles.
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 4 1.2
particle minecraft:block_crumble{block_state:"minecraft:end_stone"} ~ ~0.1 ~ 3 0 3 1 810
