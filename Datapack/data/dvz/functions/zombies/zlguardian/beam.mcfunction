# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: beam
# File Purpose: Damages a dwarf where the guardian class is looking.
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.08.24
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=zlguardian,scores={DVZ.zlbeam.cool=1..}] run title @s actionbar ["",{"text":" * [Beam] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.zlbeam.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s if entity @s[tag=zlguardian,scores={DVZ.zlbeam.cool=0}] run title @s actionbar {"text":" * [Beam] Poof!","color":"red"}
execute as @s if entity @s[tag=zlguardian,scores={DVZ.zlbeam.cool=0}] run tag @s add zlBEAMuse
execute as @s if entity @s[tag=zlguardian,scores={DVZ.zlbeam.cool=0}] run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 2

execute as @s if entity @s[tag=zlguardian,scores={DVZ.zlbeam.cool=0}] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=zlguardian,scores={DVZ.zlbeam.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=zlguardian,scores={DVZ.zlbeam.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s if entity @s[tag=zlguardian,scores={DVZ.zlbeam.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/zlguardian/beamloop
execute as @s if entity @s[tag=zlguardian,scores={DVZ.zlbeam.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s if entity @a[tag=dwarves,distance=..3] run function dvz:zombies/zlguardian/beamsound
execute as @s if entity @s[tag=zlguardian,scores={DVZ.zlbeam.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run effect give @p[tag=dwarves,distance=..3] instant_damage 1 1 true
execute as @s if entity @s[tag=zlguardian,scores={DVZ.zlbeam.cool=0}] run kill @e[type=marker,tag=ray]
execute as @s if entity @s[tag=zlguardian,scores={DVZ.zlbeam.cool=0}] run scoreboard players set @s DVZ.zlbeam.cool 5
execute as @s if entity @s[tag=zlguardian,scores={DVZ.zlbeam.cool=0}] run scoreboard players set @s DVZ.rclick 0
tag @s[tag=zlguardian] remove zlBEAMuse