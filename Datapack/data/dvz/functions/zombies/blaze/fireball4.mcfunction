# -------------------------------------------
# Called By: dvz:zombies/blaze/fireball3
# File Name: fireball4
# File Purpose: Applies trajectory and accelleration to the blaze's explosive fireball 
# Created By: Wilkekids
# 
# Created On: 2024.03.08
# Last Modified On: 2024.03.08
# Last Modified By: Wilkekids
#
# Credit to: Sahlo's Ghast Fireball2
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
tag @e[type=fireball,tag=projectile,sort=nearest,limit=1] remove projectile