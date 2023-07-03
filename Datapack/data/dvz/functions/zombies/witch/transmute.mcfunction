# -------------------------------------------
# Called By: rightclick/detect
# File Name: Transmutation
# File Purpose: Initiates transmutation for witch class
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.24
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

execute as @s[tag=witch,scores={DVZ.witchfrog.cool=1..}] run title @s actionbar ["",{"text":" * [Transmutation] You have ","color":"#510080"},{"score":{"name":"@s","objective":"DVZ.witchfrog.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#510080"}]
execute as @s at @s if entity @s[tag=witch,scores={DVZ.witchfrog.cool=0}] unless entity @a[team=zMONSTER,distance=0.1..5] run title @s actionbar ["",{"text":" * [Transmutation] You have ","color":"#510080"},{"text":"no valid target!","color":"#510080"}]

execute as @s at @s if entity @s[tag=witch,scores={DVZ.witchfrog.cool=0}] if entity @a[team=zMONSTER,distance=0.1..5] run title @s actionbar {"text":" * [Transmutation] Poof!","color":"#510080"}
execute as @s at @s if entity @s[tag=witch,scores={DVZ.witchfrog.cool=0}] if entity @a[team=zMONSTER,distance=0.1..5] run playsound minecraft:entity.witch.celebrate player @a ~ ~ ~ 2 1
execute as @s at @s if entity @s[tag=witch,scores={DVZ.witchfrog.cool=0}] if entity @a[team=zMONSTER,distance=0.1..5] run playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 2 2

execute as @s at @s at @s if entity @s[tag=witch,scores={DVZ.witchfrog.cool=0}] if entity @a[team=zMONSTER,distance=0.1..5] run execute as @a[team=zMONSTER,distance=0.1..5,limit=1,sort=nearest] at @s run function dvz:zombies/witch/transmute_start
execute as @s at @s if entity @s[tag=witch,scores={DVZ.witchfrog.cool=0}] if entity @a[team=zMONSTER,distance=0.1..5] run scoreboard players set @s DVZ.witchfrog.cool 25
execute as @s at @s if entity @s[tag=witch,scores={DVZ.witchfrog.cool=0}] if entity @a[team=zMONSTER,distance=0.1..5] run scoreboard players set @s DVZ.rclick 0