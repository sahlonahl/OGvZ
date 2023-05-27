# -------------------------------------------
# Called By: dvz:tick
# File Name: gameoverkill
# File Purpose: Announces game over when all dwarves are killed
# Created By: Zaffre
# 
# Created On: 2022.01.24
# Last Modified On: 2022.10.15
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: 
# -------------------------------------------

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1.3
execute as @a at @s run playsound minecraft:entity.villager.death master @s ~ ~ ~ 1 0.8
execute as @a at @s run playsound minecraft:ambient.soul_sand_valley.mood master @s ~ ~ ~ 1 1
execute as @a at @s run playsound minecraft:ambient.soul_sand_valley.mood master @s ~ ~ ~ 1 0.7
execute as @a at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 0.5
title @a title {"text":"GAME OVER!","color":"red","bold":false}
title @a subtitle {"text":"All dwarves are dead!","color":"red","bold":true}
tellraw @a ["",{"text":"There are ","color":"blue"},{"text":"0","color":"green"},{"text":" dwarves left.","color":"blue"},{"text":" THE GAME IS OVER!","bold":true,"color":"green"},{"text":"\nPlease wait for an administrator to reset the game! The server will go down, but not for long! See you next game!","color":"green"}]
tag @e[tag=dvztimer] add gameover
weather thunder
fill ~-2 ~-2 ~-2 ~2 ~ ~2 gilded_blackstone replace gold_block
particle sculk_soul ^ ^ ^ 3 3 3 0.01 100
particle soul_fire_flame ^ ^ ^ 8 8 8 0.01 100
particle campfire_cosy_smoke ^ ^ ^ 1 1 1 0.01 100
summon minecraft:lightning_bolt ~ ~ ~