# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: mindeye
# File Purpose: Dwarven Guard support item effect when right clicked
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.09.18
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Outlines all enemies to see through walls
# -------------------------------------------

execute if entity @s[tag=guardian,level=..29] run tellraw @s {"text":" * [Mind\'s Eye] You need at least 30 Mana!","color":"dark_red"}

execute as @s if entity @s[tag=guardian,level=30..] run execute as @s run effect give @a[tag=zombies] glowing 10 0 true
execute as @s if entity @s[tag=guardian,level=30..] run execute as @s run effect give @s blindness 10 0 true
execute as @s run tellraw @s[tag=guardian,level=30..] {"text":" * [Mind\'s Eye] Poof!","color":"red"}
execute as @s at @s run playsound block.conduit.attack.target master @a ~ ~ ~ 100
execute as @s if entity @s[tag=guardian,level=30..] run execute as @s run xp add @s -30 levels
