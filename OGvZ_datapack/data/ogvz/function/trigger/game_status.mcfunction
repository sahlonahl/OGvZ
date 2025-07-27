#> Description: Handles the check game status trigger.

# Reset scoreboard.
scoreboard players set @s game_status 0
# Re-enable trigger.
scoreboard players enable @s game_status

# Display the game status message.
execute as @s at @s run function ogvz:misc/game_status
