# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: health
# File Purpose: Healing potion for dwarves
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.04.01
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute if entity @s[tag=dwarves,tag=!playerboss,level=..19] run tellraw @s {"text":" * [Health Potion] You need at least 20 Mana!","color":"dark_red"}

execute as @s if entity @s[tag=dwarves,level=20..] run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 1
execute as @s if entity @s[tag=dwarves,level=20..] run execute as @s run effect give @s instant_health 1 1 true
execute as @s if entity @s[tag=dwarves,level=20..] run execute as @s run effect give @s regeneration 5 3 true
execute as @s run tellraw @s[tag=dwarves,level=20..] {"text":" * [Health Potion] Poof!","color":"red"}
execute as @s if entity @s[tag=dwarves,level=20..] run execute as @s run xp add @s -20 levels
