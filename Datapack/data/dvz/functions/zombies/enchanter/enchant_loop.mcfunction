# -------------------------------------------
# Called By: dvz:zombies/enchanter/enchant_loop
# File Name: enchant_loop
# File Purpose: Enchanted play loop for enchanter
# Created By: Galactic
# 
# Created On: 2023.06.26
# Last Modified On: 2023.06.26
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

execute as @s[scores={DVZ.enchanterloop.ticks=1..}] at @s run particle minecraft:large_smoke ~ ~0.9 ~ 0.5 1 0.5 0 1
execute as @s[scores={DVZ.enchanterloop.ticks=1..}] at @s run particle minecraft:dust 0.5 0.1 0.1 1.5 ~ ~0.9 ~ 0.5 1 0.5 0 1
execute as @s[scores={DVZ.enchanterloop.ticks=1..}] at @s run effect give @s glowing 1 0
execute as @s[scores={DVZ.enchanterloop.ticks=1..}] at @s run effect give @s haste 1 2
execute as @s[scores={DVZ.enchanterloop.ticks=1..}] at @s run effect give @s resistance 1 1
execute as @s[scores={DVZ.enchanterloop.ticks=1..}] at @s run attribute @s minecraft:generic.attack_damage modifier add 23df59fa-29af-4c00-91dd-dad35afbb73d enchanter_damage 5 add
execute as @s[scores={DVZ.enchanterloop.ticks=1..}] at @s run attribute @s minecraft:generic.knockback_resistance modifier add 23df59fa-29af-4c00-91dd-dad35af2273d enchanter_kbr 10 add
execute as @s[scores={DVZ.enchanterloop.ticks=1..}] at @s run scoreboard players remove @s DVZ.enchanterloop.ticks 1
execute as @s[scores={DVZ.enchanterloop.ticks=..0}] at @s run attribute @s minecraft:generic.attack_damage modifier remove 23df59fa-29af-4c00-91dd-dad35afbb73d
execute as @s[scores={DVZ.enchanterloop.ticks=..0}] at @s run attribute @s minecraft:generic.knockback_resistance modifier remove 23df59fa-29af-4c00-91dd-dad35af2273d