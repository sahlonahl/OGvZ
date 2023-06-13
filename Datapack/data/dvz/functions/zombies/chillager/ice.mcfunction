# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: icebomb
# File Purpose: Creates an icy path for all to walk on 
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.13
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute as @s[tag=chillager,scores={DVZ.icy.cool=1..}] run title @s actionbar ["",{"text":" * [Ice] You have ","color":"dark_aqua"},{"score":{"name":"@s","objective":"DVZ.icy.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"dark_aqua"}]

execute as @s if entity @s[tag=chillager,scores={DVZ.icy.cool=0}] run title @s actionbar {"text":" * [Ice] Poof!","color":"red"}
execute as @s at @s if entity @s[tag=chillager,scores={DVZ.icy.cool=0}] run playsound block.respawn_anchor.set_spawn master @a ~ ~ ~ 1

execute as @s if entity @s[tag=chillager,scores={DVZ.icy.cool=0}] run summon marker ~ ~ ~ {Tags:[ray]}
execute as @s if entity @s[tag=chillager,scores={DVZ.icy.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] @s
execute as @s if entity @s[tag=chillager,scores={DVZ.icy.cool=0}] run tp @e[tag=ray,limit=1,sort=nearest] ~ ~0.5 ~
#execute as @e[tag=ray,limit=1,sort=nearest] at @s run tp @s ^ ^ ^2
execute as @s if entity @s[tag=chillager,scores={DVZ.icy.cool=0}] run execute as @e[tag=ray,limit=1,sort=nearest] at @s run function dvz:zombies/chillager/iceloop
execute as @s if entity @s[tag=chillager,scores={DVZ.icy.cool=0}] run kill @e[type=marker,tag=ray]
execute as @s if entity @s[tag=chillager,scores={DVZ.icy.cool=0}] run clear @s carrot_on_a_stick{CustomModelData:53} 1
execute as @s if entity @s[tag=chillager,scores={DVZ.icy.cool=0}] run scoreboard players set @s DVZ.icy.cool 15
execute as @s if entity @s[tag=chillager,scores={DVZ.icy.cool=0}] run scoreboard players set @s DVZ.rclick 0