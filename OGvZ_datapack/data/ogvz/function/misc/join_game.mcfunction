#> Description: Joins the player to the Dwarf or Zombie team depending on the game phase.

# Return if the game is in setup phase.
execute if score &ogvz ogvz.game.phase matches 0 run return 0

# Remove the tags, attributes and clear the scoreboards from the player.
execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/clear_scoreboards
execute as @s at @s run function ogvz:misc/remove_attributes

# Tag the player with the joined game tag.
tag @s add ogvz.joined_game

# Clear the player's inventory.
clear @s

# Change the player's gamemode to survival.
gamemode survival @s

# Clear all effects off the player.
effect clear @s

# Fully heal and saturate the player.
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

# If a player joins during build phase (1), they spawn in as a dwarf, otherwise they spawn in as a zombie.
execute if score &ogvz ogvz.game.phase matches 1 run function ogvz:dwarf/spawn
execute if score &ogvz ogvz.game.phase matches 2..6 run function ogvz:zombie/spawn
