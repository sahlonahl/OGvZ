#> Description: Handles the check doom event trigger.

# Reset scoreboard.
scoreboard players set @s doom_event 0
# Re-enable trigger.
scoreboard players enable @s doom_event

# Return if the game is currently in setup phase (0).
execute if score &ogvz ogvz.game.phase matches 0 run return 0

# Display the doom event message.
execute as @s at @s run function ogvz:misc/doom_event_message
