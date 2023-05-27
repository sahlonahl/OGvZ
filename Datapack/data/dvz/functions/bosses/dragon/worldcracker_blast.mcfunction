# -------------------------------------------
# Called By: dvz:bosses/dragon/worldcracker_final
# File Name: worldcracker_blast
# File Purpose: Shoots fireballs at dwarves
# Created By: Zaffre
# 
# Created On: 2022.04.30
# Last Modified On: 2022.02.08
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @a at @s run playsound entity.ender_dragon.shoot master @a ~ ~ ~ 100 0.7
execute as @a[tag=playerdragonpick] at @a[tag=playerdragonpick] positioned 0.0 0 0.0 run summon fireball ^ ^ ^1 {NoGravity:1b,ExplosionPower:5b,Tags:["projectile","dragonball"],CustomName:'{"text":"WORLD CRACKER","color":"red","bold":true}',Item:{id:"minecraft:popped_chorus_fruit",Count:1b}}
execute as @a[tag=playerdragonpick] at @a[tag=playerdragonpick] run function dvz:bosses/dragon/worldcracker_blast2