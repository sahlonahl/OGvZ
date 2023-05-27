# -------------------------------------------
# Called By: ADMINMENU
# File Name: shrine
# File Purpose: summons the gold that dwarves need to protect
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

kill @e[tag=dSpawn]
execute as @s align xyz run tp ~.5 ~ ~.5
execute at @s run fill ~ ~1 ~ ~1 ~1 ~1 gold_block
execute at @s run fill ~-1 ~ ~ ~2 ~ ~1 gold_block
execute at @s run fill ~ ~ ~-1 ~1 ~ ~2 gold_block
execute at @s run fill ~ ~ ~ ~1 -63 ~1 obsidian
execute at @s run summon marker ~.5 ~2 ~.5 {Tags:[dSpawn]}
tag @s remove messaged