# -------------------------------------------
# Called By: bosses/dragon/worldcracker_3
# File Name: worldcracker_final
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
tellraw @a ["",{"text":"<","color":"gold"},{"selector":"@p[tag=playerdragonpick]"},{"text":">","color":"gold"},{"text":" DOOOOOOOOOM!!!","bold":true,"color":"red"}]
playsound entity.ender_dragon.growl master @a ~ ~ ~ 100 1
function dvz:bosses/dragon/worldcracker_blast
schedule function dvz:bosses/dragon/worldcracker_blast 10t append
schedule function dvz:bosses/dragon/worldcracker_blast 20t append
schedule function dvz:bosses/dragon/worldcracker_blast 30t append
schedule function dvz:bosses/dragon/worldcracker_blast 40t append
schedule function dvz:bosses/dragon/worldcracker_blast 50t append
schedule function dvz:bosses/dragon/worldcracker_blast 60t append
schedule function dvz:bosses/dragon/worldcracker_blast 70t append