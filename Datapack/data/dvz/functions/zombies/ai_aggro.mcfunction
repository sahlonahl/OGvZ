# -------------------------------------------
# Called By: dvz:tick
# File Name: ai_aggro
# File Purpose: Gets AI mobs to aggro on dwarves
# Created By: Zaffre
# 
# Created On: 2023.03.03
# Last Modified On: 2023.04.03
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

#execute if entity @e[tag=dvztimer,distance=60..] as @e[tag=dvztimer,distance=60..] run spreadplayers ~ ~ 0 55 false @e[type=#dvz:ai_monster,tag=!aggro]
execute store result entity @s AngryAt int 1 run data get entity @a[tag=dwarves,limit=1,sort=nearest] UUID 1
summon snowball ~ ~2 ~
execute at @s store result entity @e[type=snowball,limit=1,sort=nearest] Owner int 1 run data get entity @a[tag=dwarves,limit=1,sort=nearest] UUID 1
tag @s add aggro