# -------------------------------------------
# Called By: dvz:zombies/creeper/charge_start
# File Name: charge_boom
# File Purpose: Kills creeper and summons a creeper explosion
# Created By: Zaffre
# 
# Created On: 2023.03.08
# Last Modified On: 2023.03.08
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=creeper] at @s[tag=creeper] run summon creeper ~ ~ ~ {powered:1b,Fuse:0,NoAI:1,Tags:["explode"],CustomName:'{"text":"Charged Creeper","color":"aqua"}'}
execute as @s[tag=creeper] at @s run summon lightning_bolt ~ ~ ~
execute as @s[tag=creeper] at @s[tag=creeper] run particle campfire_cosy_smoke ^ ^1 ^ 1 1 1 1 100

kill @s[tag=creeper]