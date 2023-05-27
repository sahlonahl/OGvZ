# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: creeper
# File Purpose: Kills creeper and summons a creeper explosion
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.03.08
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Formerly 'creeper' that didn't use to be in a folder
# -------------------------------------------

execute as @s[tag=creeper] at @s[tag=creeper] run summon creeper ~ ~ ~ {Fuse:0,NoAI:1,Tags:["explode"]}
execute as @s at @s run particle cloud ^ ^1 ^ 1 0.25 1 0.5 50
kill @s[tag=creeper]
kill @e[type=area_effect_cloud,distance=..2]