#> Description: General initializations.

# Set difficulty to hard.
difficulty hard

# Remove initialized tag from all players in game.
tag @a remove ogvz.initialized

# Kill all entities with kill on reload tag.
kill @e[tag=ogvz.kill_on_reload]

# Remove all force-loaded chunks.
forceload remove all

# Force load chunk 0 0.
execute in minecraft:overworld run forceload add 0 0
