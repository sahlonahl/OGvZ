# -------------------------------------------
# Called By: bosses/dragon/worldcracker_2
# File Name: worldcracker_3
# File Purpose: Part of the dragon boss' world cracker ability.
# Created By: Zaffre
# 
# Created On: 2022.04.30
# Last Modified On: 2022.08.19
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------
tellraw @a ["",{"text":"<","color":"gold"},{"selector":"@p[tag=playerdragonpick]"},{"text":">","color":"gold"},{"text":" DAH","color":"red"}]
playsound entity.ender_dragon.growl master @a ~ ~ ~ 100 0.8
schedule function dvz:bosses/dragon/worldcracker_final 1s