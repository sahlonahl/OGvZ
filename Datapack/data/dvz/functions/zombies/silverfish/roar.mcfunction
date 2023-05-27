# -------------------------------------------
# Called By: dvz:zombies/silverfish/roarcheck
# File Name: roar
# File Purpose: Summons silverfish for each infested block that roar affected
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.09.03
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute at @r[tag=dwarves] run summon silverfish ~ ~.1 ~
execute if entity @s[tag=silverfish,scores={DVZ.roar.check=1..}] run scoreboard players remove @s DVZ.roar.check 1
execute if entity @s[tag=silverfish,scores={DVZ.roar.check=1..}] run function dvz:zombies/silverfish/roar
execute if entity @s[tag=silverfish,scores={DVZ.roar.check=1..}] as @a run playsound entity.silverfish.hurt master @s ~ ~ ~ 1 0.7