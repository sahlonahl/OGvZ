# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: ez_fix_slab
# File Purpose: test for criteria for the EZ fix slabs
# Created By: Zaffre
# 
# Created On: 2022.08.19
# Last Modified On: 2022.08.19
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------
execute as @s[tag=dwarves,level=..29] run tellraw @s {"text":" * [EZ-Fix Slab] You need at least 30 Mana!","color":"light_purple"}
execute as @s[tag=dwarves,scores={DVZ.slab.cool=1..}] run tellraw @s ["",{"text":" * [EZ-Fix Slab] You have ","color":"light_purple"},{"score":{"name":"@s","objective":"DVZ.slab.cool"},"color":"light_purple"},{"text":" seconds remaining!","color":"light_purple"}]

execute as @s[tag=dwarves,level=30..,scores={DVZ.slab.cool=0}] at @s run function dvz:dwarves/tools/ez_fix_slab