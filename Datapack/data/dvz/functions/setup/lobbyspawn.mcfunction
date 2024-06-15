# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: lobbyspawn
# File Purpose: Manually sets a new lobby for waiting players
# Created By: Wilkekids
# 
# Created On: 2024.06.16
# Last Modified On: 2024.06.16
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

kill @e[type=marker,tag=worldspawn]
summon marker ~ ~ ~ {Tags:[ray]}
tp @e[tag=ray,limit=1,sort=nearest] @s
tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:setup/lobbyspawnloop
execute as @e[tag=ray,limit=1,sort=nearest] at @s run summon marker ~ ~2 ~ {Tags:[worldspawn]}
kill @e[type=marker,tag=ray]
scoreboard players set @s DVZ.rclick 0