# -------------------------------------------
# Called By: ADMINMENU
# File Name: assisstedshrine
# File Purpose: Summons a shrine, makes a clearing, builds a 1-thick floor.
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.04.17
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Initially added for ocean games, found to be useful in other environments like forests and caves.
# -------------------------------------------

kill @e[tag=dSpawn]
execute as @s align xyz run tp ~.5 ~ ~.5
execute at @s run fill ~-15 ~-1 ~-15 ~16 ~10 ~16 air
execute at @s run fill ~-15 ~-1 ~-15 ~16 ~-1 ~16 stone_bricks
execute at @s run fill ~-4 ~ ~-1 ~-4 ~5 ~-3 stone_bricks
execute at @s run fill ~-4 ~ ~2 ~-4 ~5 ~4 stone_bricks
execute at @s run fill ~-4 ~ ~-4 ~-1 ~5 ~-4 stone_bricks
execute at @s run fill ~5 ~ ~-4 ~2 ~5 ~-4 stone_bricks
execute at @s run fill ~-4 ~ ~5 ~-1 ~5 ~5 stone_bricks
execute at @s run fill ~5 ~ ~5 ~2 ~5 ~5 stone_bricks
execute at @s run fill ~5 ~ ~-1 ~5 ~5 ~-3 stone_bricks
execute at @s run fill ~5 ~ ~2 ~5 ~5 ~4 stone_bricks
execute at @s run fill ~5 ~5 ~5 ~-4 ~5 ~-4 stone_bricks
execute at @s run fill ~ ~1 ~ ~1 ~1 ~1 gold_block
execute at @s run fill ~-1 ~ ~ ~2 ~ ~1 gold_block
execute at @s run fill ~ ~ ~-1 ~1 ~ ~2 gold_block
execute at @s run fill ~ ~ ~ ~1 1 ~1 obsidian
execute at @s run summon marker ~.5 ~2 ~.5 {Tags:[dSpawn]}
tag @s remove messaged