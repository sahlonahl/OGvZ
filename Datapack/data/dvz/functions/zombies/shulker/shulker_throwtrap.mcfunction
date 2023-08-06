# -------------------------------------------
# Called By: rightclick/detect.mcfunction
# File Name: shulker_throwtrap
# File Purpose: Throws projectile for shulker
# Created By: Galactic
# 
# Created On: 2023.07.08
# Last Modified On: 2023.07.08
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

execute as @s[tag=shulker,scores={DVZ.shulkertrap.cool=1..}] run title @s actionbar ["",{"text":" * [Summon Bullet] You have ","color":"#CE8FFF"},{"score":{"name":"@s","objective":"DVZ.shulkertrap.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#CE8FFF"}]

execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] run title @s actionbar {"text":" * [Summon Bullet] Poof!","color":"#CE8FFF"}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] run playsound minecraft:entity.shulker.shoot master @s ~ ~ ~ 1 1
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run summon shulker_bullet ~ ~3 ~ {Tags:["shulker_summon"]}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run summon shulker_bullet ~ ~3 ~ {Tags:["shulker_summon"]}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run summon shulker_bullet ~ ~3 ~ {Tags:["shulker_summon"]}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run summon shulker_bullet ~ ~3 ~ {Tags:["shulker_summon"]}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run summon shulker_bullet ~ ~3 ~ {Tags:["shulker_summon"]}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run summon shulker_bullet ~ ~3 ~ {Tags:["shulker_summon"]}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run summon shulker_bullet ~ ~3 ~ {Tags:["shulker_summon"]}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run summon shulker_bullet ~ ~3 ~ {Tags:["shulker_summon"]}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run summon shulker_bullet ~ ~3 ~ {Tags:["shulker_summon"]}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run summon shulker_bullet ~ ~3 ~ {Tags:["shulker_summon"]}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run summon shulker_bullet ~ ~3 ~ {Tags:["shulker_summon"]}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run summon shulker_bullet ~ ~3 ~ {Tags:["shulker_summon"]}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] at @s run execute at @s as @e[type=shulker_bullet,distance=..8] store result entity @s Target int 1 run data get entity @a[tag=dwarves,limit=1,sort=nearest] UUID 1

execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] run scoreboard players set @s DVZ.shulkertrap.cool 15
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkertrap.cool=0}] run scoreboard players set @s DVZ.rclick 0