# -------------------------------------------
# Called By: rightclick/detect.mcfunction
# File Name: refill
# File Purpose: refills charges
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

execute as @s[tag=piglin,scores={DVZ.piglinrefill.cool=1..}] run title @s actionbar ["",{"text":" * [Refill] You have ","color":"red"},{"score":{"name":"@s","objective":"DVZ.piglinrefill.cool"},"color":"dark_aqua"},{"text":" seconds remaining!","color":"red"}]

execute as @s if entity @s[tag=piglin,scores={DVZ.piglinrefill.cool=0}] run title @s actionbar {"text":" * [Refill] Poof!","color":"red"}
execute as @s if entity @s[tag=piglin,scores={DVZ.piglinrefill.cool=0}] run clear @s mooshroom_spawn_egg
execute as @s if entity @s[tag=piglin,scores={DVZ.piglinrefill.cool=0}] run give @s mooshroom_spawn_egg{display:{Name:'{"text":"Explosive Charge","color":"dark_purple","bold":false}',Lore:['{"text":"Can be detonated with a detonator","color":"gray","bold":false,"italic":false}','{"text":"takes 10 seconds to set up!","color":"red","bold":false,"italic":false}']},EntityTag:{id:"minecraft:zombie",NoGravity:1b,Silent:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,IsBaby:1b,Tags:["piglin_charge","endermine_explode"],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,-100.000F],ActiveEffects:[{Id:14,Amplifier:0b,Duration:99999,ShowParticles:0b},{Id:18,Amplifier:0b,Duration:200,ShowParticles:1b}]}} 4

execute as @s if entity @s[tag=piglin,scores={DVZ.piglinrefill.cool=0}] run scoreboard players set @s DVZ.piglinrefill.cool 30
execute as @s if entity @s[tag=piglin,scores={DVZ.piglinrefill.cool=0}] run scoreboard players set @s DVZ.rclick 0