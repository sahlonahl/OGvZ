# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: barrieritemtest
# File Purpose: Sorts item between dwarves and zombies usage
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments: Dwarf usage has two functions, branched in their other function
# -------------------------------------------

execute as @s if entity @s[tag=dwarves] run function dvz:dwarves/closeportal
execute as @s if entity @s[tag=zombies,tag=chillager] run function dvz:zombies/chillager/invis