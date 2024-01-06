# -------------------------------------------
# Called By: dvz:tick
# File Name: totem_destroy
# File Purpose: Removes assassin slayer's totem when diamond block is destroyed
# Created By: Wilkekids
# 
# Created On: 2023.10.04
# Last Modified On: 2023.10.04
# Last Modified By: Wilkekids
#
# Credit to:
#
# Comments: 
# -------------------------------------------

summon firework_rocket ~ ~ ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;16768256],FadeColors:[I;0]}]}}}}

execute as @e[type=marker,tag=slayer_totem,tag=totem_death] at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 1 0.7
execute as @e[type=marker,tag=slayer_totem,tag=totem_death] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.5

tellraw @a ["",{"text":"A slayer totem has been destroyed!","color":"red"}]
particle cloud ^ ^1 ^ 1 0.25 1 0.7 250

execute as @e[type=marker,tag=slayer_totem,tag=totem_death] run kill @s[type=marker,tag=slayer_totem,tag=totem_death]
