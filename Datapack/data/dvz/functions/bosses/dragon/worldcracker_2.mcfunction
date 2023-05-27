# -------------------------------------------
# Called By: bosses/dragon/worldcracker_start
# File Name: worldcracker_2
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
tellraw @a ["",{"text":"<","color":"gold"},{"selector":"@p[tag=playerdragonpick]"},{"text":">","color":"gold"},{"text":" ROH","color":"red"}]
playsound entity.ender_dragon.growl master @a ~ ~ ~ 100 0.7
schedule function dvz:bosses/dragon/worldcracker_3 1s