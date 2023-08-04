# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: dragonbreath
# File Purpose: Dragon breath AoE cloud for the player dragon
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.08.04
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------
execute as @s[tag=playerdragonpick,scores={DVZ.breath.cool=1..}] run title @s actionbar ["",{"text":" * [Breath] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.breath.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s if entity @s[tag=playerdragonpick,scores={DVZ.breath.cool=0}] run title @s actionbar {"text":" * [Breath] Poof!","color":"red"}
execute as @s if entity @s[tag=playerdragonpick,scores={DVZ.breath.cool=0}] run playsound entity.ender_dragon.shoot hostile @a ~ ~ ~ 100 1 0.1

execute as @s if entity @s[tag=playerdragonpick,scores={DVZ.breath.cool=0}] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=playerdragonpick,scores={DVZ.breath.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=playerdragonpick,scores={DVZ.breath.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s if entity @s[tag=playerdragonpick,scores={DVZ.breath.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:bosses/dragon/dragonbreathloop
execute as @s if entity @s[tag=playerdragonpick,scores={DVZ.breath.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run summon area_effect_cloud ~ ~.5 ~ {ReapplicationDelay:20,Radius:5f,DurationOnUse:0,Duration:200,Effects:[{Ambient:0b,ShowIcon:1b,ShowParticles:1b,Duration:0,Id:7b,Amplifier:0b}],Particle:"minecraft:dragon_breath",WaitTime:20}
execute as @s if entity @s[tag=playerdragonpick,scores={DVZ.breath.cool=0}] run kill @e[type=marker,tag=ray]
execute as @s if entity @s[tag=playerdragonpick,scores={DVZ.breath.cool=0}] run scoreboard players set @s DVZ.breath.cool 15
execute as @s if entity @s[tag=playerdragonpick,scores={DVZ.breath.cool=0}] run scoreboard players set @s DVZ.rclick 0