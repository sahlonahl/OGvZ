# -------------------------------------------
# Called By: dvz:dwarves/yellowbook
# File Name: blacksmith
# File Purpose: Legendary Book summon for the Blacksmith
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s run title @s actionbar {"text":" * [Legendary Book] Poof!","color":"yellow"}
execute as @s run clear @s minecraft:nether_star{CustomModelData:16575} 5
execute as @s run clear @s minecraft:carrot_on_a_stick{CustomModelData:1000} 1
execute as @s run loot give @s loot dvz:yellowbook/blacksmith
execute as @s run tag @s add lbookused
execute as @s at @s run playsound entity.zombie_villager.cure master @a ~ ~ ~ 1 0.6
execute as @s run particle minecraft:witch ~ ~1 ~ 0.4 0.5 0.4 0.001 50