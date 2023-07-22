# -------------------------------------------
# Called By: rightclick/detect.mcfunction
# File Name: bat_dark
# File Purpose: darks dwarf for bat
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

execute as @s[tag=bat,scores={DVZ.batdark.cool=1..}] run title @s actionbar ["",{"text":" * [Shroud of Night] You have ","color":"#331A00"},{"score":{"name":"@s","objective":"DVZ.batdark.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#331A00"}]

execute as @s if entity @s[tag=bat,scores={DVZ.batdark.cool=0}] run title @s actionbar {"text":" * [Shroud of Night] Poof!","color":"#331A00"}
execute as @s if entity @s[tag=bat,scores={DVZ.batdark.cool=0}] run playsound minecraft:block.sculk_shrieker.shriek master @s ~ ~ ~ 1 1
execute as @s if entity @s[tag=bat,scores={DVZ.batdark.cool=0}] at @s run effect give @a[tag=dwarves,distance=..15] blindness 3 0 true
execute as @s if entity @s[tag=bat,scores={DVZ.batdark.cool=0}] at @s run effect give @a[tag=dwarves,distance=..15] darkness 10 0 true

execute as @s if entity @s[tag=bat,scores={DVZ.batdark.cool=0}] run scoreboard players set @s DVZ.batdark.cool 30
execute as @s if entity @s[tag=bat,scores={DVZ.batdark.cool=0}] run scoreboard players set @s DVZ.rclick 0