# -------------------------------------------
# Called By: rightclick/detect.mcfunction
# File Name: bat_scan
# File Purpose: Scans dwarf for bat
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

execute as @s[tag=bat,scores={DVZ.batscan.cool=1..}] run title @s actionbar ["",{"text":" * [Echolocation] You have ","color":"#331A00"},{"score":{"name":"@s","objective":"DVZ.batscan.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#331A00"}]

execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] run title @s actionbar {"text":" * [Echolocation] Poof!","color":"#331A00"}
execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] run playsound minecraft:block.sculk_sensor.clicking master @s ~ ~ ~ 1 0.5
execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] at @s positioned ^ ^ ^3 run effect give @a[tag=dwarves,distance=..5] glowing 15 6 true
execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] at @s positioned ^ ^ ^5 run effect give @a[tag=dwarves,distance=..7] glowing 15 6 true
execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] at @s positioned ^ ^ ^7 run effect give @a[tag=dwarves,distance=..9] glowing 15 6 true
execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] at @s positioned ^ ^ ^9 run effect give @a[tag=dwarves,distance=..11] glowing 15 6 true
execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] at @s positioned ^ ^ ^11 run effect give @a[tag=dwarves,distance=..13] glowing 15 6 true
execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] at @s positioned ^ ^ ^13 run effect give @a[tag=dwarves,distance=..15] glowing 15 6 true
execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] at @s positioned ^ ^ ^15 run effect give @a[tag=dwarves,distance=..17] glowing 15 6 true
execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] at @s positioned ^ ^ ^17 run effect give @a[tag=dwarves,distance=..19] glowing 15 6 true
execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] at @s positioned ^ ^ ^19 run effect give @a[tag=dwarves,distance=..21] glowing 15 6 true
execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] at @s positioned ^ ^ ^21 run effect give @a[tag=dwarves,distance=..23] glowing 15 6 true

execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] run scoreboard players set @s DVZ.batscan.cool 13
execute as @s if entity @s[tag=bat,scores={DVZ.batscan.cool=0}] run scoreboard players set @s DVZ.rclick 0