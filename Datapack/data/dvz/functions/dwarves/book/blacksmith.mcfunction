# -------------------------------------------
# Called By: dvz:dwarves/book
# File Name: blacksmith
# File Purpose: Finish removing material cost items, display text, and give loot for Blacksmith
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

execute as @s run title @s actionbar {"text":" * [Summoning Book] Poof!","color":"aqua"}
execute as @s run clear @s clock 5
execute as @s run xp add @s -30 levels
execute as @s run loot give @s loot dvz:book_summon/blacksmith
execute as @s at @s run playsound entity.villager.work_fletcher master @a ~ ~ ~ 1 1
execute as @s run particle minecraft:spit ~ ~1 ~ 0.2 0.5 0.2 0.01 10