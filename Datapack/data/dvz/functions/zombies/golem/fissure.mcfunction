# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: fissue
# File Purpose: Summons a wall to protect the golem and their allies
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.13
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Originally intended to be an ally lobbing ability, DVZ.throw.cool reflects this old idea
# -------------------------------------------

execute as @s[tag=golem,scores={DVZ.throw.cool=1..}] run title @s actionbar ["",{"text":" * [Fissure] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.throw.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s if entity @s[tag=golem,scores={DVZ.throw.cool=0}] run title @s actionbar {"text":" * [Fissure] Poof!","color":"red"}

execute as @s if entity @s[tag=golem,scores={DVZ.throw.cool=0}] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=golem,scores={DVZ.throw.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=golem,scores={DVZ.throw.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~0.5 ~ ~ 0
execute as @s if entity @s[tag=golem,scores={DVZ.throw.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run playsound minecraft:block.chain.break master @a ~ ~1 ~ 2 .25 1
execute as @s if entity @s[tag=golem,scores={DVZ.throw.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/golem/fissureloop
execute as @s if entity @s[tag=golem,scores={DVZ.throw.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~1 ~ 2 .25 0.5
execute as @s if entity @s[tag=golem,scores={DVZ.throw.cool=0}] run kill @e[type=marker,tag=ray]
execute as @s if entity @s[tag=golem,scores={DVZ.throw.cool=0}] run scoreboard players set @s DVZ.throw.cool 5
execute as @s if entity @s[tag=golem,scores={DVZ.throw.cool=0}] run scoreboard players set @s DVZ.rclick 0