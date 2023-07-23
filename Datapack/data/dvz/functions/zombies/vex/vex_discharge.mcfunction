# -------------------------------------------
# Called By: advancement/vex_discharge
# File Name: vex_discharge
# File Purpose: remove double damage for vex
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.24
# Last Modified By: Galactic
#
# Credit to:
#
# Comments: 
# -------------------------------------------

execute as @s[tag=phantom_killer] at @s run attribute @s minecraft:generic.attack_damage modifier remove d2578518-1f7c-4c10-9145-ff7145eae37b
execute as @s[tag=phantom_killer] at @s run playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 1 1.25
tag @s remove phantom_killer
advancement revoke @s only dvz:vex_discharge