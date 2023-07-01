# -------------------------------------------
# Called By: rightclick/detect
# File Name: slime bomb
# File Purpose: Throws projectile for slime
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.24
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

execute as @s[tag=slime,scores={DVZ.slimebomb.cool=1..}] run title @s actionbar ["",{"text":" * [Slime Bomb] You have ","color":"#63FF78"},{"score":{"name":"@s","objective":"DVZ.slimebomb.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#63FF78"}]

execute as @s if entity @s[tag=slime,scores={DVZ.slimebomb.cool=0}] run title @s actionbar {"text":" * [Slime Bomb] Poof!","color":"#63FF78"}
execute as @s if entity @s[tag=slime,scores={DVZ.slimebomb.cool=0}] run playsound minecraft:entity.slime.hurt master @s ~ ~ ~ 4 0.5
execute as @s if entity @s[tag=slime,scores={DVZ.slimebomb.cool=0}] at @s run function dvz:zombies/slime/slime_launch
execute as @s if entity @s[tag=slime,scores={DVZ.slimebomb.cool=0}] run scoreboard players set @s DVZ.slimebomb.cool 20
execute as @s if entity @s[tag=slime,scores={DVZ.slimebomb.cool=0}] run scoreboard players set @s DVZ.rclick 0