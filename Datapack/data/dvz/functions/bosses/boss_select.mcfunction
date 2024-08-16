# -------------------------------------------
# Called By: dvz:bosses/[various]
# File Name: boss_volunteer
# File Purpose: selects player for the boss
# Created By: Wilkekids
# 
# Created On: 2024.08.12
# Last Modified On: 2024.08.12
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

data merge entity @e[type=marker,tag=dSpawn,limit=1] {Rotation:[90F,0F]}
tag @r[tag=dwarves,tag=override] add playerboss
execute unless entity @a[tag=playerboss] run tag @r[tag=dwarves,tag=volunteer] add playerboss
tellraw @a[tag=playerboss] "Thank you for volunteering!"
execute unless entity @a[tag=playerboss] run tag @r[tag=dwarves,tag=!noboss] add playerboss
execute unless entity @a[tag=playerboss] run tag @r[tag=dwarves] add playerboss
tag @a[tag=override] remove override
