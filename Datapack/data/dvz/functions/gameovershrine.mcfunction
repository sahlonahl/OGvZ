# -------------------------------------------
# Called By: dvz:tick
# File Name: gameoverkill
# File Purpose: Announces game over when the shrine is destroyed
# Created By: Zaffre
# 
# Created On: 2022.01.24
# Last Modified On: 2022.09.11
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: 
# -------------------------------------------

summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;16768256],FadeColors:[I;0]}]}}}}
#summon creeper ~ ~ ~ {Fuse:0,NoAI:1,Tags:["explode"],ExplosionRadius:6b,CustomName:'{"text":"the destruction of the shrine!"}'}
scoreboard players reset @e[type=marker,tag=dvztimer] DVZ.playercount
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1.3
execute as @a at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 1 0.7
execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.5
title @a title {"text":"GAME OVER!","color":"red","bold":false}
title @a subtitle {"text":"All shrine blocks are gone!","color":"red","bold":true}
tellraw @a ["",{"text":"The shrine is destroyed.","color":"blue"},{"text":" THE GAME IS OVER!","bold":true,"color":"green"},{"text":"\nPlease wait for an administrator to reset the game! The server will go down, but not for long! See you next game!","color":"green"}]
tag @e[tag=dvztimer] add gameover
particle cloud ^ ^1 ^ 1 0.25 1 0.7 250

effect give @a[tag=dwarves] glowing 1000000