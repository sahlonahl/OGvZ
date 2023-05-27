# -------------------------------------------
# Called By: ADMINMENU (in tick.mcf)
# File Name: shrine_temple
# File Purpose: summons the temple shrine
# Created By: Zaffre
# 
# Created On: 2023.03.09
# Last Modified On: 2023.03.14
# Last Modified By: Zaffre
#
# Credit to: MEEEEEEE -Zaff
#
# Comments: Shrine uses a structure template.
# -------------------------------------------

kill @e[tag=dSpawn]

execute as @s align xyz run tp ~.5 ~ ~.5
execute at @s run place template dvz:shrine_temple ~-7 ~-3 ~-6

execute at @s run summon marker ~-0.5 ~4 ~0.5 {Tags:["dSpawn","temple"]}
#execute at @s run summon pig ~-0.5 ~4 ~0.5 {NoAI:1b}
tag @s remove messaged 