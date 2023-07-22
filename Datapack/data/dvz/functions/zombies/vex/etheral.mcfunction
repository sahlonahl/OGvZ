# -------------------------------------------
# Called By: rightclick/detect
# File Name: etheral
# File Purpose: Moves vex through space (in spectator mode) until maximum distance
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.24
# Last Modified By: Galactic
#
# Credit to:
#
# Comments: controlled entirely by dvz:tick
# -------------------------------------------

execute as @s[tag=vex,scores={DVZ.ffly.cool=1..}] run title @s actionbar ["",{"text":" * [Etheral Form] You have ","color":"#B5E4FF"},{"score":{"name":"@s","objective":"DVZ.ffly.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#B5E4FF"}]

execute as @s if entity @s[tag=vex,scores={DVZ.ffly.cool=0}] run title @s actionbar {"text":" * [Etheral Form] Poof!","color":"#B5E4FF"}
execute as @s if entity @s[tag=vex,scores={DVZ.ffly.cool=0}] run playsound entity.vex.ambient master @a ~ ~ ~ 1 0.1

execute as @s if entity @s[tag=vex,scores={DVZ.ffly.cool=0}] run gamemode spectator
execute as @s if entity @s[tag=vex,scores={DVZ.ffly.cool=0}] run tag @s add fireflyactive
execute as @s if entity @s[tag=vex,scores={DVZ.ffly.cool=0}] run scoreboard players set @s DVZ.ffly.cool 15
execute as @s if entity @s[tag=vex,scores={DVZ.ffly.cool=0}] run scoreboard players set @s DVZ.rclick 0