#> Description: Handles the give admin handbook trigger.

# Reset scoreboard.
scoreboard players set @s admin_handbook 0
# Re-enable trigger.
scoreboard players enable @s admin_handbook

# Give the player the admin handbook.
execute as @s at @s run function ogvz:give/admin_handbook
