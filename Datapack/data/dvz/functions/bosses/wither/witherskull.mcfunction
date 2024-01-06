# -------------------------------------------
# Called By: dvz:rightclick\detect
# File Name: witherskull
# File Purpose: Main attack for the wither boss
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

execute as @s[tag=playerwitherpick,scores={DVZ.Wskull.cool=1..}] run title @s actionbar ["",{"text":" * [Skull] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.Wskull.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s[tag=playerwitherpick,scores={DVZ.Wskull.cool=0},tag=!speeding] run title @s actionbar {"text":" * [Skull] Poof!","color":"red"}
execute as @s[tag=playerwitherpick,scores={DVZ.Wskull.cool=0},tag=!speeding] run playsound entity.wither.shoot master @a ~ ~ ~ 1

execute as @s if entity @s[tag=playerwitherpick,scores={DVZ.Wskull.cool=0},tag=!speeding] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=playerwitherpick,scores={DVZ.Wskull.cool=0},tag=!speeding] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=playerwitherpick,scores={DVZ.Wskull.cool=0},tag=!speeding] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s if entity @s[tag=playerwitherpick,scores={DVZ.Wskull.cool=0},tag=!speeding] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:bosses/wither/witherskullloop
execute as @s if entity @s[tag=playerwitherpick,scores={DVZ.Wskull.cool=0},tag=!speeding] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run effect give @a[tag=dwarves,distance=..1] wither 3 3
execute as @s if entity @s[tag=playerwitherpick,scores={DVZ.Wskull.cool=0},tag=!speeding] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run summon creeper ~ ~ ~ {Tags:["explode"],ExplosionRadius:1b,Fuse:0,NoAI:1,CustomName:'{"text":"Wither Skull"}'}
execute as @s if entity @s[tag=playerwitherpick,scores={DVZ.Wskull.cool=0},tag=!speeding] run kill @e[type=marker,tag=ray]
execute as @s if entity @s[tag=playerwitherpick,scores={DVZ.Wskull.cool=0},tag=!speeding] run scoreboard players set @s DVZ.Wskull.cool 2
execute as @s if entity @s[tag=playerwitherpick,scores={DVZ.Wskull.cool=0},tag=!speeding] run scoreboard players set @s DVZ.rclick 0