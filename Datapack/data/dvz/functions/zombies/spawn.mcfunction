# -------------------------------------------
# Called By: dvz:zombies/spawncheck
# File Name: spawn
# File Purpose: Tests for current boss selection and applies loot from the selection for zombies spawn in
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.04.07
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Minibosses spawn regardless of the boss, but only once.  Once a boss spawns, the "miniboss" tag will prevent more.
# -------------------------------------------

execute if entity @e[tag=dvztimer,tag=aidragonselected] run loot give @s loot dvz:variants/dragonzombies
execute if entity @e[tag=dvztimer,tag=playerdragonselected] run loot give @s loot dvz:variants/dragonzombies
execute if entity @e[tag=dvztimer,tag=aiwitherselected] run loot give @s loot dvz:variants/witherzombies
execute if entity @e[tag=dvztimer,tag=playerwitherselected] run loot give @s loot dvz:variants/witherzombies
execute if entity @e[tag=dvztimer,tag=guardianselected] run loot give @s loot dvz:variants/guardianzombies
execute if entity @e[tag=dvztimer,tag=assassinselected] run loot give @s loot dvz:variants/assassinzombies

execute if entity @e[tag=dvztimer,tag=!miniboss,scores={DVZ.battletimer=12000..}] run loot give @s loot dvz:minibosses
execute if predicate dvz:rain if entity @e[tag=dvztimer,tag=!guardianselected] run loot give @s loot dvz:variants/rain

tp @s ~ ~ ~ facing entity @e[type=marker,tag=dSpawn,limit=1]
clear @s minecraft:carrot_on_a_stick{CustomModelData:8,Unbreakable:1b} 1