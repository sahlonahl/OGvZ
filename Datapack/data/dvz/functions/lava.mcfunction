# -------------------------------------------
# Called By: dvz:tick
# File Name: lava
# File Purpose: dumps the bucket players just picked up back on themselves
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.29
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Initially made to prevent lava-casting
# -------------------------------------------

clear @s lava_bucket
give @s bucket
execute at @s run setblock ~ ~ ~ lava
tellraw @s {"text":"The lava burns through the bucket!","color":"red"}
playsound item.shield.break master @a ~ ~ ~ 1 1