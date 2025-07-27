#> Description: Checks the game state to determine if the game phase needs to be changed.
#> Note: Changing the phase from Setup phase to Build phase is done by ogvz:admin/setup/start_game.
#> Comment: 0 - Setup phase, 1 - Build phase, 2 - Boss phase, 3 - Plague phase, 4 - Zombie phase, 5 - Last Stand phase, 6 - Game Over phase

# During the Build, Boss, Plague, Zombie and Last Stand phases, if the shrine is broken, switch to Game Over phase.
execute if score &ogvz ogvz.game.phase matches 1..5 unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine_block] run function ogvz:misc/init_game_over_phase

# During the Boss, Plague, Zombie and Last Stand phases, if all dwarves are dead, switch to Game Over phase.
execute if score &ogvz ogvz.game.phase matches 2..5 unless entity @e[type=minecraft:player,tag=ogvz.dwarf] run function ogvz:misc/init_game_over_phase

# During the Build phase, if the timer has reached 30 minutes, switch to Boss phase.
execute if score &ogvz ogvz.game.phase matches 1 if score &ogvz ogvz.game.timer matches 36000.. run function ogvz:misc/init_boss_phase

# During the Boss phase, if the boss is dead, switch to Plague phase.
execute if score &ogvz ogvz.game.phase matches 2 unless entity @e[tag=ogvz.boss] run function ogvz:misc/init_plague_phase

# During the Plague phase, if there are no plagued dwarves left, switch to Zombie phase.
execute if score &ogvz ogvz.game.phase matches 3 unless entity @a[tag=ogvz.dwarf.plague] run function ogvz:misc/init_zombie_phase

# During the Zombie phase, if only one dwarf remains, switch to Last Stand phase.
execute if score &ogvz ogvz.game.phase matches 4 if score Dwarves ogvz.game.player_count matches 1 run function ogvz:misc/init_last_stand_phase
