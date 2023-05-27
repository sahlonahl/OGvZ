# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: fireball
# File Purpose: Shoots a series of fireballs at dwarves
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2022.01.29
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=blaze,scores={DVZ.fball.cool=1..}] run tellraw @s ["",{"text":" * [Fireball] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.fball.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]
execute as @s if entity @s[tag=blaze,scores={DVZ.fball.cool=0}] run tellraw @s {"text":" * [Fireball] Poof!","color":"red"}
execute as @s at @s if entity @s[tag=blaze,scores={DVZ.fball.cool=0}] run playsound entity.blaze.shoot master @a ~ ~ ~ 1
execute if entity @s[tag=blaze,scores={DVZ.fball.cool=0}] run function dvz:zombies/blaze/fireballsummon
execute if entity @s[tag=blaze,scores={DVZ.fball.cool=0}] run function dvz:zombies/blaze/fireball2

execute as @s if entity @s[tag=blaze,scores={DVZ.fball.cool=0}] run scoreboard players set @s DVZ.fball.cool 3
execute as @s if entity @s[tag=blaze,scores={DVZ.fball.cool=0}] run scoreboard players set @s DVZ.rclick 0