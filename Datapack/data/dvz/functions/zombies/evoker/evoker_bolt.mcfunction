# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: evoker_bolt
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

execute as @s[tag=evoker,scores={DVZ.evokerbomb.cool=1..}] run title @s actionbar ["",{"text":" * [Cursed Bolt] You have ","color":"#D7B740"},{"score":{"name":"@s","objective":"DVZ.evokerbomb.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#D7B740"}]

execute as @s if entity @s[tag=evoker,scores={DVZ.evokerbomb.cool=0}] run title @s actionbar {"text":" * [Cursed Bolt] Poof!","color":"#D7B740"}
execute as @s if entity @s[tag=evoker,scores={DVZ.evokerbomb.cool=0}] run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 0.1
execute as @s if entity @s[tag=evoker,scores={DVZ.evokerbomb.cool=0}] at @s run execute positioned ~ ~0.8 ~ run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["evoker_bolt"],Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:air",Count:1b}]}
execute as @s if entity @s[tag=evoker,scores={DVZ.evokerbomb.cool=0}] at @s run execute positioned ~ ~0.8 ~ run execute as @e[type=armor_stand,tag=evoker_bolt,distance=..2.5] at @s rotated as @a[distance=..3,tag=evoker,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~

execute as @s if entity @s[tag=evoker,scores={DVZ.evokerbomb.cool=0}] run scoreboard players set @s DVZ.evokerbomb.cool 7
execute as @s if entity @s[tag=evoker,scores={DVZ.evokerbomb.cool=0}] run scoreboard players set @s DVZ.rclick 0