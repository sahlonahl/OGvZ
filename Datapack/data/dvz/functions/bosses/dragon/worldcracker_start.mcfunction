# -------------------------------------------
# Called By: rightclick/detect
# File Name: worldcracker_start
# File Purpose: The dragon boss' world cracker ability. Formerly the dragon's healing ability.
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.08.04
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: formerly the dragon healing ability
# -------------------------------------------
execute as @s if entity @s[tag=playerdragonpick] run title @s actionbar {"text":" * [World cracker] Poof!","color":"red"}
execute as @s if entity @s[tag=playerdragonpick] run tellraw @a ["",{"text":"<","color":"gold"},{"selector":"@p[tag=playerdragonpick]"},{"text":">","color":"gold"},{"text":" FUS","color":"red"}]
execute as @s if entity @s[tag=playerdragonpick] run playsound entity.ender_dragon.growl master @a ~ ~ ~ 100 0.6
execute as @s if entity @s[tag=playerdragonpick] run clear @s carrot_on_a_stick{CustomModelData:32}
execute as @s if entity @s[tag=playerdragonpick] run schedule function dvz:bosses/dragon/worldcracker_2 1s