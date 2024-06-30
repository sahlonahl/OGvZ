# -------------------------------------------
# Called By: dvz:setup/lobbyspawn
# File Name: lobbyspawnloop
# File Purpose: Raycasting loop
# Created By: Wilkekids
# 
# Created On: 2024.06.16
# Last Modified On: 2024.06.16
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s at @s if block ~ ~ ~ #dvz:gothrough run tp @s ^ ^ ^0.5
execute as @s at @s if block ~ ~ ~ #dvz:gothrough run particle minecraft:wax_on ~ ~ ~ 0 0 0 .01 10 force
execute as @s at @s if block ~ ~ ~ #dvz:gothrough run function dvz:setup/lobbyspawnloop