# -------------------------------------------
# Called By: dvz:zombies/blaze/fireball
# File Name: fireball2
# File Purpose: Applies the "shotgun" effect to blaze's fireball 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.04.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

#Reset power
execute as @e[x=0,y=0,z=0,type=small_fireball,tag=projectile,sort=nearest,limit=1] run data modify entity @s power set from entity @s Pos

#Store trajectory based on being summoned at 0 0 0 (with scalar)
execute store result score #tmpX DVZppos as @e[x=0,y=0,z=0,type=small_fireball,tag=projectile,sort=nearest,limit=1] run data get entity @s Pos[0] 2500
execute store result score #tmpY DVZppos as @e[x=0,y=0,z=0,type=small_fireball,tag=projectile,sort=nearest,limit=1] run data get entity @s Pos[1] 2500
execute store result score #tmpZ DVZppos as @e[x=0,y=0,z=0,type=small_fireball,tag=projectile,sort=nearest,limit=1] run data get entity @s Pos[2] 2500

#Applies random deviation from trajectory based on predicate
execute if predicate dvz:50chance run scoreboard players add #tmpX DVZppos 75
execute if predicate dvz:50chance run scoreboard players add #tmpX DVZppos 60
execute if predicate dvz:50chance run scoreboard players add #tmpX DVZppos 45
execute if predicate dvz:50chance run scoreboard players add #tmpX DVZppos 30
execute if predicate dvz:50chance run scoreboard players add #tmpY DVZppos 75
execute if predicate dvz:50chance run scoreboard players add #tmpY DVZppos 60
execute if predicate dvz:50chance run scoreboard players add #tmpY DVZppos 45
execute if predicate dvz:50chance run scoreboard players add #tmpY DVZppos 30
execute if predicate dvz:50chance run scoreboard players add #tmpZ DVZppos 75
execute if predicate dvz:50chance run scoreboard players add #tmpZ DVZppos 60
execute if predicate dvz:50chance run scoreboard players add #tmpZ DVZppos 45
execute if predicate dvz:50chance run scoreboard players add #tmpZ DVZppos 30
execute if predicate dvz:50chance run scoreboard players remove #tmpX DVZppos 75
execute if predicate dvz:50chance run scoreboard players remove #tmpX DVZppos 60
execute if predicate dvz:50chance run scoreboard players remove #tmpX DVZppos 45
execute if predicate dvz:50chance run scoreboard players remove #tmpX DVZppos 30
execute if predicate dvz:50chance run scoreboard players remove #tmpY DVZppos 75
execute if predicate dvz:50chance run scoreboard players remove #tmpY DVZppos 60
execute if predicate dvz:50chance run scoreboard players remove #tmpY DVZppos 45
execute if predicate dvz:50chance run scoreboard players remove #tmpY DVZppos 30
execute if predicate dvz:50chance run scoreboard players remove #tmpZ DVZppos 75
execute if predicate dvz:50chance run scoreboard players remove #tmpZ DVZppos 60
execute if predicate dvz:50chance run scoreboard players remove #tmpZ DVZppos 45
execute if predicate dvz:50chance run scoreboard players remove #tmpZ DVZppos 30

#Teleports 1 fireball in front of the player
execute anchored eyes run tp @e[x=0,y=0,z=0,type=small_fireball,tag=projectile,sort=nearest,limit=1] ^ ^ ^1

#Applies new trajectory, scaling back down.
execute store result entity @e[type=small_fireball,tag=projectile,sort=nearest,limit=1] power[0] double 0.00004 run scoreboard players get #tmpX DVZppos
execute store result entity @e[type=small_fireball,tag=projectile,sort=nearest,limit=1] power[1] double 0.00004 run scoreboard players get #tmpY DVZppos
execute store result entity @e[type=small_fireball,tag=projectile,sort=nearest,limit=1] power[2] double 0.00004 run scoreboard players get #tmpZ DVZppos


#Removes this fireball from sorting and adds it to be tested later
tag @e[type=small_fireball,tag=projectile,sort=nearest,limit=1] remove projectile

#Rerun the command if there is an unsorted projectile
execute if entity @e[type=small_fireball,tag=projectile] run function dvz:zombies/blaze/fireball2