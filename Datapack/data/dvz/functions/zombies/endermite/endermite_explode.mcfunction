# -------------------------------------------
# Called By: tick.mcfunction
# File Name: endermite_explode
# File Purpose: explodes endermine
# Created By: Galactic
# 
# Created On: 2023.07.06
# Last Modified On: 2023.07.06
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

particle minecraft:explosion ~ ~ ~ 1 1 1 0.1 25
particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0.1 2
particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 100
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.1
summon creeper ~ ~ ~ {Team:"zMONSTER",ExplosionRadius:3b,Fuse:0,ignited:1b,CustomName:'{"text":"Endermine","color":"dark_purple","bold":false,"italic":false}'}
summon creeper ~ ~ ~ {Team:"zMONSTER",ExplosionRadius:3b,Fuse:2,ignited:1b,CustomName:'{"text":"Endermine","color":"dark_purple","bold":false,"italic":false}'}
kill @s
