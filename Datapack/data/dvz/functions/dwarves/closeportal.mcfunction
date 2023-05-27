# -------------------------------------------
# Called By: dvz:barrieritemtest
# File Name: closeportal
# File Purpose: Branch for the "barrier" item
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments: the fight tag indicates when the zombies are released after the boss is dead.
# -------------------------------------------

execute as @s[tag=fight] run function dvz:dwarves/closeportalfight
execute as @s[tag=!fight] run function dvz:dwarves/closeportalclass