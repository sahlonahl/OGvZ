# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: firefly
# File Purpose: Moves blaze through space (in spectator mode) until maximum distance or hits a wall
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.07.06
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: controlled entirely by dvz:tick
# -------------------------------------------

execute as @s[tag=blaze,scores={DVZ.ffly.cool=1..}] run title @s actionbar ["",{"text":" * [Firefly] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.ffly.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s if entity @s[tag=blaze,scores={DVZ.ffly.cool=0}] run title @s actionbar {"text":" * [Firefly] Poof!","color":"red"}
execute as @s if entity @s[tag=blaze,scores={DVZ.ffly.cool=0}] run playsound entity.blaze.ambient master @a ~ ~ ~ 1 2

execute as @s if entity @s[tag=blaze,scores={DVZ.ffly.cool=0}] run gamemode spectator
execute as @s if entity @s[tag=blaze,scores={DVZ.ffly.cool=0}] run tag @s add fireflyactive
execute as @s if entity @s[tag=blaze,scores={DVZ.ffly.cool=0}] run scoreboard players set @s DVZ.ffly.cool 15
execute as @s if entity @s[tag=blaze,scores={DVZ.ffly.cool=0}] run scoreboard players set @s DVZ.rclick 0