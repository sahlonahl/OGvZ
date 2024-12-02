# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: fireball3
# File Purpose: Shoots an explosive fireball at dwarves
# Created By: Wilkekids
# 
# Created On: 2024.03.08
# Last Modified On: 2024.03.08
# Last Modified By: Wilkekids
#
# Credit to: Sahlo's ghast fireball
#
# Comments:
# -------------------------------------------

execute as @s[tag=blaze,scores={DVZ.fball3.cool=1..}] run title @s actionbar ["",{"text":" * [Explosive Fireball] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.fball3.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]
execute as @s if entity @s[tag=blaze,scores={DVZ.fball3.cool=0}] run title @s actionbar {"text":" * [Explosive Fireball] Poof!","color":"red"}

execute if entity @s[tag=blaze,scores={DVZ.fball3.cool=0}] run execute positioned 0.0 0 0.0 run summon fireball ^ ^ ^1 {Tags:["projectile"],ExplosionPower:2b,HasBeenShot:1b}
execute if entity @s[tag=blaze,scores={DVZ.fball3.cool=0}] run function dvz:zombies/blaze/fireball4

execute as @s at @s if entity @s[tag=blaze,scores={DVZ.fball3.cool=0}] run playsound entity.blaze.shoot master @a ~ ~ ~ 1

execute as @s if entity @s[tag=blaze,scores={DVZ.fball3.cool=0}] run scoreboard players set @s DVZ.fball3.cool 10
execute as @s if entity @s[tag=blaze,scores={DVZ.fball3.cool=0}] run scoreboard players set @s DVZ.rclick 0