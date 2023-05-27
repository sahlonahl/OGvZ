# -------------------------------------------
# Called By: dvz:dwarves/book
# File Name: enchanter
# File Purpose: Finish removing material cost items, display text, and give loot for Enchanter
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.28
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: 
# -------------------------------------------

execute as @s run tellraw @s {"text":" * [Summoning Book] Poof!","color":"aqua"}
execute as @s run clear @s emerald 1
execute as @s run xp add @s 15 levels
execute as @s run loot give @s loot dvz:book_summon/enchanter
execute as @s at @s run playsound entity.evoker.cast_spell master @a ~ ~ ~ 1 1
execute as @s run particle minecraft:spit ~ ~1 ~ 0.2 0.5 0.2 0.01 10