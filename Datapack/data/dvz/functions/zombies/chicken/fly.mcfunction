# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: firefly
# File Purpose: Moves chicken until maximum distance or hits a wall
# Created By: Zaffre
# 
# Created On: 2022.04.19
# Last Modified On: 2022.09.02
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: controlled entirely by dvz:tick
# -------------------------------------------

execute as @s[tag=chicken,scores={DVZ.fly.cool=1..}] run title @s actionbar ["",{"text":" * [Fly] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.fly.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s if entity @s[tag=chicken,scores={DVZ.fly.cool=0}] run title @s actionbar {"text":" * [Fly] Poof!","color":"red"}
execute as @s if entity @s[tag=chicken,scores={DVZ.fly.cool=0}] run playsound entity.bat.takeoff master @a ~ ~ ~ 1 1.2
execute as @s if entity @s[tag=chicken,scores={DVZ.fly.cool=0}] run effect give @s levitation 1
execute as @s if entity @s[tag=chicken,scores={DVZ.fly.cool=0}] run effect give @s slow_falling 1
execute as @s if entity @s[tag=chicken,scores={DVZ.fly.cool=0}] run tag @s add flyactive
execute as @s if entity @s[tag=chicken,scores={DVZ.fly.cool=0}] run scoreboard players set @s DVZ.fly.cool 20
execute as @s if entity @s[tag=chicken,scores={DVZ.fly.cool=0}] run scoreboard players set @s DVZ.rclick 0