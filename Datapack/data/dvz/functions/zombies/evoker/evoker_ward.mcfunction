# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: evoker_ward
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.28
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

execute as @s[tag=evoker,scores={DVZ.evokerward.cool=1..}] run title @s actionbar ["",{"text":" * [Enchanted Ward] You have ","color":"#D7B740"},{"score":{"name":"@s","objective":"DVZ.evokerward.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#D7B740"}]

execute as @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run title @s actionbar {"text":" * [Enchanted Ward] Poof!","color":"#D7B740"}
execute as @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run playsound entity.evoker.prepare_wololo master @a ~ ~ ~ 7 1
execute as @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run playsound block.anvil.use master @a ~ ~ ~ 7 0.7
execute as @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run playsound block.beacon.power_select master @a ~ ~ ~ 7 1
execute as @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run playsound item.armor.equip_netherite master @a ~ ~ ~ 7 0.7

execute as @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run particle minecraft:end_rod ~ ~1 ~ 2.5 1 2.5 0.01 100
execute as @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run particle dust 1.000 0.800 0.000 2 ~ ~1 ~ 2.5 1 2.5 0.01 100

execute as @s at @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run effect give @e[team=zMONSTER,distance=0.1..15] instant_health 1 1 true
execute as @s at @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run effect give @e[team=zMONSTER,distance=0.1..15] regeneration 10 1 true
execute as @s at @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run effect give @e[team=zMONSTER,distance=0.1..15] resistance 15 0 true
execute as @s at @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run effect give @a[team=zMONSTER,distance=0.1..15] absorption 15 4 true

execute as @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run scoreboard players set @s DVZ.evokerward.cool 45
execute as @s if entity @s[tag=evoker,scores={DVZ.evokerward.cool=0}] run scoreboard players set @s DVZ.rclick 0