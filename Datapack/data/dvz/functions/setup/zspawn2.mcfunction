# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: zspawnpoint
# File Purpose: Manually sets a new spawnpoint for zombie classes
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute align xz run summon marker ~.5 ~2 ~.5 {Tags:["zSpawn","zProtect"],Invisible:1b}
particle flame ~ ~ ~ ~ ~ ~ 1 20
execute as @s[tag=admin] run tellraw @s {"text":" * Second Spawn Created!","color":"red"}
scoreboard players set @s DVZ.rclick 0
