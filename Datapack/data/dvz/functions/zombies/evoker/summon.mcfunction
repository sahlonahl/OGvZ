# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: summon
# File Purpose: Summons monstahs for the evoker
# Created By: Zaffre
# 
# Created On: 2023.03.09
# Last Modified On: 2023.03.14
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=evoker,scores={DVZ.summon.cool=1..}] run tellraw @s ["",{"text":" * [Summon] You have ","color":"gold"},{"score":{"name":"@s","objective":"DVZ.summon.cool"},"color":"gold"},{"text":" seconds remaining!","color":"gold"}]

execute as @s[tag=evoker,scores={DVZ.summon.cool=0},scores={DVZ.crouch=1..}] at @s run function dvz:zombies/evoker/summon_crouch
execute as @s[tag=evoker,scores={DVZ.summon.cool=0},scores={DVZ.crouch=0}] at @s run function dvz:zombies/evoker/summon_notcrouch


execute if entity @s[tag=evoker,scores={DVZ.summon.cool=0}] run scoreboard players set @s DVZ.rclick 0