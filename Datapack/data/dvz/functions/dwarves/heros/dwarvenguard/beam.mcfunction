# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: beam
# File Purpose: Dwarven Guard effect offensive item when right clicked
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.17
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=guardian,scores={DVZ.Gbeam.cool=1..}] run tellraw @s ["",{"text":" * [Beam] You have ","color":"gold"},{"score":{"name":"@s","objective":"DVZ.Gbeam.cool"},"color":"gold"},{"text":" seconds remaining!","color":"gold"}]
execute if entity @s[tag=guardian,level=..9] run tellraw @s {"text":" * [Beam] You need at least 10 Mana!","color":"gold"}
tag @s[tag=guardian,scores={DVZ.Gbeam.cool=0},level=10..] add BEAMuse

execute if entity @s[tag=BEAMuse] run tellraw @s {"text":" * [Beam] Poof!","color":"yellow"}
execute if entity @s[tag=BEAMuse] at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 1 2

execute as @s if entity @s[tag=BEAMuse] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=BEAMuse] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=BEAMuse] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s if entity @s[tag=BEAMuse] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:dwarves/heros/dwarvenguard/beamloop
execute as @s if entity @s[tag=BEAMuse] run execute as @e[tag=ray,limit=1,sort=nearest] at @s if entity @a[tag=zombies,distance=..3] run playsound minecraft:entity.experience_orb.pickup neutral @p[tag=BEAMuse] ~ ~ ~ 1 .5
execute as @s if entity @s[tag=BEAMuse] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run effect give @p[tag=zombies,distance=..3] instant_damage 1 1 true
execute as @s if entity @s[tag=BEAMuse] run kill @e[type=marker,tag=ray]

execute if entity @s[tag=BEAMuse] run execute as @s run xp add @s -10 levels
execute if entity @s[tag=BEAMuse] run scoreboard players set @s DVZ.Gbeam.cool 3
tag @s[tag=guardian] remove BEAMuse