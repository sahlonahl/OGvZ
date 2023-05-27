# -------------------------------------------
# Called By: dvz:tick
# File Name: boss
# File Purpose: branch for each boss when timer reaches end
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.05.18
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @r[tag=dwarves] if entity @e[tag=dvztimer,tag=aidragonselected] run function dvz:bosses/aidragonstart
execute as @r[tag=dwarves] if entity @e[tag=dvztimer,tag=playerdragonselected] run function dvz:bosses/playerdragonstart
execute as @r[tag=dwarves] if entity @e[tag=dvztimer,tag=aiwitherselected] run function dvz:bosses/aiwitherstart
execute as @r[tag=dwarves] if entity @e[tag=dvztimer,tag=playerwitherselected] run function dvz:bosses/playerwitherstart
execute as @r[tag=dwarves] if entity @e[tag=dvztimer,tag=guardianselected] run function dvz:bosses/guardianstart
execute as @r[tag=dwarves] if entity @e[tag=dvztimer,tag=assassinselected] run function dvz:bosses/assassinstart

# starting the miniboss timer (currently called in dwarves/special)
#execute as @e[tag=dvztimer,tag=fight] run scoreboard players add @s DVZ.battletimer 1