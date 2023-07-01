# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: pearl
# File Purpose: Teleports enderman where the user is looking 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.13
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=enderman,scores={DVZ.pearl.cool=1..}] run title @s actionbar ["",{"text":" * [Pearl] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.pearl.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s if entity @s[tag=enderman,scores={DVZ.pearl.cool=0}] run title @s actionbar {"text":" * [Pearl] Poof!","color":"red"}
execute as @s if entity @s[tag=enderman,scores={DVZ.pearl.cool=0}] run playsound entity.enderman.teleport master @a ~ ~ ~ 1

execute as @s if entity @s[tag=enderman,scores={DVZ.pearl.cool=0}] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=enderman,scores={DVZ.pearl.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=enderman,scores={DVZ.pearl.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s if entity @s[tag=enderman,scores={DVZ.pearl.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/enderman/pearlloop
execute as @s if entity @s[tag=enderman,scores={DVZ.pearl.cool=0}] run effect give @s resistance 2 100 true
execute as @s if entity @s[tag=enderman,scores={DVZ.pearl.cool=0}] run execute at @e[tag=ray,limit=1,sort=nearest] as @s positioned ~ ~2 ~ run tp ~ ~ ~
execute as @s if entity @s[tag=enderman,scores={DVZ.pearl.cool=0}] run kill @e[type=marker,tag=ray]
execute as @s if entity @s[tag=enderman,scores={DVZ.pearl.cool=0}] run playsound entity.enderman.teleport master @a ~ ~ ~ 1
execute as @s if entity @s[tag=enderman,scores={DVZ.pearl.cool=0}] run scoreboard players set @s DVZ.pearl.cool 10
execute as @s if entity @s[tag=enderman,scores={DVZ.pearl.cool=0}] run scoreboard players set @s DVZ.rclick 0