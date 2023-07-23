# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: allay_fly
# File Purpose: Moves allay until maximum distance or hits a wall
# Created By: Galactic
# 
# Created On: 2022.04.19
# Last Modified On: 2023.06.27
# Last Modified By: Galactic
#
# Credit to:
#
# Comments: controlled entirely by dvz:tick
# -------------------------------------------

execute as @s[tag=allay,scores={DVZ.fly.cool=1..}] run title @s actionbar ["",{"text":" * [Fly] You have ","color":"aqua"},{"score":{"name":"@s","objective":"DVZ.fly.cool"},"color":"aqua"},{"text":" seconds remaining!","color":"aqua"}]

execute as @s if entity @s[tag=allay,scores={DVZ.fly.cool=0}] run title @s actionbar {"text":" * [Fly] Poof!","color":"aqua"}
execute as @s if entity @s[tag=allay,scores={DVZ.fly.cool=0}] run playsound entity.bat.takeoff master @a ~ ~ ~ 1 1.2
execute as @s if entity @s[tag=allay,scores={DVZ.fly.cool=0}] run effect give @s levitation 1
execute as @s if entity @s[tag=allay,scores={DVZ.fly.cool=0}] run effect give @s slow_falling 1
execute as @s if entity @s[tag=allay,scores={DVZ.fly.cool=0}] run tag @s add flyactive
execute as @s if entity @s[tag=allay,scores={DVZ.fly.cool=0}] run scoreboard players set @s DVZ.fly.cool 16
execute as @s if entity @s[tag=allay,scores={DVZ.fly.cool=0}] run scoreboard players set @s DVZ.rclick 0