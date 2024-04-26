# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: mindeye
# File Purpose: Dwarven Guard support item effect when right clicked
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2024.04.25
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: Outlines all enemies to see through walls
# -------------------------------------------

execute if entity @s[tag=guardian,level=..29] run title @s actionbar {"text":" * [Minds Eye] You need at least 30 Mana!","color":"dark_red"}
execute if entity @s[tag=guardian,scores={DVZ.mindseye.cool=1..}] run title @s actionbar ["",{"text":" * [Minds Eye] You have ","color":"gold"},{"score":{"name":"@s","objective":"DVZ.mindseye.cool"},"color":"gold"},{"text":" seconds remaining!","color":"gold"}]

execute as @s if entity @s[tag=guardian,level=30..,scores={DVZ.mindseye.cool=0}] run execute as @s run effect give @a[tag=zombies] glowing 10 0 true
execute as @s if entity @s[tag=guardian,level=30..,scores={DVZ.mindseye.cool=0}] run execute as @s run effect give @s blindness 10 0 true
execute as @s run title @s[tag=guardian,level=30..,scores={DVZ.mindseye.cool=0}] actionbar {"text":" * [Minds Eye] Poof!","color":"red"}
execute as @s if entity @s[tag=guardian,level=30..,scores={DVZ.mindseye.cool=0}] at @s run playsound block.conduit.attack.target master @a ~ ~ ~ 100

execute as @s if entity @s[tag=guardian,level=30..,scores={DVZ.mindseye.cool=0}] run execute as @s run xp add @s -30 levels
execute if entity @s[tag=guardian,level=30..,scores={DVZ.mindseye.cool=0}] run scoreboard players set @s DVZ.mindseye.cool 10
