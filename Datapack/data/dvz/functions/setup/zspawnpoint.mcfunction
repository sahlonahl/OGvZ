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

kill @e[type=marker,tag=zSpawn]
summon marker ~ ~ ~ {Tags:[ray]}
tp @e[tag=ray,limit=1,sort=nearest] @s
tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:setup/zspawnloop
execute as @e[tag=ray,limit=1,sort=nearest] at @s run summon marker ~ ~2 ~ {Tags:["zSpawn","zProtect"]}
kill @e[type=marker,tag=ray]
scoreboard players set @s DVZ.rclick 0