# -------------------------------------------
# Called By: dvz:bosses/boss
# File Name: aiwitherstart
# File Purpose: summons ai wither boss
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2024.07.29
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------
kill @a[tag=slay]
tellraw @a[tag=slay] {"text":"\u2620 You have died because you chose to become mob!","color":"gray"}
tag @a[tag=slay] remove slay

data merge entity @e[type=marker,tag=dSpawn,limit=1] {Rotation:[90F,0F]}
execute at @r[tag=dwarves] positioned ~ ~30 ~ run summon minecraft:wither ~ ~ ~
title @a subtitle {"text":"The Wither has spawned!","color":"red"}
title @a title {"text":""}
execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 1.5
bossbar set dvz:witherhealth visible true