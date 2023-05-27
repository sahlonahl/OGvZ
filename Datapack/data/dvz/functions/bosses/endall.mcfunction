# -------------------------------------------
# Called By: dvz:tick
# File Name: endall
# File Purpose: Kills boss when certain amount of dwarves have been killed
# Created By: Sahlonahl
# 
# Created On: 2022.04.28
# Last Modified On: 2023.02.19
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Percent players is assigned in dvz:load
# -------------------------------------------
#Kill bosses
kill @a[tag=playerboss]
kill @e[type=ender_dragon]
kill @e[type=wither]
kill @e[type=elder_guardian]
tellraw @a {"text":"[System] BOSS AUTO-END PROCEDURE ACTIVATED.","bold":true,"color":"white"}

###Execute Branch
#Dragon
execute if entity @e[type=marker,tag=aidragonselected] run scoreboard players set @r[tag=dwarves,tag=!hero,tag=!playerboss] DVZ.dragon 1
execute if entity @e[type=marker,tag=playerdragonselected] run scoreboard players set @r[tag=dwarves,tag=!hero,tag=!playerboss] DVZ.dragon 1
execute if entity @e[type=marker,tag=aidragonselected] run function dvz:dwarves/special/dragonwarrior
execute if entity @e[type=marker,tag=playerdragonselected] run function dvz:dwarves/special/dragonwarrior

#Wither
execute if entity @e[type=marker,tag=aiwitherselected] run scoreboard players set @r[tag=dwarves,tag=!hero,tag=!playerboss] DVZ.wither 1
execute if entity @e[type=marker,tag=playerwitherselected] run scoreboard players set @r[tag=dwarves,tag=!hero,tag=!playerboss] DVZ.wither 1
execute if entity @e[type=marker,tag=aiwitherselected] run function dvz:dwarves/special/witherwarrior
execute if entity @e[type=marker,tag=playerwitherselected] run function dvz:dwarves/special/witherwarrior

#Guardian
execute if entity @e[type=marker,tag=guardianselected] run scoreboard players set @r[tag=dwarves,tag=!hero,tag=!playerboss] DVZ.guardian 1
execute if entity @e[type=marker,tag=guardianselected] run function dvz:dwarves/special/dwarvenguard

#Assassin
execute if entity @e[type=marker,tag=assassinselected] run scoreboard players set @r[tag=dwarves,tag=!hero,tag=!assassinpick] DVZ.kills 1
execute if entity @e[type=marker,tag=assassinselected] run function dvz:dwarves/special/assassinslayer