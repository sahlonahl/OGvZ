# -------------------------------------------
# Called By: dvz:zombies/enchanter/enchant_pulse
# File Name: enchant_pulse
# File Purpose: Start a pulse for enchanter
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

execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=1..}] run title @s actionbar ["",{"text":" * [Enchanter's Book] You have ","color":"#732D52"},{"score":{"name":"@s","objective":"DVZ.enchanterbook.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#732D52"}]

execute as @s if entity @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run title @s actionbar {"text":" * [Enchanter's Book] Poof!","color":"#732D52"}
execute as @s if entity @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 1
execute as @s if entity @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.6 2
execute as @s if entity @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run particle minecraft:large_smoke ~ ~0.9 ~ 0.75 1 0.75 0 15
execute as @s if entity @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run particle minecraft:dust 0.5 0.1 0.1 2.5 ~ ~0.9 ~ 0.75 1 0.75 0 15
execute as @s if entity @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run effect give @s glowing 1 0 true
execute as @s if entity @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run effect give @s slowness 1 0 true
execute as @s if entity @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run damage @s 1 minecraft:out_of_world

execute as @s at @s if entity @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] positioned ^ ^7 ^ run execute as @a[team=zMONSTER,distance=..9,limit=1,sort=nearest,tag=!zenchanter,tag=!golem,tag=!enderman,tag=!miniboss,tag=!chargecrp,tag=!pig3,tag=!slime,tag=!evoker] at @s run scoreboard players set @s DVZ.enchanterloop.ticks 30
execute as @s if entity @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run scoreboard players set @s DVZ.enchanterbook.cool 1
execute as @s if entity @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run scoreboard players set @s DVZ.rclick 0