# -------------------------------------------
# Called By: dvz:zombies/golem/fissureloop
# File Name: fissureloop
# File Purpose: Tests positions and makes the actual wall 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.12
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

#position tests
execute as @s at @s run particle minecraft:block dirt ~ ~ ~ 1 2 1 1 100 force
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @p[tag=golem,scores={DVZ.throw.cool=0},distance=2..] run fill ~ ~ ~ ~ ~2 ~ stone replace air
execute as @s at @s if block ~ ~ ~ #dvz:gothrough if entity @p[tag=golem,scores={DVZ.throw.cool=0},distance=2..] run clone ~ ~-5 ~ ~ ~-1 ~ ~ ~-3 ~ masked force
execute as @s at @s run tp @s ^ ^ ^1
execute as @s at @s run function dvz:zombies/golem/fissuretest
execute as @s at @s if entity @p[tag=golem,scores={DVZ.throw.cool=0},distance=..11] run function dvz:zombies/golem/fissureloop