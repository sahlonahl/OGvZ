# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: health
# File Purpose: Healing potion for dwarves
# Created By: Sahlonahl
# 
# Created On: 2020.02.29
# Last Modified On: 2023.06.10
# Last Modified By: Zaffre
#
# Credit to:
#
# Comments:
# -------------------------------------------

execute if entity @s[tag=dwarves,tag=!playerboss,level=..19] run title @s actionbar {"text":" * [Health Potion] You need at least 20 Mana!","color":"dark_red"}
execute if entity @s[tag=playerboss] run title @s actionbar {"text":" * [Health Potion] You are the assassin, you cant use this!","color":"dark_red"}
execute if entity @s[tag=dwarves,tag=!playerboss,scores={DVZ.health_pot.cool=1..}] run title @s actionbar ["",{"text":" * [Health Potion] You have ","color":"dark_red"},{"score":{"name":"@s","objective":"DVZ.health_pot.cool"},"color":"dark_red"},{"text":" seconds remaining!","color":"dark_red"}]

execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=20..,scores={DVZ.health_pot.cool=0}] run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 1
execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=20..,scores={DVZ.health_pot.cool=0}] run execute as @s run effect give @s instant_health 1 1 true
execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=20..,scores={DVZ.health_pot.cool=0}] run execute as @s run effect give @s regeneration 5 3 true
execute as @s run title @s[tag=dwarves,tag=!playerboss,level=20..,scores={DVZ.health_pot.cool=0}] actionbar {"text":" * [Health Potion] Poof!","color":"red"}
execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=20..,scores={DVZ.health_pot.cool=0}] run execute as @s run xp add @s -20 levels

execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=20..,scores={DVZ.health_pot.cool=0}] run scoreboard players set @s DVZ.health_pot.cool 2
execute as @s if entity @s[tag=dwarves,tag=!playerboss,level=20..,scores={DVZ.health_pot.cool=0}] run scoreboard players set @s DVZ.rclick 0
