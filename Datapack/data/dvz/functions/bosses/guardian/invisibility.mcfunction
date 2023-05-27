# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: invisibility
# File Purpose: guardian boss becomes invisible
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.08.19
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s if entity @s[tag=playerguardianpick] run tellraw @s {"text":" * [Invisibility] Poof!","color":"red"}
execute as @s if entity @s[tag=playerguardianpick] run playsound entity.illusioner.prepare_mirror master @a ~ ~ ~ 100
execute as @s if entity @s[tag=playerguardianpick] run effect give @e[tag=tpguardian,limit=1] invisibility 30 0 true
execute as @s if entity @s[tag=playerguardianpick] run clear @s carrot_on_a_stick{CustomModelData:44}