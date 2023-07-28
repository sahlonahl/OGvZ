# -------------------------------------------
# Called By: ADMINMENU (in tick.mcf)
# File Name: shrine_fort
# File Purpose: summons the fort shrine
# Created By: Zaffre
# 
# Created On: 2023.03.11
# Last Modified On: 2023.03.11
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Shrine uses a full structure than a placed template
# -------------------------------------------

#kill @e[tag=dSpawn]

#execute as @s align xyz run tp ~.5 ~ ~.5
#execute at @s run place template dvz:shrine_fort ~-7 ~-3 ~-6
say Incomplete feature.
#execute at @s run summon marker ~-0.5 ~4 ~0.5 {Tags:[dSpawn]}
#execute at @s run summon pig ~-0.5 ~4 ~0.5 {NoAI:1b}
#tag @s remove messaged