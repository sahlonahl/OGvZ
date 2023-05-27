# -------------------------------------------
# Called By: ADMINMENU
# File Name: zombiespawn
# File Purpose: builds zombies' spawn
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.02.01
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Shouldn't be placed too close to the dwarves' gold or they will die instantly
# -------------------------------------------

execute at @e[tag=zSpawn] run fill ~5 ~5 ~5 ~-5 ~-1 ~-5 air replace crying_obsidian
kill @e[tag=zSpawn]
execute as @s align xyz run tp ~.5 ~ ~.5
execute at @s run fill ~5 ~3 ~5 ~-5 ~-3 ~-5 crying_obsidian hollow
execute at @s run summon marker ~ ~-2 ~ {Tags:["zSpawn","zProtect"]}
tag @s remove messaged