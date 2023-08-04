# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: kill
# File Purpose: Kills the nearest dwarf as the assassin
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.08.04
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=assassinpick,scores={DVZ.Akill.cool=1..}] run title @s actionbar ["",{"text":" * [KILL] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.Akill.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s if entity @s[tag=assassinpick,scores={DVZ.Akill.cool=0}] run title @s actionbar {"text":" * [KILL] Stab!","color":"red"}
execute as @s at @s if entity @s[tag=assassinpick,scores={DVZ.Akill.cool=0}] run kill @p[tag=dwarves,tag=!assassinpick,distance=..2]
execute as @s at @s if entity @s[tag=assassinpick,scores={DVZ.Akill.cool=0}] run playsound entity.player.hurt_sweet_berry_bush master @a ~ ~ ~
execute as @s if entity @s[tag=assassinpick,scores={DVZ.Akill.cool=0}] run scoreboard players set @s DVZ.Akill.cool 30