# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: potion
# File Purpose: Warrior Potion effect when right clicked by the Dragon Warrior
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.08.04
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute if entity @s[tag=dwarves,tag=!playerboss,level=..29] run title @s actionbar {"text":" * [Ultimate Potion] You need at least 30 Mana!","color":"dark_red"}
execute if entity @s[tag=playerboss,level=..29] run title @s actionbar {"text":" * YOU ARE TOO BLOODTHIRSTY TO DRINK.","color":"dark_red"}

execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=30..] run execute as @s run effect give @s instant_health 1 10
execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=30..] run execute as @s run effect give @s speed 10 3
execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=30..] run execute as @s run effect give @s strength 10 1
execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=30..] run execute as @s run effect give @s jump_boost 10 1
execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=30..] run execute as @s run effect give @s dolphins_grace 3 0
# execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=30..] run execute as @s run effect give @s slow_falling 10
execute as @s run title @s[tag=dwarves,tag=!playerboss,level=30..] actionbar {"text":" * [Ultimate Potion] Poof!","color":"red"}
execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=30..] run execute as @s run xp add @s -30 levels

execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=20..] run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 1
execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=20..] run playsound minecraft:entity.wandering_trader.reappeared master @a ~ ~ ~