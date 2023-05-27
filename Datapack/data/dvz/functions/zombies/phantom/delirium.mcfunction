# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: delirium
# File Purpose: Summons a barrage of custom snowballs that can damage dwarves.
# Created By: Sahlonahl
# 
# Created On: 2022.08.18
# Last Modified On: 2022.10.20
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Modified from snowman snowball
# -------------------------------------------

execute as @s[tag=phantom,scores={DVZ.delir.cool=1..}] run tellraw @s ["",{"text":" * [Delirium] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.delir.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]
execute as @s if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run tellraw @s {"text":" * [Delirium] Poof!","color":"red"}
execute as @s if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run playsound entity.phantom.swoop master @a ~ ~ ~

execute if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run execute positioned 0.0 0 0.0 run summon snowball ^ ^ ^1 {Tags:["projectile"],Item:{id:"minecraft:black_dye",Count:1b}}
execute if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run execute positioned 0.0 0 0.0 run summon snowball ^ ^ ^1 {Tags:["projectile"],Item:{id:"minecraft:black_dye",Count:1b}}
execute if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run execute positioned 0.0 0 0.0 run summon snowball ^ ^ ^1 {Tags:["projectile"],Item:{id:"minecraft:black_dye",Count:1b}}
execute if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run execute positioned 0.0 0 0.0 run summon snowball ^ ^ ^1 {Tags:["projectile"],Item:{id:"minecraft:black_dye",Count:1b}}
execute if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run execute positioned 0.0 0 0.0 run summon snowball ^ ^ ^1 {Tags:["projectile"],Item:{id:"minecraft:black_dye",Count:1b}}
execute if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run execute positioned 0.0 0 0.0 run summon snowball ^ ^ ^1 {Tags:["projectile"],Item:{id:"minecraft:black_dye",Count:1b}}
execute if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run execute positioned 0.0 0 0.0 run summon snowball ^ ^ ^1 {Tags:["projectile"],Item:{id:"minecraft:black_dye",Count:1b}}
execute if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run execute positioned 0.0 0 0.0 run summon snowball ^ ^ ^1 {Tags:["projectile"],Item:{id:"minecraft:black_dye",Count:1b}}
execute if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run function dvz:zombies/phantom/delirium2

execute as @s if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run scoreboard players set @s DVZ.delir.cool 8
execute as @s if entity @s[tag=phantom,scores={DVZ.delir.cool=0}] run scoreboard players set @s DVZ.rclick 0