# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: speed
# File Purpose: Dwarf speed potion
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute if entity @s[tag=dwarves,level=..14] run title @s actionbar {"text":" * [Speed Potion] You need at least 15 Mana!","color":"dark_blue"}

execute as @s if entity @s[tag=dwarves,level=15..] run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 1
execute as @s if entity @s[tag=dwarves,level=15..] run execute as @s run effect give @s speed 10 2
#execute as @s if entity @s[tag=dwarves,level=15..] run execute as @s run effect give @s dolphins_grace 10
execute as @s run title @s[tag=dwarves,level=15..] actionbar {"text":" * [Speed Potion] Poof!","color":"blue"}
execute as @s if entity @s[tag=dwarves,level=15..] run execute as @s run xp add @s -15 levels
