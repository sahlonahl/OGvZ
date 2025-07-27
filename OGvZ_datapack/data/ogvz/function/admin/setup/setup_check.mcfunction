#> Description: Checks if everything has been properly set up, then displays either an error or game start confirmation dialog.

# Return if game is not in setup phase.
execute unless score &ogvz ogvz.game.phase matches 0 run return 0

# Check if the lobby location exists. Return on fail.
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.lobby] run return run dialog show @s ogvz:setup_error/lobby_location

# Check if the shrine location exists. Return on fail.
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine] run return run dialog show @s ogvz:setup_error/shrine_location

# Check if the shrine block markers exists. Return on fail.
execute unless score &ogvz ogvz.game.shrine_health matches 12.. run return run dialog show @s ogvz:setup_error/shrine_block_markers_missing
execute unless score &ogvz ogvz.game.shrine_health matches ..12 run return run dialog show @s ogvz:setup_error/shrine_block_markers_incorrect_amount

# Check if the zombie spawn location exists. Return on fail.
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] run return run dialog show @s ogvz:setup_error/zombie_spawn_location

# Check if boss has been selected. Return on fail.
execute unless score &ogvz ogvz.game.boss matches 1..4 run return run dialog show @s ogvz:setup_error/boss_selection

# Check if boss spawn location exists, unless the boss selected is the assassin (1). Return on fail.
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.boss_spawn] unless score &ogvz ogvz.game.boss matches 4 run return run dialog show @s ogvz:setup_error/boss_spawn_location

# Show the game start dialog if every check passed.
execute if score &ogvz ogvz.game.boss matches 1 run dialog show @s ogvz:game_start_confirmation/ai_ender_dragon
execute if score &ogvz ogvz.game.boss matches 2 run dialog show @s ogvz:game_start_confirmation/ai_wither
execute if score &ogvz ogvz.game.boss matches 3 run dialog show @s ogvz:game_start_confirmation/ai_elder_guardian
execute if score &ogvz ogvz.game.boss matches 4 run dialog show @s ogvz:game_start_confirmation/assassin
