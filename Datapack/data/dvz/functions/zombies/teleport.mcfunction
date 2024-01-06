# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: teleport
# File Purpose: Teleports players on the zombies team to the enderman portal
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.03.11
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Initially given to zombies, but theoretically could be used by a dwarf
# -------------------------------------------

execute as @s[tag=dwarves] run tellraw @s "You are not allowed to use that!"

execute as @s[tag=!dwarves] run effect give @s resistance 8 5
execute as @s[tag=!dwarves] run playsound entity.enderman.teleport master @a ~ ~ ~ 1
execute as @s[tag=!dwarves] run tp @e[tag=ePortalStand,limit=1]

clear @s carrot_on_a_stick{CustomModelData:6,Unbreakable:1b}