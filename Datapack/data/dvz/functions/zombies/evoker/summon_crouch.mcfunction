# -------------------------------------------
# Called By: dvz:zombies/evoker/summon
# File Name: summon_crouch
# File Purpose: Performs secondary function of Evoker's summon ability
# Created By: Zaffre
# 
# Created On: 2023.03.14
# Last Modified On: 2023.03.14
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute if entity @s[tag=evoker,scores={DVZ.summon.cool=0}] run playsound entity.evoker.prepare_summon master @s ~ ~ ~ 1 0.8

execute as @s[tag=evoker,scores={DVZ.summon.cool=0},scores={DVZ.crouch=1..}] run tp @e[type=#dvz:ai_monster,sort=furthest,limit=10] @s
execute as @s[tag=evoker,scores={DVZ.summon.cool=0},scores={DVZ.crouch=1..}] at @s run particle reverse_portal ~ ~1 ~ 1 1 1 0.2 100

execute if entity @s[tag=evoker,scores={DVZ.summon.cool=0}] run scoreboard players set @s DVZ.summon.cool 10