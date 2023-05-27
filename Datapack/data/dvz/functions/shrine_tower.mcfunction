# -------------------------------------------
# Called By: ADMINMENU
# File Name: shrine_tower
# File Purpose: summons the tower shrine
# Created By: Zaffre
# 
# Created On: 2023.02.1
# Last Modified On: 2023.02.1
# Last Modified By: Zaffre
#
# Credit to: MEEEEEEE -Zaff
#
# Comments: Shrine uses a structure.
# -------------------------------------------

kill @e[tag=dSpawn]

execute as @s align xyz run tp ~.5 ~ ~.5
execute at @s run place template dvz:shrine_tower ~-8 ~ ~-8

execute at @s run summon marker ~-0.5 ~24 ~0.5 {Tags:[dSpawn]}
tag @s remove messaged 