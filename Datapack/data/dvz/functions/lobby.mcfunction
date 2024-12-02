# -------------------------------------------
# Called By: ADMINMENU
# File Name: lobby
# File Purpose: builds the lobby for players to wait in before game start and teleports all current players to it
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

kill @e[tag=worldspawn]

place template dvz:spawn2 ~-10 ~-3 ~-10

# legacy version of the spawn-in lobby
# execute as @s align xyz run tp ~.5 ~ ~.5
# execute at @s run fill ~10 ~5 ~10 ~-10 ~-3 ~-10 bedrock hollow
# execute at @s run setblock ~ ~-2 ~ sea_lantern
# execute at @s run fill ~9 ~3 ~9 ~-9 ~3 ~-9 barrier
# execute at @s run fill ~9 ~4 ~9 ~-9 ~4 ~-9 sea_lantern

execute at @s run setworldspawn
execute at @s run summon marker ~ ~-1 ~ {Tags:[worldspawn]}
clear @a[tag=!admin]
tp @a[tag=!admin] @e[tag=worldspawn,limit=1]
tag @s remove messaged