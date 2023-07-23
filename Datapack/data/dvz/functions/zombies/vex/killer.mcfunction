# -------------------------------------------
# Called By: rightclick/detect
# File Name: killer
# File Purpose: Double attack damage for vex
# Created By: Galactic
# 
# Created On: 2023.06.24
# Last Modified On: 2023.06.24
# Last Modified By: Galactic
#
# Credit to:
#
# Comments: 
# -------------------------------------------

execute as @s[tag=vex,scores={DVZ.snowb.cool=1..}] run title @s actionbar ["",{"text":" * [Phantom Killer] You have ","color":"#B5E4FF"},{"score":{"name":"@s","objective":"DVZ.snowb.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"#B5E4FF"}]

execute as @s if entity @s[tag=vex,scores={DVZ.snowb.cool=0}] run attribute @s minecraft:generic.attack_damage modifier add d2578518-1f7c-4c10-9145-ff7145eae37b vex_attack 2 multiply
execute as @s if entity @s[tag=vex,scores={DVZ.snowb.cool=0}] run playsound minecraft:entity.vex.charge player @a ~ ~ ~ 2 1
execute as @s if entity @s[tag=vex,scores={DVZ.snowb.cool=0}] run tag @s add phantom_killer

execute as @s if entity @s[tag=vex,scores={DVZ.snowb.cool=0}] run title @s actionbar {"text":" * [Phantom Killer] Poof!","color":"#B5E4FF"}
execute as @s if entity @s[tag=vex,scores={DVZ.snowb.cool=0}] run scoreboard players set @s DVZ.snowb.cool 10
execute as @s if entity @s[tag=vex,scores={DVZ.snowb.cool=0}] run scoreboard players set @s DVZ.rclick 0