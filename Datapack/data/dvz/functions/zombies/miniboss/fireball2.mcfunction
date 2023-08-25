# -------------------------------------------
# Called By: dvz:zombies/miniboss/fireball
# File Name: fireball2
# File Purpose: Applies trajectory and accelleration to the ghast fireball 
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

#Reset power
execute as @e[x=0,y=0,z=0,type=fireball,tag=projectile,sort=nearest,limit=1] run data modify entity @s power set from entity @s Pos

#Store trajectory based on being summoned at 0 0 0 (with scalar)
execute store result score #tmpX DVZppos as @e[x=0,y=0,z=0,type=fireball,tag=projectile,sort=nearest,limit=1] run data get entity @s Pos[0] 2500
execute store result score #tmpY DVZppos as @e[x=0,y=0,z=0,type=fireball,tag=projectile,sort=nearest,limit=1] run data get entity @s Pos[1] 2500
execute store result score #tmpZ DVZppos as @e[x=0,y=0,z=0,type=fireball,tag=projectile,sort=nearest,limit=1] run data get entity @s Pos[2] 2500

#Teleports fireball in front of the player
execute anchored eyes run tp @e[x=0,y=0,z=0,type=fireball,tag=projectile,sort=nearest,limit=1] ^ ^ ^1

#Applies new trajectory, scaling back down.
execute store result entity @e[type=fireball,tag=projectile,sort=nearest,limit=1] power[0] double 0.00002 run scoreboard players get #tmpX DVZppos
execute store result entity @e[type=fireball,tag=projectile,sort=nearest,limit=1] power[1] double 0.00002 run scoreboard players get #tmpY DVZppos
execute store result entity @e[type=fireball,tag=projectile,sort=nearest,limit=1] power[2] double 0.00002 run scoreboard players get #tmpZ DVZppos

#Removes this fireball from sorting and adds it to be tested later
tag @e[type=fireball,tag=projectile,sort=nearest,limit=1] add fballage
tag @e[type=fireball,tag=projectile,sort=nearest,limit=1] remove projectile