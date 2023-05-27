# -------------------------------------------
# Called By: dvz:zombies/evoker/throw
# File Name: throw_spell2
# File Purpose: Applies motion to projectile
# Created By: Zaffre
# 
# Created On: 2023.03.09
# Last Modified On: 2023.03.14
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

#Reset power
execute as @e[y=400,type=wither_skull,tag=projectile,sort=nearest,limit=1] run data modify entity @s power set from entity @s Pos

#Store trajectory based on being summoned at 0 0 0 (with scalar)
execute store result score #tmpX DVZppos as @e[y=400,type=wither_skull,tag=projectile,sort=nearest,limit=1] run data get entity @s Pos[0] 2500
execute store result score #tmpY DVZppos as @e[y=400,type=wither_skull,tag=projectile,sort=nearest,limit=1] run data get entity @s Pos[1] 2500
execute store result score #tmpZ DVZppos as @e[y=400,type=wither_skull,tag=projectile,sort=nearest,limit=1] run data get entity @s Pos[2] 2500

#Teleports wither skull in front of the player
execute anchored eyes run tp @e[y=400,type=wither_skull,tag=projectile,sort=nearest,limit=1] ^ ^ ^1

#Applies new trajectory, scaling back down.
execute store result entity @e[type=wither_skull,tag=projectile,sort=nearest,limit=1] power[0] double 0.00004 run scoreboard players get #tmpX DVZppos
execute store result entity @e[type=wither_skull,tag=projectile,sort=nearest,limit=1] power[1] double 0.00004 run scoreboard players get #tmpY DVZppos
execute store result entity @e[type=wither_skull,tag=projectile,sort=nearest,limit=1] power[2] double 0.00004 run scoreboard players get #tmpZ DVZppos

#Removes this wither skull from sorting and adds it to be tested later
tag @e[type=wither_skull,tag=projectile,sort=nearest,limit=1] remove projectile