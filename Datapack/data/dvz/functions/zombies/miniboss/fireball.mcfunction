# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: fireball
# File Purpose: Summons a ghast fireball to be shot at where the user is looking 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.13
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments: Ghast fireballs can be redirected
# -------------------------------------------

execute as @s[tag=ghast,scores={DVZ.ghast.cool=1..}] run title @s actionbar ["",{"text":" * [Fireball] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.ghast.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]
execute as @s if entity @s[tag=ghast,scores={DVZ.ghast.cool=0}] run title @s actionbar {"text":" * [Fireball] Poof!","color":"red"}

execute if entity @s[tag=ghast,scores={DVZ.ghast.cool=0}] run execute positioned 0.0 0 0.0 run summon fireball ^ ^ ^1 {Tags:["projectile"],ExplosionPower:3b,HasBeenShot:1b}
execute if entity @s[tag=ghast,scores={DVZ.ghast.cool=0}] run function dvz:zombies/miniboss/fireball2

execute if entity @s[tag=ghast,scores={DVZ.ghast.cool=0}] run playsound entity.ghast.warn master @a ~ ~ ~ 50 0.9 0.2

execute as @s if entity @s[tag=ghast,scores={DVZ.ghast.cool=0}] run scoreboard players set @s DVZ.ghast.cool 5
execute as @s if entity @s[tag=ghast,scores={DVZ.ghast.cool=0}] run scoreboard players set @s DVZ.rclick 0