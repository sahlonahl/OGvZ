# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: allay_pick
# File Purpose: Picks up monster as allay
# Created By: Galactic
# 
# Created On: 2022.04.19
# Last Modified On: 2023.06.27
# Last Modified By: Galactic
#
# Credit to:
#
# Comments: controlled entirely by dvz:tick
# -------------------------------------------

execute as @s[tag=allay,scores={DVZ.allaypick.cool=1..}] run title @s actionbar ["",{"text":" * [Pick] You have ","color":"aqua"},{"score":{"name":"@s","objective":"DVZ.allaypick.cool"},"color":"aqua"},{"text":" seconds remaining!","color":"aqua"}]
execute as @s at @s if entity @s[tag=allay,scores={DVZ.allaypick.cool=0}] unless entity @a[team=zMONSTER,distance=0.1..4,tag=!allay,limit=1,sort=nearest] run title @s actionbar ["",{"text":" * [Pick] You have ","color":"aqua"},{"text":"no valid target!","color":"aqua"}]

execute as @s at @s if entity @s[tag=allay,scores={DVZ.allaypick.cool=0}] if entity @a[team=zMONSTER,distance=0.1..4,tag=!allay,limit=1,sort=nearest] run title @s actionbar {"text":" * [Pick] Poof!","color":"aqua"}
execute as @s at @s if entity @s[tag=allay,scores={DVZ.allaypick.cool=0}] if entity @a[team=zMONSTER,distance=0.1..4,tag=!allay,limit=1,sort=nearest] run playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1 0.7
execute as @s at @s if entity @s[tag=allay,scores={DVZ.allaypick.cool=0}] if entity @a[team=zMONSTER,distance=0.1..4,tag=!allay,limit=1,sort=nearest] run tag @a[team=zMONSTER,distance=0.1..4,tag=!allay,limit=1,sort=nearest] add allay_carried
execute as @s at @s if entity @s[tag=allay,scores={DVZ.allaypick.cool=0}] if entity @a[team=zMONSTER,distance=0.1..4,tag=!allay,limit=1,sort=nearest] run scoreboard players set @s DVZ.allaypick.cool 18
execute as @s at @s if entity @s[tag=allay,scores={DVZ.allaypick.cool=0}] if entity @a[team=zMONSTER,distance=0.1..4,tag=!allay,limit=1,sort=nearest] run scoreboard players set @s DVZ.rclick 0
