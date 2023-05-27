# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: honey
# File Purpose: Executes the honey ability
# Created By: Zaffre
# 
# Created On: 2022.06.30
# Last Modified On: 2022.08.17
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: No way! I don't BEE-lieve this!
# -------------------------------------------

execute as @s[tag=bee,scores={DVZ.honey.cool=1..}] run tellraw @s ["",{"text":" * [Honey] You have ","color":"yellow"},{"score":{"name":"@s","objective":"DVZ.honey.cool"},"color":"yellow"},{"text":" seconds remaining!","color":"yellow"}]

execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run tellraw @s {"text":" * [Honey] Poof!","color":"yellow"}
execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run playsound entity.bee.hurt master @a ~ ~ ~ 1 0.8

execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/bee/honeyloop
execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run playsound entity.bee.hurt master @a ~ ~ ~ 1 1.2
execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run particle heart ~ ~ ~ 1 0 1 0.1 50
execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run effect give @a[distance=..4,tag=zombies] instant_health 1 1
execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run effect give @a[distance=..4,tag=zombies] resistance 10 1
execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run effect give @a[distance=..4,tag=zombies] regeneration 10 1
execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run kill @e[type=marker,tag=ray]
execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run scoreboard players set @s DVZ.honey.cool 10
execute as @s if entity @s[tag=bee,scores={DVZ.honey.cool=0}] run scoreboard players set @s DVZ.rclick 0