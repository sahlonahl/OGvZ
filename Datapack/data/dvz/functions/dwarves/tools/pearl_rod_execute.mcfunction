# -------------------------------------------
# Called By: dvz:tick
# File Name: pearl_rod_execute
# File Purpose: Teleports dwarf to shrine for 50 mana after the perl rod warmup
# Created By: Wilkekids
# 
# Created On: 2024.08.03
# Last Modified On: 2024.08.03
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: while called by dvz:tick, this file only runs when dvz:dwarves/tools/pearl_rod runs
# -------------------------------------------

execute as @s[scores={DVZ.pearl_warmup=3..}] at @e[tag=dSpawn,limit=1] run playsound entity.zombie_villager.converted master @a ~ ~ ~ 1 2
execute as @s[scores={DVZ.pearl_warmup=3..}] at @e[tag=dSpawn,limit=1] run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 100
execute as @s[scores={DVZ.pearl_warmup=3..}] at @e[tag=dSpawn,limit=1] positioned ~ ~ ~ run tp @s ~ ~ ~ facing entity @e[type=marker,tag=zSpawn,limit=1]
execute as @s[scores={DVZ.pearl_warmup=3..}] at @e[tag=dSpawn,limit=1] run tellraw @a ["",{"text":" * [Pearl Rod] ","color":"light_purple"},{"selector":"@s","color":"light_purple"},{"text":" has teleported to the shrine!","color":"light_purple"}]
execute if entity @s[scores={DVZ.pearl_warmup=3..}] as @e[tag=dSpawn,limit=1] at @s run playsound entity.zombie_villager.converted master @a ~ ~ ~ 1 2
execute if entity @s[scores={DVZ.pearl_warmup=3..}] as @e[tag=dSpawn,limit=1] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 100
execute as @s[scores={DVZ.pearl_warmup=3..}] at @e[tag=dSpawn,limit=1] run scoreboard players set @s DVZ.prod.cool 60
execute as @s[scores={DVZ.pearl_warmup=3..}] at @e[tag=dSpawn,limit=1] run tag @s remove pearlwarmup
execute as @s[scores={DVZ.pearl_warmup=3..}] run scoreboard players set @s DVZ.pearl_warmup 0
