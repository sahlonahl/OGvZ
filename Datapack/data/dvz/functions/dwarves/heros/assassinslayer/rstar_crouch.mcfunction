# -------------------------------------------
# Called By: dvz:dwarves/heros/assassinslayer/regrowthstar
# File Name: rstar_crouch
# File Purpose: Regrowth Star effect when used while crouched 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.29
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Teleports friendly dwarves to the Assassin Slayer
# -------------------------------------------

execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run tellraw @s {"text":" * [Regrowth Star] Poof!","color":"yellow"}
execute as @s at @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run playsound entity.illusioner.mirror_move master @a ~ ~ ~ 1

execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:dwarves/heros/assassinslayer/rstarloop
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run effect give @a[tag=dwarves,tag=!RSTARuse,distance=..3] slowness 2 100
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run effect give @a[tag=dwarves,tag=!RSTARuse,distance=..3] jump_boost 2 128
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run tp @a[tag=dwarves,tag=!RSTARuse,distance=..3] @p[tag=RSTARuse]
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run kill @e[type=marker,tag=ray]