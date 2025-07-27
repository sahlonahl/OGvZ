#> Description: Start the ender portal animation.

# Play sound
playsound minecraft:block.portal.trigger player @a ~ ~ ~ 4 1.6

# Show particles
particle minecraft:portal ~ ~1 ~ 0.25 0.5 0.25 1 200

# Clear blocks
fill ~-3 ~-4 ~-10 ~3 ~2 ~10 minecraft:air
fill ~-5 ~-4 ~-9 ~5 ~2 ~9 minecraft:air
fill ~-6 ~-4 ~-8 ~6 ~2 ~8 minecraft:air
fill ~-7 ~-4 ~-7 ~7 ~2 ~7 minecraft:air
fill ~-8 ~-4 ~-6 ~8 ~2 ~6 minecraft:air
fill ~-9 ~-4 ~-5 ~9 ~2 ~5 minecraft:air
fill ~-10 ~-4 ~-3 ~10 ~2 ~3 minecraft:air

# Create inner circle
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:end_stone
playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 4 1.2
particle minecraft:block_crumble{block_state:"minecraft:end_stone"} ~ ~0.1 ~ 1 0 1 1 90
