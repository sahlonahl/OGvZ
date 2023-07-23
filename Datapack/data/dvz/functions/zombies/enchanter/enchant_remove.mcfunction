# -------------------------------------------
# Called By: dvz:zombies/enchanter/enchanter_loop
# File Name: enchant_remove
# File Purpose: Remove enchanter attributes
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

attribute @s[scores={DVZ.enchanterloop.ticks=..0}] minecraft:generic.attack_damage modifier remove 23df59fa-29af-4c00-91dd-dad35afbb73d
attribute @s[scores={DVZ.enchanterloop.ticks=..0}] minecraft:generic.knockback_resistance modifier remove 23df59fa-29af-4c00-91dd-dad35af2273d
scoreboard players reset @s[scores={DVZ.enchanterloop.ticks=..0}] DVZ.enchanterloop.ticks