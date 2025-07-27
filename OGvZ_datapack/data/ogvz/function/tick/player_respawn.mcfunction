#> Description: Handles what happens to the player when they respawn.
#> Note: This function DOES NOT handle what happens to the player when they die. ogvz:misc/player_death handles that.

# Remove the dead tag.
tag @s remove ogvz.dead

### Player who hasn't joined the game yet.
# Give them the admin handbook or rulebook depending if they are an admin or not.
execute as @s[tag=!ogvz.joined_game,tag=!ogvz.admin] at @s run function ogvz:give/other/rulebook
execute as @s[tag=!ogvz.joined_game,tag=ogvz.admin] at @s run function ogvz:give/admin_handbook
# If the game is in progress/over, give them a magma cream.
execute if score &ogvz ogvz.game.phase matches 1..6 as @s[tag=!ogvz.joined_game] at @s run function ogvz:give/other/join_game_magma_cream

# Zombie player.
execute as @s[tag=ogvz.zombie] at @s run function ogvz:zombie/spawn
