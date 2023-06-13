# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: steal
# File Purpose: Steals mana from a dwarf the ocelot is looking at 
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

execute as @s[tag=ocelot,scores={DVZ.steal.cool=1..}] run title @s actionbar ["",{"text":" * [Steal] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.steal.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s if entity @s[tag=ocelot,scores={DVZ.steal.cool=0}] run title @s actionbar {"text":" * [Steal] Poof!","color":"red"}
execute as @s if entity @s[tag=ocelot,scores={DVZ.steal.cool=0}] run playsound entity.cat.stray_ambient master @a ~ ~ ~ 1 0.7

execute as @s if entity @s[tag=ocelot,scores={DVZ.steal.cool=0}] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=ocelot,scores={DVZ.steal.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=ocelot,scores={DVZ.steal.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s if entity @s[tag=ocelot,scores={DVZ.steal.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/ocelot/stealloop
execute as @s if entity @s[tag=ocelot,scores={DVZ.steal.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run xp add @a[distance=..5,tag=dwarves] -95 levels
execute as @s if entity @s[tag=ocelot,scores={DVZ.steal.cool=0}] run execute at @e[tag=ray,limit=1,sort=nearest] as @a[distance=..5,tag=dwarves] run playsound block.beacon.deactivate master @a ~ ~ ~
execute as @s if entity @s[tag=ocelot,scores={DVZ.steal.cool=0}] run execute at @e[tag=ray,limit=1,sort=nearest] as @a[distance=..5,tag=dwarves] run tellraw @s ["",{"text":" * [Steal] Your mana has been drained by an Ocelot! ","color":"dark_red"}]

execute as @s[tag=ocelot,scores={DVZ.steal.cool=0}] at @e[tag=ray,limit=1,sort=nearest] as @a[distance=..5,tag=dwarves] store result entity @a[tag=ocelot,scores={DVZ.steal.cool=0},limit=1,sort=nearest] XpLevel int 1 run data get entity @s XpLevel

execute as @s if entity @s[tag=ocelot,scores={DVZ.steal.cool=0}] run kill @e[type=marker,tag=ray]
execute as @s if entity @s[tag=ocelot,scores={DVZ.steal.cool=0}] run scoreboard players set @s DVZ.steal.cool 10
execute as @s if entity @s[tag=ocelot,scores={DVZ.steal.cool=0}] run scoreboard players set @s DVZ.rclick 0