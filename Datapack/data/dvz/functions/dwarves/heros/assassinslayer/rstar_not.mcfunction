# -------------------------------------------
# Called By: dvz:dwarves/heros/assassinslayer/regrowthstar
# File Name: rstar_not
# File Purpose: Regrowth Star effect when used while NOT crouched 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Gives dwarves health and mana near where the Assassin Slayer aims
# -------------------------------------------

execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run title @s actionbar {"text":" * [Regrowth Star] Poof!","color":"yellow"}
execute as @s at @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run playsound entity.evoker.prepare_summon master @s ~ ~ ~ 1

execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:dwarves/heros/assassinslayer/rstarloop
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run effect give @a[tag=dwarves,tag=!hero,distance=..5] instant_health 1 1
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run effect give @a[tag=dwarves,tag=!hero,distance=..5] absorption 3 1
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run xp add @a[tag=dwarves,tag=!hero,distance=..5] 50 levels
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run execute as @a[tag=dwarves,tag=!hero,distance=..5] run playsound block.beacon.activate master @a ~ ~ ~ 1 2
execute as @s if entity @s[tag=assassinslayer,scores={DVZ.rstar.cool=0}] run kill @e[type=marker,tag=ray]