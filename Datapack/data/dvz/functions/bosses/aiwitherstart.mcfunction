# -------------------------------------------
# Called By: dvz:bosses/boss
# File Name: aiwitherstart
# File Purpose: summons ai wither boss
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2024.08.03
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments: Bossbar disabled b/c Wither has a natural health bar.
# -------------------------------------------

function dvz:bosses/monster_volunteer

data merge entity @e[type=marker,tag=dSpawn,limit=1] {Rotation:[90F,0F]}
execute at @r[tag=dwarves] positioned ~ ~30 ~ run summon minecraft:wither ~ ~ ~
title @a subtitle {"text":"The Wither has spawned!","color":"red"}
title @a title {"text":""}
execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 1.5
<<<<<<< Updated upstream
#bossbar set dvz:witherhealth visible true
=======
<<<<<<< HEAD
bossbar set dvz:witherhealth visible true
=======
#bossbar set dvz:witherhealth visible true
>>>>>>> 371c060350e40a56fadc54c798caf0dbe65a920e
>>>>>>> Stashed changes
