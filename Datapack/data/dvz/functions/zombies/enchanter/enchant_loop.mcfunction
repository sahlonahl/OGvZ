# -------------------------------------------
# Called By: dvz:tick
# File Name: enchant_loop
# File Purpose: Enchanted play loop for enchanter
# Created By: Galactic
# 
# Created On: 2023.06.26
# Last Modified On: 2023.07.01
# Last Modified By: Sahlonahl
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

particle minecraft:large_smoke ~ ~0.9 ~ 0.5 1 0.5 0 1
particle minecraft:dust 0.5 0.1 0.1 1.5 ~ ~0.9 ~ 0.5 1 0.5 0 1
scoreboard players remove @s DVZ.enchanterloop.ticks 1
execute as @s[scores={DVZ.enchanterloop.ticks=..0}] run function dvz:zombies/enchanter/enchant_remove