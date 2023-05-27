# -------------------------------------------
# Called By: dvz:zombies/evoker/summon
# File Name: summon_crouch
# File Purpose: Performs primary function of Evoker's summon ability
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

execute as @s[tag=evoker,scores={DVZ.summon.cool=0},scores={DVZ.crouch=0}] run summon marker ~ ~ ~ {Tags:["evocation"]}

execute if entity @s[tag=evoker,scores={DVZ.summon.cool=0}] run scoreboard players set @s DVZ.summon.cool 10