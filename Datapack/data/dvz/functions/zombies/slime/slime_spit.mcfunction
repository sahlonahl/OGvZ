# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: slime_spit
# File Purpose: Throws projectile for slime
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

execute as @s[tag=slime,scores={DVZ.slimespit.cool=1..}] run title @s actionbar ["",{"text":" * [Slime Spit] You have ","color":"#63FF78"},{"score":{"name":"@s","objective":"DVZ.slimespit.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#63FF78"}]

execute as @s if entity @s[tag=slime,scores={DVZ.slimespit.cool=0}] run title @s actionbar {"text":" * [Slime Spit] Poof!","color":"#63FF78"}
execute as @s if entity @s[tag=slime,scores={DVZ.slimespit.cool=0}] run playsound minecraft:block.slime_block.place master @a ~ ~ ~ 4 0.1
execute as @s if entity @s[tag=slime,scores={DVZ.slimespit.cool=0}] at @s run execute positioned ~ ~0.8 ~ run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["slime_spit"],Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}]}
execute as @s if entity @s[tag=slime,scores={DVZ.slimespit.cool=0}] at @s run execute positioned ~ ~0.8 ~ run execute as @e[type=armor_stand,tag=slime_spit,distance=..2.5] at @s rotated as @a[distance=..3,tag=slime,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~

execute as @s if entity @s[tag=slime,scores={DVZ.slimespit.cool=0}] run effect give @s slowness 3 3 true
execute as @s if entity @s[tag=slime,scores={DVZ.slimespit.cool=0}] run scoreboard players set @s DVZ.slimespit.cool 1
execute as @s if entity @s[tag=slime,scores={DVZ.slimespit.cool=0}] run scoreboard players set @s DVZ.rclick 0