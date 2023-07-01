# -------------------------------------------
# Called By: dvz:tick
# File Name: evoker_loop
# File Purpose: Cursed effect for evoker
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

execute as @s[scores={evoker_curse=1..}] at @s run particle minecraft:dust 0 0 0 2.5 ~ ~0.9 ~ 0.25 0.75 0.25 0 1
execute as @s[scores={evoker_curse=1..}] at @s run particle minecraft:end_rod ~ ~0.9 ~ 0.25 0.75 0.25 0 1
execute as @s[scores={evoker_curse=1..}] at @s run effect give @s slowness 1 0 true
execute as @s[scores={evoker_curse=1..}] at @s run effect give @s weakness 1 0 true
execute as @s[scores={evoker_curse=1..}] at @s run effect give @s mining_fatigue 1 0 true
execute as @s[scores={evoker_curse=1..}] at @s run attribute @s minecraft:generic.armor modifier add 234559fa-29af-4c00-91dd-dad35afbb73d enchanter_damage -4 add
execute as @s[scores={evoker_curse=1..}] at @s run scoreboard players remove @s evoker_curse 1
execute as @s[scores={evoker_curse=..0}] at @s run attribute @s minecraft:generic.armor modifier remove 234559fa-29af-4c00-91dd-dad35afbb73d