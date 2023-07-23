# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: enchant_pulse
# File Purpose: Start a pulse for enchanter
# Created By: Galactic
# 
# Created On: 2023.06.26
# Last Modified On: 2023.07.01
# Last Modified By: Sahlonahl
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=1..}] run title @s actionbar ["",{"text":" * [Fungal Ritual] You have ","color":"#FF0000"},{"score":{"name":"@s","objective":"DVZ.enchanterbook.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#FF0000"}]

execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run title @s actionbar {"text":" * [Fungal Ritual] Poof!","color":"#FF0000"}
execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run playsound minecraft:entity.mooshroom.convert player @a ~ ~ ~ 1 1
execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.6 2
execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run particle minecraft:large_smoke ~ ~0.9 ~ 0.75 1 0.75 0 15
execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run particle minecraft:dust 0.5 0.1 0.1 2.5 ~ ~0.9 ~ 0.75 1 0.75 0 15
execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run effect give @s glowing 2 0 true
execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run effect give @s slowness 2 0 true
execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run damage @s 1 minecraft:out_of_world

execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] at @s positioned ^ ^ ^9 run execute as @a[team=zMONSTER,distance=..12,limit=1,sort=nearest,tag=!zenchanter] at @s run scoreboard players set @s DVZ.enchanterloop.ticks 50

execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run effect give @a[scores={DVZ.enchanterloop.ticks=1..}] glowing 3 0
execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run effect give @a[scores={DVZ.enchanterloop.ticks=1..}] haste 3 2
execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run effect give @a[scores={DVZ.enchanterloop.ticks=1..},tag=!golem,tag=!enderman,tag=!miniboss,tag=!chargecrp,tag=!pig3,tag=!slime,tag=!evoker] resistance 3 1
execute if entity @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] as @a[scores={DVZ.enchanterloop.ticks=1..}] run function dvz:zombies/enchanter/enchant_attribute

execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run scoreboard players set @s DVZ.enchanterbook.cool 2
execute as @s[tag=zenchanter,scores={DVZ.enchanterbook.cool=0}] run scoreboard players set @s DVZ.rclick 0
