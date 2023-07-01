# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: web
# File Purpose: Summons a cube of web where the spider is looking 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.13
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: There is some built in aim assist to make the item more useful.
# -------------------------------------------

execute as @s[tag=spider,scores={DVZ.web.cool=1..}] run title @s actionbar ["",{"text":" * [Web] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.web.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s if entity @s[tag=spider,scores={DVZ.web.cool=0}] run title @s actionbar {"text":" * [Web] Poof!","color":"red"}
execute as @s if entity @s[tag=spider,scores={DVZ.web.cool=0}] run playsound entity.spider.ambient master @a ~ ~ ~ 1 0.7

execute as @s if entity @s[tag=spider,scores={DVZ.web.cool=0}] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=spider,scores={DVZ.web.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=spider,scores={DVZ.web.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s if entity @s[tag=spider,scores={DVZ.web.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/spider/webloop
execute as @s if entity @s[tag=spider,scores={DVZ.web.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] run execute at @s as @s run tp @s ^ ^ ^-0.5
#Aim assist
execute as @s if entity @s[tag=spider,scores={DVZ.web.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run tp @s @p[tag=dwarves,distance=..3,limit=1]
execute as @s if entity @s[tag=spider,scores={DVZ.web.cool=0}] run execute at @e[tag=ray,limit=1,sort=nearest] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 cobweb replace #dvz:gothrough
execute as @s if entity @s[tag=spider,scores={DVZ.web.cool=0}] run kill @e[type=marker,tag=ray]
execute as @s if entity @s[tag=spider,scores={DVZ.web.cool=0}] run scoreboard players set @s DVZ.web.cool 15