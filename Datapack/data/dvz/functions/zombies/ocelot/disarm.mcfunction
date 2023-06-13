# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: weakness
# File Purpose: Applies weakness to surrounding dwarves
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.06.13
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=ocelot,scores={DVZ.disarm.cool=1..}] run title @s actionbar ["",{"text":" * [Disarm] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.disarm.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s if entity @s[tag=ocelot,scores={DVZ.disarm.cool=0}] run title @s actionbar {"text":" * [Disarm] Poof!","color":"red"}

execute as @s if entity @s[tag=ocelot,scores={DVZ.disarm.cool=0}] run playsound entity.cat.hiss master @a ~ ~ ~ 1 0.9
execute as @s if entity @s[tag=ocelot,scores={DVZ.disarm.cool=0}] run tellraw @a[tag=dwarves,distance=..3] {"text":"An Ocelot has temporarily disarmed you!","color":"red"}
execute as @s if entity @s[tag=ocelot,scores={DVZ.disarm.cool=0}] run effect give @a[tag=dwarves,distance=..3] weakness 10 1
execute as @s if entity @s[tag=ocelot,scores={DVZ.disarm.cool=0}] run effect give @a[tag=dwarves,distance=..3] slowness 10 0
execute as @s if entity @s[tag=ocelot,scores={DVZ.disarm.cool=0}] run scoreboard players set @s DVZ.disarm.cool 20
execute as @s if entity @s[tag=ocelot,scores={DVZ.disarm.cool=0}] run scoreboard players set @s DVZ.rclick 0