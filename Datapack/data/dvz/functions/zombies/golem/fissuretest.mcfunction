# -------------------------------------------
# Called By: dvz:zombies/golem/fissureloop
# File Name: fissuretest
# File Purpose: Tests to make sure fissureloop can place a wall in an acceptable location
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

#position tests, maximum of 3 movements in either direction
execute as @s at @s unless block ~ ~ ~ #dvz:gothrough run tp ~ ~1 ~
execute as @s at @s if block ~ ~-1 ~ #dvz:gothrough run tp ~ ~-1 ~
execute as @s at @s unless block ~ ~ ~ #dvz:gothrough run tp ~ ~1 ~
execute as @s at @s if block ~ ~-1 ~ #dvz:gothrough run tp ~ ~-1 ~

#if still floating or in a block, kill the ray
execute as @s at @s unless block ~ ~ ~ #dvz:gothrough run tp @s ~ 300 ~
execute as @s at @s if block ~ ~-1 ~ #dvz:gothrough run tp @s ~ 300 ~