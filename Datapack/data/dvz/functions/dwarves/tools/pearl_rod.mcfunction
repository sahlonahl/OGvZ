# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: pearl_rod
# File Purpose: Teleports dwarf to shrine for 50 mana
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: many dependencies on the shrine being covered/uncovered made this difficult to get "just right."
# -------------------------------------------

title @s[tag=dwarves,level=..49] actionbar ["",{"text":" * [Pearl Rod] you need at least 50 mana to use this!","color":"light_purple"}]
title @s[tag=dwarves,scores={DVZ.prod.cool=1..}] actionbar ["",{"text":" * [Pearl Rod] You have ","color":"light_purple"},{"score":{"name":"@s","objective":"DVZ.prod.cool"},"color":"light_purple"},{"text":" seconds remaining!","color":"light_purple"}]
execute as @s[tag=dwarves] at @e[tag=dSpawn,limit=1] unless block ~ ~1 ~ air positioned ~ ~ ~ run tellraw @s[tag=dwarves] ["",{"text":" * [Pearl Rod] The shrine has been covered!","color":"light_purple"}]

execute as @s[tag=dwarves,level=50..,scores={DVZ.prod.cool=0}] at @e[tag=dSpawn,limit=1] if block ~ ~1 ~ air run effect give @s glowing 3
execute as @s[tag=dwarves,level=50..,scores={DVZ.prod.cool=0}] at @e[tag=dSpawn,limit=1] if block ~ ~1 ~ air run effect give @s slowness 3 3
execute as @s[tag=dwarves,level=50..,scores={DVZ.prod.cool=0}] at @e[tag=dSpawn,limit=1] if block ~ ~1 ~ air run tag @s add pearlwarmup

execute as @s[tag=dwarves,level=50..,scores={DVZ.prod.cool=0}] at @e[tag=dSpawn,limit=1] if block ~ ~1 ~ air run xp add @s -50 levels

scoreboard players set @s DVZ.rclick 0