#> Description: Checks if the ender portal is missing any blocks.

# Add a temporary scoreboard.
scoreboard objectives add temp.ender_portal.block_count dummy

# Replace all end stone with structure void, then replace structure void with end stone and store the amount of blocks changed into the temporary scoreboard.
execute store result score @s temp.ender_portal.block_count run fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 minecraft:structure_void replace minecraft:end_stone strict
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 minecraft:end_stone replace minecraft:structure_void strict

# Remove the portal if any block is missing.
execute as @s[scores={temp.ender_portal.block_count=..86}] at @s run function ogvz:zombie/ability/enderman/ender_portal_remove

# Remove temorary scoreboard.
scoreboard objectives remove temp.ender_portal.block_count
