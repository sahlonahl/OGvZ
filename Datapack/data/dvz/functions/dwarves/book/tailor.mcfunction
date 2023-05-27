# -------------------------------------------
# Called By: dvz:dwarves/book
# File Name: tailor
# File Purpose: Finish removing material cost items, display text, and give loot for Tailor
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.02.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: 
# -------------------------------------------

execute as @s run tellraw @s {"text":" * [Summoning Book] Poof!","color":"aqua"}
execute as @s run clear @s #dvz:dyes 10
execute as @s run xp add @s -30 levels
execute as @s run loot give @s loot dvz:book_summon/tailor
execute as @s at @s run playsound block.smithing_table.use master @a ~ ~ ~ 1 1
execute as @s at @s run playsound item.armor.equip_netherite master @a ~ ~ ~ 1 1
execute as @s run particle minecraft:spit ~ ~1 ~ 0.2 0.5 0.2 0.01 10