# -------------------------------------------
# Called By: rightclick/detect
# File Name: brew_buff
# File Purpose: Create buff potion for witch class
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

execute as @s[tag=witch,scores={DVZ.witchbuff.cool=1..}] run title @s actionbar ["",{"text":" * [Soothing Alchemy] You have ","color":"#510080"},{"score":{"name":"@s","objective":"DVZ.witchbuff.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#510080"}]

execute as @s if entity @s[tag=witch,scores={DVZ.witchbuff.cool=0}] run title @s actionbar {"text":" * [Soothing Alchemy] Poof!","color":"#510080"}
execute as @s if entity @s[tag=witch,scores={DVZ.witchbuff.cool=0}] run playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 2 0.1

execute as @s at @s if entity @s[tag=witch,scores={DVZ.witchbuff.cool=0}] run execute as @a[team=zMONSTER,distance=..8] run loot give @s loot dvz:classes/witch_buff
execute as @s if entity @s[tag=witch,scores={DVZ.witchbuff.cool=0}] run scoreboard players set @s DVZ.witchbuff.cool 20
execute as @s if entity @s[tag=witch,scores={DVZ.witchbuff.cool=0}] run scoreboard players set @s DVZ.rclick 0