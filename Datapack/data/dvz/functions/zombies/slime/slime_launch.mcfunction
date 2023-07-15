# -------------------------------------------
# Called By: dvz:zombies/slime/slime_bomb.mcfunction
# File Name: slime_launch
# File Purpose: Throws slime_bomb for slime
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.24
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

summon marker ^ ^ ^1 {Tags:["slime_direction"]}
execute store result score #playerX pos run data get entity @s Pos[0] 2500
execute store result score #playerY pos run data get entity @s Pos[1] 2500
execute store result score #playerZ pos run data get entity @s Pos[2] 2500
execute store result score #targetX pos as @e[type=marker,tag=slime_direction,limit=1] run data get entity @s Pos[0] 2500
execute store result score #targetY pos as @e[type=marker,tag=slime_direction,limit=1] run data get entity @s Pos[1] 2500
execute store result score #targetZ pos as @e[type=marker,tag=slime_direction,limit=1] run data get entity @s Pos[2] 2500
scoreboard players operation #targetX pos -= #playerX pos
scoreboard players operation #targetY pos -= #playerY pos
scoreboard players operation #targetZ pos -= #playerZ pos
summon minecraft:armor_stand ^ ^1 ^1 {Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["slime_bomb","slime_projectile"],Rotation:[0F,0F],ArmorItems:[{},{},{},{id:"minecraft:slime_block",Count:1b}]}
execute store result entity @e[type=armor_stand,tag=slime_projectile,limit=1,sort=nearest] Motion[0] double 0.001 run scoreboard players get #targetX pos
execute store result entity @e[type=armor_stand,tag=slime_projectile,limit=1,sort=nearest] Motion[1] double 0.001 run scoreboard players get #targetY pos
execute store result entity @e[type=armor_stand,tag=slime_projectile,limit=1,sort=nearest] Motion[2] double 0.001 run scoreboard players get #targetZ pos
tag @e[tag=slime_projectile] remove slime_projectile
kill @e[tag=slime_direction]