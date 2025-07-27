#> Description: Handles what happens to the player when they die.
#> Note: This function DOES NOT handle what happens to the player when they respawn. ogvz:tick/respawn handles that.

# Revoke the advancement so it can be granted again.
advancement revoke @s only ogvz:misc/player_death

# Remove the kill tag from the player.
tag @s remove ogvz.kill

# Give the player the dead tag.
tag @s add ogvz.dead

# Clear the player's inventory.
clear @s

# Set the player's experience points and levels (mana) to 0.
xp set @s 0 levels
xp set @s 0 points

# If the player is a dwarf, message everybody that a dwarf has fallen and place a gravestone.
execute as @s[tag=ogvz.dwarf] at @s if score &ogvz ogvz.game.phase matches 1..5 run function ogvz:misc/dwarf_death_message
execute as @s[tag=ogvz.dwarf] at @s if score &ogvz ogvz.game.phase matches 1..6 run function ogvz:misc/gravestone

# Remove tags, clear scoreboards and remove attributes from the player.
execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/clear_scoreboards
execute as @s at @s run function ogvz:misc/remove_attributes

### If the player joined the game, dying means they always join the zombie team.
# Add the zombie tag.
tag @s[tag=ogvz.joined_game] add ogvz.zombie
# Join them into the DEAD team.
team join z9DEAD @s[tag=ogvz.joined_game]
# Set their spawnpoint to the zombie spawn and make them face the shrine when they respawn.
execute at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] facing entity @n[type=minecraft:marker,tag=ogvz.marker.shrine] feet run spawnpoint @s[tag=ogvz.joined_game] ~ ~ ~ ~

# If the player hasn't joined the game, set their spawn point to lobby (in case they slept in a bed somwhere).
execute as @s[tag=!ogvz.joined_game] at @n[type=minecraft:marker,tag=ogvz.marker.lobby] run spawnpoint @s ~ ~ ~ ~
# If the player hasn't joined the game, restore their adventure mode tag.
tag @s[tag=!ogvz.joined_game] add ogvz.adventure.lobby

# Kill all wolves belonging to the dead players.
execute as @e[type=minecraft:wolf] at @s run function ogvz:misc/wolf_kill
