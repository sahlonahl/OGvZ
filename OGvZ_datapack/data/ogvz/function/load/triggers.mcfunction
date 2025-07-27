#> Description: Creates the triggers.

# Admin Handbook - Gives the player the admin handbook.
scoreboard objectives add admin_handbook trigger

# Game Status - Tells the player if the game is being setup/in progress/has ended.
scoreboard objectives add game_status trigger

# Doom Event - Shows the doom event selected for the current game.
scoreboard objectives add doom_event trigger

# Mark for Death - Toggles the player's mark for mob (priority for being selected as boss/zombie).
scoreboard objectives add mark_for_death trigger
