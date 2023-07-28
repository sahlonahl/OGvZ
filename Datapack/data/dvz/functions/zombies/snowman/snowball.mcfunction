# -------------------------------------------
# Called By: dvz:rightclick/detect
# File Name: snowball
# File Purpose: Summons a barrage of custom snowballs that can damage dwarves.
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

execute as @s[tag=snowman,scores={DVZ.snowb.cool=1..}] run title @s actionbar ["",{"text":" * [Snowball] You have ","color":"dark_aqua"},{"score":{"name":"@s","objective":"DVZ.snowb.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"dark_aqua"}]
execute as @s if entity @s[tag=snowman,scores={DVZ.snowb.cool=0}] run title @s actionbar {"text":" * [Snowball] Poof!","color":"aqua"}
execute as @s if entity @s[tag=snowman,scores={DVZ.snowb.cool=0}] run playsound entity.witch.throw master @a ~ ~ ~

execute if entity @s[tag=snowman,scores={DVZ.snowb.cool=0}] run function dvz:zombies/snowman/snowballsummon
execute if entity @s[tag=snowman,scores={DVZ.snowb.cool=0}] run function dvz:zombies/snowman/snowball2

execute as @s if entity @s[tag=snowman,scores={DVZ.snowb.cool=0}] run scoreboard players set @s DVZ.snowb.cool 8
execute as @s if entity @s[tag=snowman,scores={DVZ.snowb.cool=0}] run scoreboard players set @s DVZ.rclick 0