# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: iceshard
# File Purpose: Freezes a dwarf that the snowman is looking at
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

execute as @s[tag=snowman,scores={DVZ.shard.cool=1..}] run title @s actionbar ["",{"text":" * [Ice Shard] You have ","color":"dark_aqua"},{"score":{"name":"@s","objective":"DVZ.shard.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"dark_aqua"}]

execute as @s if entity @s[tag=snowman,scores={DVZ.shard.cool=0}] run title @s actionbar {"text":" * [Ice Shard] Poof!","color":"aqua"}
execute as @s if entity @s[tag=snowman,scores={DVZ.shard.cool=0}] run playsound entity.player.hurt_freeze master @a ~ ~ ~ 1 0.8

execute as @s if entity @s[tag=snowman,scores={DVZ.shard.cool=0}] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=snowman,scores={DVZ.shard.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=snowman,scores={DVZ.shard.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s if entity @s[tag=snowman,scores={DVZ.shard.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/snowman/iceshardloop
execute as @s if entity @s[tag=snowman,scores={DVZ.shard.cool=0}] run execute at @e[tag=ray,limit=1,sort=nearest] as @s run effect give @p[tag=dwarves,distance=..3] slowness 6 100
execute as @s if entity @s[tag=snowman,scores={DVZ.shard.cool=0}] run execute at @e[tag=ray,limit=1,sort=nearest] as @s run effect give @p[tag=dwarves,distance=..3] jump_boost 4 128
execute as @s if entity @s[tag=snowman,scores={DVZ.shard.cool=0}] run kill @e[type=marker,tag=ray]
execute as @s if entity @s[tag=snowman,scores={DVZ.shard.cool=0}] run scoreboard players set @s DVZ.shard.cool 30
execute as @s if entity @s[tag=snowman,scores={DVZ.shard.cool=0}] run scoreboard players set @s DVZ.rclick 0