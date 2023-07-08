# -------------------------------------------
# Called By: rightclick/detect.mcfunction
# File Name: shulker_throwwall
# File Purpose: Throws projectile for shulker
# Created By: Galactic
# 
# Created On: 2023.07.08
# Last Modified On: 2023.07.08
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

execute as @s[tag=shulker,scores={DVZ.shulkerwall.cool=1..}] run title @s actionbar ["",{"text":" * [Conjure Wall] You have ","color":"#CE8FFF"},{"score":{"name":"@s","objective":"DVZ.shulkerwall.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#CE8FFF"}]

execute as @s if entity @s[tag=shulker,scores={DVZ.shulkerwall.cool=0}] run title @s actionbar {"text":" * [Conjure Wall] Poof!","color":"#CE8FFF"}
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkerwall.cool=0}] run playsound minecraft:entity.shulker.shoot master @s ~ ~ ~ 1 1
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkerwall.cool=0}] at @s run function dvz:zombies/shulker/shulker_launchwall

execute as @s if entity @s[tag=shulker,scores={DVZ.shulkerwall.cool=0}] run scoreboard players set @s DVZ.shulkerwall.cool 15
execute as @s if entity @s[tag=shulker,scores={DVZ.shulkerwall.cool=0}] run scoreboard players set @s DVZ.rclick 0