#> Description: Updates the player count on the sidebar.

# Create a temporary scoreboard.
scoreboard objectives add temp.new_player_count dummy

# Count dwarves.
scoreboard players set Dwarves temp.new_player_count 0
execute as @a[tag=ogvz.dwarf] run scoreboard players add Dwarves temp.new_player_count 1

# Count zombies.
scoreboard players set Zombies temp.new_player_count 0
execute as @a[tag=ogvz.zombie] run scoreboard players add Zombies temp.new_player_count 1

# Transfer the player count from the temporary scoreboard onto the real one.
scoreboard players operation Dwarves ogvz.game.player_count = Dwarves temp.new_player_count
scoreboard players operation Zombies ogvz.game.player_count = Zombies temp.new_player_count

# Remove temporary scoreboard.
scoreboard objectives remove temp.new_player_count
