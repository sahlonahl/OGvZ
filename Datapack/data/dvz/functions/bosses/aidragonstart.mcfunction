# -------------------------------------------
# Called By: dvz:bosses/boss
# File Name: aidragonstart
# File Purpose: summons ai dragon boss
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.02.19
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

function dvz:bosses/monster_volunteer

data merge entity @e[type=marker,tag=dSpawn,limit=1] {Rotation:[90F,0F]}
execute at @r[tag=dwarves] positioned ~ ~30 ~ run summon minecraft:ender_dragon ~ ~ ~ {DragonPhase:0}
title @a subtitle {"text":"The Dragon has spawned!","color":"red"}
title @a title {"text":""}
execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 1.5
bossbar set dvz:dragonhealth visible true