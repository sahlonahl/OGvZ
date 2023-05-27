# -------------------------------------------
# Called By: dvz:bosses/dragon/worldcracker_blast
# File Name: worldcracker_blast2
# File Purpose: Shoots fireballs at dwarves
# Created By: Zaffre
# 
# Created On: 2022.04.30
# Last Modified On: 2023.02.08
# Last Modified By: Zaffre
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

#Teleports 1 fireball in front of the player
execute anchored eyes run tp @e[x=0,y=0,z=0,type=fireball,tag=projectile,sort=nearest,limit=1] ^ ^ ^1

#Applies new trajectory, scaling back down.
execute store result entity @e[type=fireball,tag=projectile,sort=nearest,limit=1] power[0] double 0.00004 run scoreboard players get #tmpX DVZppos
execute store result entity @e[type=fireball,tag=projectile,sort=nearest,limit=1] power[1] double 0.00004 run scoreboard players get #tmpY DVZppos
execute store result entity @e[type=fireball,tag=projectile,sort=nearest,limit=1] power[2] double 0.00004 run scoreboard players get #tmpZ DVZppos


#Removes this fireball from sorting and adds it to be tested later
tag @e[type=fireball,tag=projectile,sort=nearest,limit=1] remove projectile

#Rerun the command if there is an unsorted projectile
execute if entity @e[type=fireball,tag=projectile] run function dvz:bosses/dragon/worldcracker_blast2