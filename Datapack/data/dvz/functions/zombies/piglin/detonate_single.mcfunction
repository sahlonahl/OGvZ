# -------------------------------------------
# Called By: rightclick/detect.mcfunction
# File Name: detonate_single
# File Purpose: detonate a charge
# Created By: Galactic
# 
# Created On: 2023.08.06
# Last Modified On: 2023.08.06
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

execute as @s if entity @s[tag=piglin] run title @s actionbar {"text":" * [Detonate] Poof!","color":"red"}
execute as @s if entity @s[tag=piglin] at @s run execute as @e[tag=piglin_charge,nbt=!{ActiveEffects:[{Id:18}]},limit=1,sort=nearest] at @s run function dvz:zombies/endermite/endermite_explode
execute as @s if entity @s[tag=piglin] run scoreboard players set @s DVZ.rclick 0