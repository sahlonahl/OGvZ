# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: dspawnpoint
# File Purpose: Manually sets a new spawnpoint for dwarf classes
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.09.18
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

kill @e[type=marker,tag=dSpawn]
summon marker ~ ~ ~ {Tags:[ray]}
tp @e[tag=ray,limit=1,sort=nearest] @s
tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:setup/dspawnloop
execute as @e[tag=ray,limit=1,sort=nearest] at @s run summon marker ~ ~ ~ {Tags:[dSpawn]}
kill @e[type=marker,tag=ray]
execute at @e[tag=dSpawn] align xyz run tp @e[tag=dSpawn] ~ ~ ~
execute at @e[tag=dSpawn] if block ~ ~ ~-1 air run tp @e[tag=dSpawn] ~ ~ ~1
execute at @e[tag=dSpawn] if block ~-1 ~ ~ air run tp @e[tag=dSpawn] ~1 ~ ~
execute at @e[tag=dSpawn] if block ~ ~-1 ~ obsidian run tp @e[tag=dSpawn] ~ ~1 ~
scoreboard players set @s DVZ.rclick 0