# -------------------------------------------
# Called By: dvz:zombies/phantom/delirium
# File Name: delirium2
# File Purpose: Applies applies trajectory and random motion to the phantom's custom snowball
# Created By: Sahlonahl
# 
# Created On: 2022.08.18
# Last Modified On: 2022.08.18
# Last Modified By: Sahlonahl
#
# Credit to:
#
# Comments:
# -------------------------------------------

#Reset motion
execute as @e[x=0,y=0,z=0,type=snowball,tag=projectile,sort=nearest,limit=1] run data modify entity @s Motion set from entity @s Pos

#Store trajectory based on being summoned at 0 0 0 (with scalar)
execute store result score #tmpX DVZppos as @e[x=0,y=0,z=0,type=snowball,tag=projectile,sort=nearest,limit=1] run data get entity @s Pos[0] 1250
execute store result score #tmpY DVZppos as @e[x=0,y=0,z=0,type=snowball,tag=projectile,sort=nearest,limit=1] run data get entity @s Pos[1] 1250
execute store result score #tmpZ DVZppos as @e[x=0,y=0,z=0,type=snowball,tag=projectile,sort=nearest,limit=1] run data get entity @s Pos[2] 1250

#Applies random deviation from trajectory based on predicate
execute if predicate dvz:50chance run scoreboard players add #tmpX DVZppos 45
execute if predicate dvz:50chance run scoreboard players add #tmpX DVZppos 30
execute if predicate dvz:50chance run scoreboard players add #tmpY DVZppos 45
execute if predicate dvz:50chance run scoreboard players add #tmpY DVZppos 30
execute if predicate dvz:50chance run scoreboard players add #tmpZ DVZppos 45
execute if predicate dvz:50chance run scoreboard players add #tmpZ DVZppos 30
execute if predicate dvz:50chance run scoreboard players remove #tmpX DVZppos 45
execute if predicate dvz:50chance run scoreboard players remove #tmpX DVZppos 30
execute if predicate dvz:50chance run scoreboard players remove #tmpY DVZppos 45
execute if predicate dvz:50chance run scoreboard players remove #tmpY DVZppos 30
execute if predicate dvz:50chance run scoreboard players remove #tmpZ DVZppos 45
execute if predicate dvz:50chance run scoreboard players remove #tmpZ DVZppos 30

#Teleports 1 snowball in front of the player
execute anchored eyes run tp @e[x=0,y=0,z=0,type=snowball,tag=projectile,sort=nearest,limit=1] ^ ^ ^1.5

#Applies new trajectory, scaling back down.
execute store result entity @e[type=snowball,tag=projectile,sort=nearest,limit=1] Motion[0] double 0.001 run scoreboard players get #tmpX DVZppos
execute store result entity @e[type=snowball,tag=projectile,sort=nearest,limit=1] Motion[1] double 0.001 run scoreboard players get #tmpY DVZppos
execute store result entity @e[type=snowball,tag=projectile,sort=nearest,limit=1] Motion[2] double 0.001 run scoreboard players get #tmpZ DVZppos


#Removes this snowball from sorting and adds it to be tested later
tag @e[type=snowball,tag=projectile,sort=nearest,limit=1] add deliriumeffect
tag @e[type=snowball,tag=projectile,sort=nearest,limit=1] remove projectile

#Rerun the command if there is an unsorted projectile
execute if entity @e[type=snowball,tag=projectile] run function dvz:zombies/phantom/delirium2