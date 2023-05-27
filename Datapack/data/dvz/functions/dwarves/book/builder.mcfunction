# -------------------------------------------
# Called By: dvz:dwarves/book
# File Name: builder
# File Purpose: Finish removing material cost items, display text, and give loot for Builder
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.02.20
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: 
# -------------------------------------------

execute as @s run tellraw @s {"text":" * [Summoning Book] Poof!","color":"aqua"}
execute as @s run xp add @s 15 levels
execute as @s if entity @e[type=marker,tag=dvztimer] run loot give @s loot dvz:book_summon/builder
execute as @s run scoreboard players set @s DVZ.book.cool 30 
execute as @s at @s run playsound ui.stonecutter.take_result master @a ~ ~ ~ 1 1
execute as @s at @s run playsound entity.chicken.egg master @a ~ ~ ~ 1 1
execute as @s run particle minecraft:spit ~ ~1 ~ 0.2 0.5 0.2 0.01 10