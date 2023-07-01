# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: jump
# File Purpose: Jump Boost potion for dwarves
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.24
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute if entity @s[tag=dwarves,level=..14] run title @s actionbar {"text":" * [Jump Potion] You need at least 15 Mana!","color":"dark_green"}

execute as @s if entity @s[tag=dwarves,level=15..] run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 1
execute as @s if entity @s[tag=dwarves,level=15..] run execute as @s run effect give @s jump_boost 10 3
execute as @s if entity @s[tag=dwarves,level=15..] run execute as @s run effect give @s slow_falling 10
execute as @s run title @s[tag=dwarves,level=15..] actionbar {"text":" * [Jump Potion] Poof!","color":"green"}
execute as @s if entity @s[tag=dwarves,level=15..] run execute as @s run xp add @s -15 levels