#> Description: Main branch for all triggers.
#> Comment: Triggers are commands that any player (even non-opped players) can run. But they have to be specifically enabled per player.

# Give admin handbook.
execute as @s[scores={admin_handbook=1..}] at @s run function ogvz:trigger/admin_handbook

# Check game status.
execute as @s[scores={game_status=1..}] at @s run function ogvz:trigger/game_status

# Check doom event.
execute as @s[scores={doom_event=1..}] at @s run function ogvz:trigger/doom_event

# Toggle mark for death.
execute as @s[scores={mark_for_death=1..}] at @s run function ogvz:trigger/mark_for_death
