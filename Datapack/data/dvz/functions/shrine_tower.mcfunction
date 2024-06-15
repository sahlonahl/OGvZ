# -------------------------------------------
# Called By: ADMINMENU
# File Name: shrine_tower
# File Purpose: summons the tower shrine
# Created By: Zaffre
# 
# Created On: 2023.02.1
# Last Modified On: 2024.05.23
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: Shrine uses a structure.
# -------------------------------------------

kill @e[tag=dSpawn]

execute as @s align xyz run tp ~.5 ~ ~.5
execute at @s run place template dvz:shrine_tower ~-4 ~ ~-4

execute at @s run summon marker ~.5 ~22 ~.5 {Tags:["dSpawn","tower"]}
tag @s remove messaged 