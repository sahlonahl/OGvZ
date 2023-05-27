# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: pearl_rod
# File Purpose: Teleports dwarf to shrine for 50 mana
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.03.03
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: many dependencies on the shrine being covered/uncovered made this difficult to get "just right."
# -------------------------------------------

tellraw @s[tag=dwarves,level=..49] ["",{"text":" * [Pearl Rod] you need at least 50 mana to use this!","color":"light_purple"}]
tellraw @s[tag=dwarves,scores={DVZ.prod.cool=1..}] ["",{"text":" * [Pearl Rod] You have ","color":"light_purple"},{"score":{"name":"@s","objective":"DVZ.prod.cool"},"color":"light_purple"},{"text":" seconds remaining!","color":"light_purple"}]
execute as @s[tag=dwarves] at @e[tag=dSpawn,limit=1] unless block ~ ~1 ~ air positioned ~ ~ ~ run tellraw @s[tag=dwarves] ["",{"text":" * [Pearl Rod] The shrine has been covered!","color":"light_purple"}]

execute as @s[tag=dwarves,level=50..,scores={DVZ.prod.cool=0}] at @e[tag=dSpawn,limit=1] if block ~ ~1 ~ air at @s run playsound entity.zombie_villager.converted master @a ~ ~ ~ 1 2
execute as @s[tag=dwarves,level=50..,scores={DVZ.prod.cool=0}] at @e[tag=dSpawn,limit=1] if block ~ ~1 ~ air at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 100
execute as @s[tag=dwarves,level=50..,scores={DVZ.prod.cool=0}] at @e[tag=dSpawn,limit=1] if block ~ ~1 ~ air positioned ~ ~ ~ run tp @s ~ ~ ~ facing entity @e[type=marker,tag=zSpawn,limit=1]
execute as @s[tag=dwarves,level=50..,scores={DVZ.prod.cool=0}] at @e[tag=dSpawn,limit=1] if block ~ ~1 ~ air run tellraw @a ["",{"text":" * [Pearl Rod] ","color":"light_purple"},{"selector":"@s","color":"light_purple"},{"text":" has teleported to the shrine!","color":"light_purple"}]
execute if entity @s[tag=dwarves,level=50..,scores={DVZ.prod.cool=0}] as @e[tag=dSpawn,limit=1] at @s if block ~ ~1 ~ air run playsound entity.zombie_villager.converted master @a ~ ~ ~ 1 2
execute if entity @s[tag=dwarves,level=50..,scores={DVZ.prod.cool=0}] as @e[tag=dSpawn,limit=1] at @s if block ~ ~1 ~ air run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 100

execute as @s[tag=dwarves,level=50..,scores={DVZ.prod.cool=0}] at @e[tag=dSpawn,limit=1] if block ~ ~1 ~ air run xp add @s -50 levels
execute as @s[tag=dwarves,level=50..,scores={DVZ.prod.cool=0}] at @e[tag=dSpawn,limit=1] if block ~ ~1 ~ air run scoreboard players set @s DVZ.prod.cool 60
scoreboard players set @s DVZ.rclick 0