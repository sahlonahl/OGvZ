# -------------------------------------------
# Called By: shulker/shulker_loopbomb
# File Name: shulker_explodebomb
# File Purpose: Controls projectile for shulker
# Created By: Galactic
# 
# Created On: 2023.07.08
# Last Modified On: 2023.07.08
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

playsound block.chorus_flower.grow player @a ~ ~ ~ 2 1
playsound block.chorus_flower.death player @a ~ ~ ~ 2 1
summon shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Team:"zMONSTER",PersistenceRequired:1b,NoAI:1b,Health:15f,AttachFace:1b,Color:10b,Tags:["shulker_block","shulker_explosive"],CustomName:'{"text":"Shulker Bomb","bold":false,"italic":false}',Attributes:[{Name:generic.max_health,Base:15}]}
summon shulker ~ ~1 ~ {NoGravity:1b,Silent:1b,Team:"zMONSTER",PersistenceRequired:1b,NoAI:1b,Health:15f,AttachFace:1b,Color:10b,Tags:["shulker_block","shulker_explosive"],CustomName:'{"text":"Shulker Bomb","bold":false,"italic":false}',Attributes:[{Name:generic.max_health,Base:15}]}
summon shulker ~ ~2 ~ {NoGravity:1b,Silent:1b,Team:"zMONSTER",PersistenceRequired:1b,NoAI:1b,Health:15f,AttachFace:1b,Color:10b,Tags:["shulker_block","shulker_explosive"],CustomName:'{"text":"Shulker Bomb","bold":false,"italic":false}',Attributes:[{Name:generic.max_health,Base:15}]}
kill @s
